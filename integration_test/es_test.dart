/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'screens/home.dart' as home;
import 'screens/settings_home.dart' as settings_home;
import 'screens/products.dart' as products;
import 'screens/plan.dart' as plan;
import 'screens/fin_plan.dart' as fin_plan;
import 'screens/team.dart' as team;
import 'screens/support.dart' as support;

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  final Map<String, Object> testConfig = <String, Object>{
    ...empathetechConfig,
    isDarkThemeKey: true,
    localeKey: <String>['es'],
  };

  SharedPreferences.setMockInitialValues(testConfig);
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  EzConfig.init(
    assetPaths: <String>{},
    preferences: prefs,
    defaults: testConfig,
  );

  group(
    'es-locale',
    () {
      home.testSuite(locale: spanish);
      settings_home.testSuite(locale: spanish);
      products.testSuite(locale: spanish);
      plan.testSuite(locale: spanish);
      fin_plan.testSuite(locale: spanish);
      team.testSuite(locale: spanish);
      support.testSuite(locale: spanish);
    },
  );
}
