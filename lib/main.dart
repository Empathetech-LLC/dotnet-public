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
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

void main() async {
  // Configure the app //

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(DeviceOrientation.values);

  EzConfig.init(
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

  // Setup image cache //

  Future<void> precacheImages(BuildContext context) async {
    // Products //

    // Open UI
    unawaited(precacheImage(openUIImage, context));

    // SOS
    unawaited(precacheImage(sosImage, context));

    // Liminal
    unawaited(precacheImage(theHoodImage, context));
    unawaited(precacheImage(lasRosasImage, context));
    unawaited(precacheImage(laGrenouilleImage, context));

    // Smoke Signal
    unawaited(precacheImage(smokeSignalImage, context));

    // Team //

    // Core
    unawaited(precacheImage(founderImage, context));

    // IRL
    unawaited(precacheImage(openSauce2025Image, context));
    unawaited(precacheImage(openSauceLogoImage, context));

    // Community
    unawaited(precacheImage(fahImage, context));

    // Freelance
    unawaited(precacheImage(montanaImage, context));

    unawaited(precacheImage(yasminSProfile, context));
    unawaited(precacheImage(saraHProfile, context));
    unawaited(precacheImage(remalynProfile, context));
    unawaited(precacheImage(alexisNProfile, context));
    unawaited(precacheImage(carlyProfile, context));
    unawaited(precacheImage(leahProfile, context));
    unawaited(precacheImage(hilariaProfile, context));
  }

  // Return the app //

  @override
  Widget build(BuildContext context) {
    precacheImages(context);

    return EzConfigurableApp(
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        const LocaleNamesLocalizationsDelegate(),
        ...EFUILang.localizationsDelegates,
        ...Lang.localizationsDelegates,
      ],
      supportedLocales: Lang.supportedLocales,
      locale: storedLocale,
      el10n: storedEFUILang,
      appCache: DotnetCache(storedLocale, storedLang),
      appName: empathetech,
      routerConfig: GoRouter(
        navigatorKey: ezRootNav,
        initialLocation: homePath,
        errorBuilder: (_, GoRouterState state) => ErrorScreen(state.error),
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
                path: Products.verified.path,
                name: Products.verified.path,
                builder: (_, __) => VerifiedScreen(),
              ),

              // Team
              GoRoute(
                path: teamPath,
                name: teamPath,
                builder: (_, __) => TeamScreen(),
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
                  final int? target = targetLookup[
                      state.uri.queryParameters[typeQP]?.toLowerCase()];
                  final bool? advanced = advancedLookup(
                      state.uri.queryParameters[advQP]?.toLowerCase());

                  return SettingsHubScreen(
                    key: ValueKey<String>('${EzConfig.seed}:$target:$advanced'),
                    target: target,
                    advanced: advanced,
                  );
                },
                routes: <RouteBase>[
                  // Redirects //
                  // Color
                  GoRoute(
                    path: colorRedirect,
                    redirect: (_, GoRouterState state) {
                      final List<String> segments = state.uri.pathSegments;

                      if (segments.contains(EzCSType.advanced.path)) {
                        return '/$settingsPath?$typeQP=$colorRedirect&$advQP=true';
                      } else if (segments.contains(EzCSType.quick.path)) {
                        return '/$settingsPath?$typeQP=$colorRedirect&$advQP=false';
                      } else {
                        return '/$settingsPath?$typeQP=$colorRedirect';
                      }
                    },
                    routes: <RouteBase>[
                      GoRoute(path: EzCSType.quick.path),
                      GoRoute(path: EzCSType.advanced.path),
                    ],
                  ),
                  GoRoute(
                    path: colorSettingsPath,
                    redirect: (_, GoRouterState state) {
                      final List<String> segments = state.uri.pathSegments;

                      if (segments.contains(EzCSType.advanced.path)) {
                        return '/$settingsPath?$typeQP=$colorRedirect&$advQP=true';
                      } else if (segments.contains(EzCSType.quick.path)) {
                        return '/$settingsPath?$typeQP=$colorRedirect&$advQP=false';
                      } else {
                        return '/$settingsPath?$typeQP=$colorRedirect';
                      }
                    },
                    routes: <RouteBase>[
                      GoRoute(path: EzCSType.quick.path),
                      GoRoute(path: EzCSType.advanced.path),
                    ],
                  ),

                  // Design
                  GoRoute(
                    path: designRedirect,
                    redirect: (_, __) =>
                        '/$settingsPath?$typeQP=$designRedirect',
                  ),
                  GoRoute(
                    path: designSettingsPath,
                    redirect: (_, __) =>
                        '/$settingsPath?$typeQP=$designRedirect',
                  ),

                  // Layout
                  GoRoute(
                    path: layoutRedirect,
                    redirect: (_, __) =>
                        '/$settingsPath?$typeQP=$layoutRedirect',
                  ),
                  GoRoute(
                    path: layoutSettingsPath,
                    redirect: (_, __) =>
                        '/$settingsPath?$typeQP=$layoutRedirect',
                  ),

                  // Text
                  GoRoute(
                    path: textRedirect,
                    redirect: (_, GoRouterState state) {
                      final List<String> segments = state.uri.pathSegments;

                      if (segments.contains(EzTSType.advanced.path)) {
                        return '/$settingsPath?$typeQP=$textRedirect&$advQP=true';
                      } else if (segments.contains(EzTSType.quick.path)) {
                        return '/$settingsPath?$typeQP=$textRedirect&$advQP=false';
                      } else {
                        return '/$settingsPath?$typeQP=$textRedirect';
                      }
                    },
                    routes: <RouteBase>[
                      GoRoute(path: EzTSType.quick.path),
                      GoRoute(path: EzTSType.advanced.path),
                    ],
                  ),
                  GoRoute(
                    path: textSettingsPath,
                    redirect: (_, GoRouterState state) {
                      final List<String> segments = state.uri.pathSegments;

                      if (segments.contains(EzTSType.advanced.path)) {
                        return '/$settingsPath?$typeQP=$textRedirect&$advQP=true';
                      } else if (segments.contains(EzTSType.quick.path)) {
                        return '/$settingsPath?$typeQP=$textRedirect&$advQP=false';
                      } else {
                        return '/$settingsPath?$typeQP=$textRedirect';
                      }
                    },
                    routes: <RouteBase>[
                      GoRoute(path: EzTSType.quick.path),
                      GoRoute(path: EzTSType.advanced.path),
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
