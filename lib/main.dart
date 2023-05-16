import 'utils/utils.dart';
import 'screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class ETechDotNet extends StatelessWidget {
  final Key? key;

  const ETechDotNet({this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EzApp(
      title: appTitle,
      homeScreenWidget: const HomeScreen(),
    );
  }
}
