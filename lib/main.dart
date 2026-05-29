/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './screens/export.dart';
import './utils/export.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

void main() async {
  // Configure the app //

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(DeviceOrientation.values);

  EzConfig.init(
    appName: 'dotnet',
    androidPackage: null,
    assetPaths: assetPaths,
    defaults: isMobile() ? empathMobileConfig : empathDesktopConfig,
    localeFallback: americanEnglish,
    l10nFallback: await EFUILang.delegate.load(americanEnglish),
    preferences: await SharedPreferencesWithCache.create(
      cacheOptions: SharedPreferencesWithCacheOptions(
        allowList: allEZConfigKeys.keys.toSet(),
      ),
    ),
  );

  // Run the app //

  final (Locale storedLocale, EFUILang storedEFUILang) = await ezStoredL10n();

  runApp(DotNet(
    storedLocale,
    storedEFUILang,
    await Lang.delegate.load(storedLocale),
  ));
}

class DotNet extends StatelessWidget {
  final Locale storedLocale;
  final EFUILang storedEFUILang;
  final Lang storedLang;

  const DotNet(
    this.storedLocale,
    this.storedEFUILang,
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

    // Smoke Signal
    precacheImage(smokeSignalImage, context);

    // Team
    precacheImage(founderImage, context);
    precacheImage(openSauce2025Image, context);
    precacheImage(openSauceLogoImage, context);
  }

  void precacheExternal(BuildContext context) {
    // Team
    precacheImage(fahImage, context);
    precacheImage(montanaImage, context);
    precacheImage(yasminSProfile, context);
    precacheImage(patrickKarbanProfile, context);
    precacheImage(saraHProfile, context);
    precacheImage(remalynProfile, context);
    precacheImage(alexisNProfile, context);
    precacheImage(carlyProfile, context);
    precacheImage(hikaruProfile, context);
    precacheImage(superTProfile, context);
    precacheImage(anastasiaProfile, context);
    precacheImage(mariePProfile, context);
    precacheImage(leahProfile, context);
    precacheImage(hilariaProfile, context);
  }

  // Define URL redirects //

  FutureOr<String?> colorPath(BuildContext context, GoRouterState state) {
    final List<String> segments = state.uri.pathSegments;

    if (segments.contains(EzSubSetting.advColor.path)) {
      return '/$settingsPath?$typeQP=$colorRedirect&$advQP=true';
    } else if (segments.contains(EzSubSetting.qckColor.path)) {
      return '/$settingsPath?$typeQP=$colorRedirect&$advQP=false';
    } else {
      return '/$settingsPath?$typeQP=$colorRedirect';
    }
  }

  FutureOr<String?> designPath(BuildContext context, GoRouterState state) {
    final List<String> segments = state.uri.pathSegments;

    if (segments.contains(EzSubSetting.pagDesign.path)) {
      return '/$settingsPath?$typeQP=$designRedirect&$pageQP=true';
    } else if (segments.contains(EzSubSetting.butDesign.path)) {
      return '/$settingsPath?$typeQP=$designRedirect&$pageQP=false';
    } else {
      return '/$settingsPath?$typeQP=$designRedirect';
    }
  }

  FutureOr<String?> textPath(BuildContext context, GoRouterState state) {
    final List<String> segments = state.uri.pathSegments;

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
      el10n: storedEFUILang,
      appCache: DotnetCache(storedLocale, storedLang),
      routerConfig: GoRouter(
        navigatorKey: ezRootNav,
        initialLocation: homePath,
        errorBuilder: (_, __) => ErrorScreen(),
        routes: <RouteBase>[
          // Home/intro
          GoRoute(
            path: homePath,
            name: homePath,
            builder: (_, GoRouterState state) => HomeScreen(
              fin: state.uri.queryParameters['fin']?.toLowerCase() == 'true',
            ),
            routes: <RouteBase>[
              // Mission
              GoRoute(
                path: missionPath,
                name: missionPath,
                builder: (_, __) => MissionScreen(),
              ),

              // Products
              GoRoute(
                path: Products.openUI.path,
                name: Products.openUI.path,
                builder: (_, __) => OpenUIScreen(),
              ),
              GoRoute(
                path: Products.sos.path,
                name: Products.sos.path,
                builder: (_, __) => SOSScreen(),
              ),
              GoRoute(
                path: Products.liminal.path,
                name: Products.liminal.path,
                builder: (_, __) => LiminalScreen(),
              ),
              GoRoute(
                path: Products.smokeSignal.path,
                name: Products.smokeSignal.path,
                builder: (_, __) => SmokeSignalScreen(),
              ),
              GoRoute(
                path: Products.translations.path,
                name: Products.translations.path,
                builder: (_, __) => TranslationsScreen(),
              ),
              GoRoute(
                path: Products.verified.path,
                name: Products.verified.path,
                builder: (_, __) => VerifiedScreen(),
              ),

              // Team
              GoRoute(
                path: teamPath,
                name: teamPath,
                builder: (_, __) {
                  precacheExternal(context);
                  return TeamScreen();
                },
              ),

              // Contribute
              GoRoute(
                path: contributePath,
                name: contributePath,
                builder: (_, __) => ContributeScreen(),
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
                    key: ValueKey<String>('${EzConfig.seed}:$target:$advanced'),
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
                      GoRoute(path: EzSubSetting.qckColor.path),
                      GoRoute(path: EzSubSetting.advColor.path),
                    ],
                  ),
                  GoRoute(
                    path: colorSettingsPath,
                    redirect: colorPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.qckColor.path),
                      GoRoute(path: EzSubSetting.advColor.path),
                    ],
                  ),

                  // Design
                  GoRoute(
                    path: designRedirect,
                    redirect: designPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.butDesign.path),
                      GoRoute(path: EzSubSetting.pagDesign.path),
                    ],
                  ),
                  GoRoute(
                    path: designSettingsPath,
                    redirect: designPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.butDesign.path),
                      GoRoute(path: EzSubSetting.pagDesign.path),
                    ],
                  ),

                  // Text
                  GoRoute(
                    path: textRedirect,
                    redirect: textPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.qckText.path),
                      GoRoute(path: EzSubSetting.advText.path),
                    ],
                  ),
                  GoRoute(
                    path: textSettingsPath,
                    redirect: textPath,
                    routes: <RouteBase>[
                      GoRoute(path: EzSubSetting.qckText.path),
                      GoRoute(path: EzSubSetting.advText.path),
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
