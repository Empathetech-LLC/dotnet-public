import 'utils/utils.dart';
import 'screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize EzConfig
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  EzConfig.init(preferences: prefs, assetPaths: assetPaths);

  // Set device orientations
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(const ETechDotNet());
}

final GoRouter _router = GoRouter(
  initialLocation: homeRoute,
  routes: <RouteBase>[
    GoRoute(
      name: homeRoute,
      path: homeRoute,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          name: productsRoute,
          path: productsRoute,
          builder: (BuildContext context, GoRouterState state) {
            return const ProductsScreen();
          },
        ),
        GoRoute(
          name: planRoute,
          path: planRoute,
          builder: (BuildContext context, GoRouterState state) {
            return const PlanScreen();
          },
        ),
        GoRoute(
          name: finPlanRoute,
          path: finPlanRoute,
          builder: (BuildContext context, GoRouterState state) {
            return const FinPlanScreen();
          },
        ),
        GoRoute(
          name: teamRoute,
          path: teamRoute,
          builder: (BuildContext context, GoRouterState state) {
            return const TeamScreen();
          },
        ),
        GoRoute(
          name: supportRoute,
          path: supportRoute,
          builder: (BuildContext context, GoRouterState state) {
            return const SupportScreen();
          },
        ),
        GoRoute(
          name: settingsRoute,
          path: settingsRoute,
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              name: colorSettingsRoute,
              path: colorSettingsRoute,
              builder: (BuildContext context, GoRouterState state) {
                return const ColorSettingsScreen();
              },
            ),
            GoRoute(
              name: styleSettingsRoute,
              path: styleSettingsRoute,
              builder: (BuildContext context, GoRouterState state) {
                return const StyleSettingsScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

class ETechDotNet extends StatelessWidget {
  final Key? key;

  const ETechDotNet({this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EzAppProvider(
      app: PlatformApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: {
          LocaleNamesLocalizationsDelegate(),
          ...EFUILang.localizationsDelegates,
          ...Lang.localizationsDelegates,
        },
        supportedLocales: {
          ...Lang.supportedLocales,
          ...EFUILang.supportedLocales,
        },
        locale: EzConfig.getLocale(),
        title: empathetech,
        routerConfig: _router,
      ),
    );
  }
}
