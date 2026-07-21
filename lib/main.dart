/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './screens/export.dart';
import './utils/export.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:open_ui/open_ui.dart';

void main() async {
  // Configure the app //

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(DeviceOrientation.values);

  EzCM.init(
    appName: 'dotnet',
    androidPackage: null,
    assetPaths: assetPaths,
    orientations: DeviceOrientation.values,
    localeFallback: americanEnglish,
    l10nFallback: await OUILang.delegate.load(americanEnglish),
    preferences: await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(
        allowList: allEZConfigKeys.keys.toSet(),
      ),
    ),
    defaults: isMobile() ? ywtMobileConfig : ywtDesktopConfig,
  );

  // Run the app //

  final (Locale storedLocale, OUILang storedOUILang) = await ezStoredL10n();

  runApp(DotNet(
    storedLocale,
    storedOUILang,
    await Lang.delegate.load(storedLocale),
  ));
}

class DotNet extends StatelessWidget {
  final Locale storedLocale;
  final OUILang storedOUILang;
  final Lang storedLang;

  const DotNet(
    this.storedLocale,
    this.storedOUILang,
    this.storedLang, {
    super.key,
  });

  // Cache images //

  void precacheInternal(BuildContext context) {
    // Open UI
    precacheImage(openUIImage, context);

    // SOS
    precacheImage(sosImage, context);

    // Liminal
    precacheImage(theHoodImage, context);
    precacheImage(lasRosasImage, context);
    precacheImage(laGrenouilleImage, context);

    // Contribute
    precacheImage(fahImage, context);
  }

  // Define URL redirects //

  FutureOr<String?> colorPath(BuildContext pbc, GoRouterState pbs) {
    final List<String> segments = pbs.uri.pathSegments;

    if (segments.contains(EzSubSetting.advColor.path)) {
      return '/$settingsPath?$typeQP=$colorRedirect&$advQP=true';
    } else if (segments.contains(EzSubSetting.qckColor.path)) {
      return '/$settingsPath?$typeQP=$colorRedirect&$advQP=false';
    } else {
      return '/$settingsPath?$typeQP=$colorRedirect';
    }
  }

  FutureOr<String?> designPath(BuildContext pbc, GoRouterState pbs) {
    final List<String> segments = pbs.uri.pathSegments;

    if (segments.contains(EzSubSetting.pagDesign.path)) {
      return '/$settingsPath?$typeQP=$designRedirect&$pageQP=true';
    } else if (segments.contains(EzSubSetting.butDesign.path)) {
      return '/$settingsPath?$typeQP=$designRedirect&$pageQP=false';
    } else {
      return '/$settingsPath?$typeQP=$designRedirect';
    }
  }

  FutureOr<String?> textPath(BuildContext pbc, GoRouterState pbs) {
    final List<String> segments = pbs.uri.pathSegments;

    if (segments.contains(EzSubSetting.advText.path)) {
      return '/$settingsPath?$typeQP=$textRedirect&$advQP=true';
    } else if (segments.contains(EzSubSetting.qckText.path)) {
      return '/$settingsPath?$typeQP=$textRedirect&$advQP=false';
    } else {
      return '/$settingsPath?$typeQP=$textRedirect';
    }
  }

  // Return the app //

  @override
  Widget build(BuildContext context) {
    precacheInternal(context);

    return EzConfigurableApp(
      localizationsDelegates: ezLocalizationsDelegates(Lang.localizationsDelegates),
      supportedLocales: Lang.supportedLocales,
      locale: storedLocale,
      el10n: storedOUILang,
      appCache: DotnetCache(storedLocale, storedLang),
      routerConfig: GoRouter(
        navigatorKey: ezRootNav,
        initialLocation: homePath,
        errorBuilder: (_, __) => const ErrorScreen(),
        routes: <RouteBase>[
          // Home/intro
          GoRoute(
            path: homePath,
            name: homePath,
            builder: (_, GoRouterState state) => const HomeScreen(),
            routes: <RouteBase>[
              // Products
              GoRoute(
                path: Products.openUI.path,
                name: Products.openUI.path,
                builder: (_, __) => const OpenUIScreen(),
              ),
              GoRoute(
                path: Products.sos.path,
                name: Products.sos.path,
                builder: (_, __) => const SOSScreen(),
              ),
              GoRoute(
                path: Products.liminal.path,
                name: Products.liminal.path,
                builder: (_, __) => const LiminalScreen(),
              ),
              GoRoute(
                path: Products.verified.path,
                name: Products.verified.path,
                builder: (_, __) => const VerifiedScreen(),
              ),

              // Contribute
              GoRoute(
                path: contributePath,
                name: contributePath,
                builder: (_, __) => const ContributeScreen(),
              ),

              // Settings
              GoRoute(
                path: settingsPath,
                name: settingsPath,
                builder: (_, GoRouterState state) {
                  final int? target =
                      targetLookup[state.uri.queryParameters[typeQP]?.toLowerCase()];
                  final bool? advanced = qbParse(state.uri.queryParameters[advQP]) ??
                      qbParse(state.uri.queryParameters[pageQP]);

                  return SettingsHubScreen(
                    key: ValueKey<String>('$target:$advanced'),
                    target: target,
                  );
                },
                routes: <RouteBase>[
                  // Redirects //
                  // Color
                  GoRoute(
                    path: colorRedirect,
                    redirect: colorPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.qckColor.path, redirect: colorPath),
                      GoRoute(path: EzSubSetting.advColor.path, redirect: colorPath),
                    ],
                  ),
                  GoRoute(
                    path: colorSettingsPath,
                    redirect: colorPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.qckColor.path, redirect: colorPath),
                      GoRoute(path: EzSubSetting.advColor.path, redirect: colorPath),
                    ],
                  ),

                  // Design
                  GoRoute(
                    path: designRedirect,
                    redirect: designPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.butDesign.path, redirect: designPath),
                      GoRoute(path: EzSubSetting.pagDesign.path, redirect: designPath),
                    ],
                  ),
                  GoRoute(
                    path: designSettingsPath,
                    redirect: designPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.butDesign.path, redirect: designPath),
                      GoRoute(path: EzSubSetting.pagDesign.path, redirect: designPath),
                    ],
                  ),

                  // Text
                  GoRoute(
                    path: textRedirect,
                    redirect: textPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.qckText.path, redirect: textPath),
                      GoRoute(path: EzSubSetting.advText.path, redirect: textPath),
                    ],
                  ),
                  GoRoute(
                    path: textSettingsPath,
                    redirect: textPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.qckText.path, redirect: textPath),
                      GoRoute(path: EzSubSetting.advText.path, redirect: textPath),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
