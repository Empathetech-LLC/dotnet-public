/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './screens/export.dart';
import './utils/export.dart';
import './widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

void main() async {
  // Setup the app //

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  // Initialize EzConfig //

  final SharedPreferences prefs = await SharedPreferences.getInstance();

  EzConfig.init(
    assetPaths: assetPaths,
    preferences: prefs,
    defaults: empathetechConfig,
  );

  // Run the app //

  runApp(const DotNet());
}

final GoRouter router = GoRouter(
  initialLocation: homePath,
  routes: <RouteBase>[
    GoRoute(
      path: homePath,
      name: homePath,
      builder: (_, __) => const HomeScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: productsPath,
          name: productsPath,
          builder: (_, __) => const ProductsScreen(),
        ),
        GoRoute(
          path: planPath,
          name: planPath,
          builder: (_, __) => const PlanScreen(),
        ),
        GoRoute(
          path: teamPath,
          name: teamPath,
          builder: (_, __) => const TeamScreen(),
        ),
        GoRoute(
          path: supportPath,
          name: supportPath,
          builder: (_, __) => const SupportScreen(),
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
            ),
            GoRoute(
              path: colorSettingsPath,
              name: colorSettingsPath,
              builder: (_, __) => const ColorSettingsScreen(),
            ),
            GoRoute(
              path: layoutSettingsPath,
              name: layoutSettingsPath,
              builder: (_, __) => const LayoutSettingsScreen(),
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

    precacheImage(founderImage, context);
    precacheImage(saraHProfile, context);
    precacheImage(alexisNProfile, context);

    precacheImage(fahImage, context);
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
        supportedLocales: const <Locale>[
          ...EFUILang.supportedLocales,
          ...Lang.supportedLocales,
        ],
        locale: EzConfig.getLocale(),
        title: empathetech,
        routerConfig: router,
      ),
    );
  }
}
