/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './screens/export.dart';
import './utils/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:feedback/feedback.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

void main() async {
  // Setup the app //

  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  // Initialize EzConfig //

  final SharedPreferences prefs = await SharedPreferences.getInstance();

  EzConfig.init(
    assetPaths: assetPaths,
    preferences: prefs,
    defaults: dotnetConfig,
  );

  // Run the app //
  // With a feedback wrapper

  late final TextStyle lightFeedbackText = ezBodyStyle(Colors.black);
  late final TextStyle darkFeedbackText = ezBodyStyle(Colors.white);

  runApp(BetterFeedback(
    theme: FeedbackThemeData(
      background: Colors.grey,
      feedbackSheetColor: Colors.white,
      activeFeedbackModeColor: empathPurple,
      bottomSheetDescriptionStyle: lightFeedbackText,
      bottomSheetTextInputStyle: lightFeedbackText,
      sheetIsDraggable: true,
      dragHandleColor: Colors.black,
    ),
    darkTheme: FeedbackThemeData(
      background: Colors.grey,
      feedbackSheetColor: Colors.black,
      activeFeedbackModeColor: empathEucalyptus,
      bottomSheetDescriptionStyle: darkFeedbackText,
      bottomSheetTextInputStyle: darkFeedbackText,
      sheetIsDraggable: true,
      dragHandleColor: Colors.white,
    ),
    themeMode: EzConfig.getThemeMode(),
    localizationsDelegates: <LocalizationsDelegate<dynamic>>[
      const LocaleNamesLocalizationsDelegate(),
      ...EFUILang.localizationsDelegates,
      ...Lang.localizationsDelegates,
      EmpathetechFeedbackLocalizationsDelegate(),
    ],
    localeOverride: EzConfig.getLocale(),
    child: const DotNet(),
  ));
}

// Define routes //

final GoRouter router = GoRouter(
  initialLocation: homePath,
  errorBuilder: (_, GoRouterState state) => ErrorScreen(state.error),
  routes: <RouteBase>[
    GoRoute(
      path: homePath,
      name: homePath,
      builder: (_, __) => const HomeScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: missionPath,
          name: missionPath,
          builder: (_, __) => const MissionScreen(),
        ),
        GoRoute(
          path: productsPath,
          name: productsPath,
          builder: (_, __) => const ProductsScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: Products.openUI.path,
              name: Products.openUI.path,
              builder: (_, __) => const ProductsScreen(target: Products.openUI),
            ),
            GoRoute(
              path: Products.sos.path,
              name: Products.sos.path,
              builder: (_, __) => const ProductsScreen(target: Products.sos),
            ),
            GoRoute(
              path: Products.smokeSignal.path,
              name: Products.smokeSignal.path,
              builder: (_, __) =>
                  const ProductsScreen(target: Products.smokeSignal),
            ),
          ],
        ),
        GoRoute(
          path: teamPath,
          name: teamPath,
          builder: (_, __) => const TeamScreen(),
        ),
        GoRoute(
          path: contributePath,
          name: contributePath,
          builder: (_, __) => const ContributeScreen(),
        ),
        GoRoute(
          path: settingsPath,
          name: settingsPath,
          builder: (_, __) => const SettingsHomeScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: textSettingsPath,
              name: textSettingsPath,
              builder: (_, __) => const TextSettingsScreen(),
              routes: <RouteBase>[
                GoRoute(
                  path: EzTSType.quick.path,
                  name: EzTSType.quick.name,
                  builder: (_, __) =>
                      const TextSettingsScreen(target: EzTSType.quick),
                ),
                GoRoute(
                  path: EzTSType.advanced.path,
                  name: EzTSType.advanced.name,
                  builder: (_, __) =>
                      const TextSettingsScreen(target: EzTSType.advanced),
                ),
              ],
            ),
            GoRoute(
              path: layoutSettingsPath,
              name: layoutSettingsPath,
              builder: (_, __) => const LayoutSettingsScreen(),
            ),
            GoRoute(
              path: colorSettingsPath,
              name: colorSettingsPath,
              builder: (_, __) => const ColorSettingsScreen(),
              routes: <RouteBase>[
                GoRoute(
                  path: EzCSType.quick.path,
                  name: EzCSType.quick.name,
                  builder: (_, __) =>
                      const ColorSettingsScreen(target: EzCSType.quick),
                ),
                GoRoute(
                  path: EzCSType.advanced.path,
                  name: EzCSType.advanced.name,
                  builder: (_, __) =>
                      const ColorSettingsScreen(target: EzCSType.advanced),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

class DotNet extends StatelessWidget {
  const DotNet({super.key});

  // Define setup functions //

  Future<void> precacheImages(BuildContext context) async {
    precacheImage(openUIImage, context);

    precacheImage(sosImage, context);
    precacheImage(smokeSignalImage, context);

    precacheImage(founderImage, context);

    precacheImage(fahImage, context);

    precacheImage(saraHProfile, context);
    precacheImage(alexisNProfile, context);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    precacheImages(context);

    return EzAppProvider(
      app: PlatformApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          const LocaleNamesLocalizationsDelegate(),
          ...EFUILang.localizationsDelegates,
          ...Lang.localizationsDelegates,
          EmpathetechFeedbackLocalizationsDelegate(),
        ],
        supportedLocales: Lang.supportedLocales,
        locale: EzConfig.getLocale(),
        title: empathetech,
        routerConfig: router,
      ),
    );
  }
}
