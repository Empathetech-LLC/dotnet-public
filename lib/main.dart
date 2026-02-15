/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './screens/export.dart';
import './utils/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

void main() async {
  // Setup the app //

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
    precacheImage(openUIImage, context);

    // SOS
    precacheImage(sosImage, context);

    // Liminal
    precacheImage(theHoodImage, context);
    precacheImage(lasRosasImage, context);
    precacheImage(laGrenouilleImage, context);

    // Smoke Signal
    precacheImage(smokeSignalImage, context);

    // Team //

    // Core
    precacheImage(founderImage, context);

    // IRL
    precacheImage(openSauce2025Image, context);
    precacheImage(openSauceLogoImage, context);

    // Community
    precacheImage(fahImage, context);

    // Freelance
    precacheImage(montanaImage, context);

    precacheImage(yasminSProfile, context);
    precacheImage(saraHProfile, context);
    precacheImage(remalynProfile, context);
    precacheImage(alexisNProfile, context);
    precacheImage(carlyProfile, context);
    precacheImage(leahProfile, context);
    precacheImage(hilariaProfile, context);
  }

  // Return the app //

  @override
  Widget build(BuildContext context) {
    precacheImages(context); // Don't await

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
          GoRoute(
            path: homePath,
            name: homePath,
            builder: (_, GoRouterState state) => HomeScreen(
              fin: state.uri.queryParameters['fin']?.toLowerCase() == 'true',
            ),
            routes: <RouteBase>[
              GoRoute(
                path: missionPath,
                name: missionPath,
                builder: (_, __) => MissionScreen(),
              ),
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
              GoRoute(
                path: teamPath,
                name: teamPath,
                builder: (_, __) => TeamScreen(),
              ),
              GoRoute(
                path: contributePath,
                name: contributePath,
                builder: (_, __) => ContributeScreen(),
              ),
              GoRoute(
                path: settingsPath,
                name: settingsPath,
                builder: (_, __) => SettingsHomeScreen(),
                routes: <RouteBase>[
                  GoRoute(
                    path: colorSettingsPath,
                    name: colorSettingsPath,
                    builder: (_, __) => ColorSettingsScreen(),
                    routes: <RouteBase>[
                      GoRoute(
                        path: EzCSType.quick.path,
                        name: EzCSType.quick.name,
                        builder: (_, __) =>
                            ColorSettingsScreen(target: EzCSType.quick),
                      ),
                      GoRoute(
                        path: EzCSType.advanced.path,
                        name: EzCSType.advanced.name,
                        builder: (_, __) =>
                            ColorSettingsScreen(target: EzCSType.advanced),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: designSettingsPath,
                    name: designSettingsPath,
                    builder: (_, __) => DesignSettingsScreen(),
                  ),
                  GoRoute(
                    path: layoutSettingsPath,
                    name: layoutSettingsPath,
                    builder: (_, __) => LayoutSettingsScreen(),
                  ),
                  GoRoute(
                    path: textSettingsPath,
                    name: textSettingsPath,
                    builder: (_, __) => TextSettingsScreen(),
                    routes: <RouteBase>[
                      GoRoute(
                        path: EzTSType.quick.path,
                        name: EzTSType.quick.name,
                        builder: (_, __) =>
                            TextSettingsScreen(target: EzTSType.quick),
                      ),
                      GoRoute(
                        path: EzTSType.advanced.path,
                        name: EzTSType.advanced.name,
                        builder: (_, __) =>
                            TextSettingsScreen(target: EzTSType.advanced),
                      ),
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
