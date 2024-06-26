import 'utils/export.dart';
import 'screens/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:feedback/feedback.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize EzConfig
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  EzConfig.init(
    assetPaths: assetPaths,
    preferences: prefs,
    defaults: empathetechConfig,
  );

  // Set device orientations
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  late final TextStyle lightFeedbackText = buildBody(color: Colors.black);
  late final TextStyle darkFeedbackText = buildBody(color: Colors.white);

  runApp(BetterFeedback(
    theme: FeedbackThemeData(
      background: Colors.grey,
      feedbackSheetColor: Colors.white,
      activeFeedbackModeColor: empathPurple,
      bottomSheetDescriptionStyle: lightFeedbackText,
      bottomSheetTextInputStyle: lightFeedbackText,
      sheetIsDraggable: true,
      dragHandleColor: Colors.grey,
      colorScheme: const ColorScheme.light(primary: empathGoldenrod),
    ),
    darkTheme: FeedbackThemeData(
      background: Colors.grey,
      feedbackSheetColor: Colors.black,
      activeFeedbackModeColor: empathEucalyptus,
      bottomSheetDescriptionStyle: darkFeedbackText,
      bottomSheetTextInputStyle: darkFeedbackText,
      sheetIsDraggable: true,
      dragHandleColor: Colors.grey,
      colorScheme: const ColorScheme.dark(primary: empathGoldenrod),
    ),
    themeMode: EzConfig.getThemeMode(),
    localizationsDelegates: <LocalizationsDelegate<dynamic>>[
      const LocaleNamesLocalizationsDelegate(),
      ...EFUILang.localizationsDelegates,
      ...Lang.localizationsDelegates,
      DotnetFeedbackLocalizationsDelegate(),
    ],
    localeOverride: EzConfig.getLocale(),
    child: const ETechDotNet(),
  ));
}

final GoRouter router = GoRouter(
  initialLocation: homePath,
  routes: <RouteBase>[
    GoRoute(
      path: homePath,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: productsPath,
          builder: (BuildContext context, GoRouterState state) {
            return const ProductsScreen();
          },
        ),
        GoRoute(
          path: planPath,
          builder: (BuildContext context, GoRouterState state) {
            return const PlanScreen();
          },
        ),
        GoRoute(
          path: finPlanPath,
          builder: (BuildContext context, GoRouterState state) {
            return const FinPlanScreen();
          },
        ),
        GoRoute(
          path: teamPath,
          builder: (BuildContext context, GoRouterState state) {
            return const TeamScreen();
          },
        ),
        GoRoute(
          path: supportPath,
          builder: (BuildContext context, GoRouterState state) {
            return const SupportScreen();
          },
        ),
        GoRoute(
          path: settingsPath,
          builder: (BuildContext context, GoRouterState state) {
            return const SettingsScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              path: textSettingsPath,
              builder: (BuildContext context, GoRouterState state) {
                return const TextSettingsScreen();
              },
            ),
            GoRoute(
              path: colorSettingsPath,
              builder: (BuildContext context, GoRouterState state) {
                return const ColorSettingsScreen();
              },
            ),
            GoRoute(
              path: layoutSettingsPath,
              builder: (BuildContext context, GoRouterState state) {
                return const LayoutSettingsScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);

class ETechDotNet extends StatelessWidget {
  const ETechDotNet({super.key});

  @override
  Widget build(BuildContext context) {
    return EzAppProvider(
      app: PlatformApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          const LocaleNamesLocalizationsDelegate(),
          ...EFUILang.localizationsDelegates,
          ...Lang.localizationsDelegates,
          DotnetFeedbackLocalizationsDelegate(),
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
