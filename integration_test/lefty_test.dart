/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'screens/home.dart' as home;
import 'screens/settings_home.dart' as settings_home;
import 'screens/products.dart' as products;
import 'screens/mission.dart' as mission;
import 'screens/team.dart' as team;
import 'screens/contribute.dart' as contribute;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  final Map<String, Object> testConfig = <String, Object>{
    ...empathMobileConfig,
    isLeftyKey: true,
  };

  SharedPreferences.setMockInitialValues(testConfig);
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  EzConfig.init(
    preferences: prefs,
    defaults: testConfig,
    fallbackLang: await EFUILang.delegate.load(americanEnglish),
    assetPaths: <String>{},
  );

  group(
    'lefty-layout',
    () {
      home.testSuite(isLefty: true);
      settings_home.testSuite(isLefty: true);
      products.testSuite(isLefty: true);
      mission.testSuite(isLefty: true);
      team.testSuite(isLefty: true);
      contribute.testSuite(isLefty: true);
    },
  );
}
