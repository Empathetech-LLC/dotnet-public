import 'utils/utils.dart';
import 'screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize EzConfig
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  EzConfig(
    assetPaths: assets,
    preferences: prefs,
  );

  // Set device orientations
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Improves URL readability for web apps
  usePathUrlStrategy();

  runApp(const ETechDotNet());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: 'home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          name: 'products',
          path: 'products',
          builder: (BuildContext context, GoRouterState state) {
            return const ProductsScreen();
          },
        ),
        GoRoute(
          name: 'team',
          path: 'the-team',
          builder: (BuildContext context, GoRouterState state) {
            return const TeamScreen();
          },
        ),
        GoRoute(
          name: 'plan',
          path: 'the-plan',
          builder: (BuildContext context, GoRouterState state) {
            return const PlanScreen();
          },
        ),
        GoRoute(
          name: 'contribute',
          path: 'contribute',
          builder: (BuildContext context, GoRouterState state) {
            return const ContributeScreen();
          },
        ),
        GoRoute(
          name: 'settings',
          path: 'settings',
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              name: 'color-settings',
              path: 'color-settings',
              builder: (BuildContext context, GoRouterState state) {
                return const ColorSettingsScreen();
              },
            ),
            GoRoute(
              name: 'style-settings',
              path: 'style-settings',
              builder: (BuildContext context, GoRouterState state) {
                return const StyleSettingsScreen();
              },
            ),
          ],
        ),
        GoRoute(
          name: 'folding',
          path: 'fah-faq',
          builder: (BuildContext context, GoRouterState state) {
            return const FoldingScreen();
          },
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
    return EzApp(
      title: appTitle,
      routerConfig: _router,
    );
  }
}
