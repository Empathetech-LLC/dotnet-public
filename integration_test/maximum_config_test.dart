/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
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
    ...empathetechConfig,
    isDarkThemeKey: true,

    // Text settings //

    // Display
    displayFontSizeKey: maxDisplay,
    displayFontHeightKey: maxFontHeight,
    displayLetterSpacingKey: maxFontLetterSpacing,
    displayWordSpacingKey: maxFontWordSpacing,

    // Headline
    headlineFontSizeKey: maxHeadline,
    headlineFontHeightKey: maxFontHeight,
    headlineLetterSpacingKey: maxFontLetterSpacing,
    headlineWordSpacingKey: maxFontWordSpacing,

    // Title
    titleFontSizeKey: maxTitle,
    titleFontHeightKey: maxFontHeight,
    titleLetterSpacingKey: maxFontLetterSpacing,
    titleWordSpacingKey: maxFontWordSpacing,

    // Body
    bodyFontSizeKey: maxBody,
    bodyFontHeightKey: maxFontHeight,
    bodyLetterSpacingKey: maxFontLetterSpacing,
    bodyWordSpacingKey: maxFontWordSpacing,

    // Label
    labelFontSizeKey: maxLabel,
    labelFontHeightKey: maxFontHeight,
    labelLetterSpacingKey: maxFontLetterSpacing,
    labelWordSpacingKey: maxFontWordSpacing,

    // Layout settings //

    marginKey: maxMargin,
    paddingKey: maxPadding,
    spacingKey: maxSpacing,
  };

  SharedPreferences.setMockInitialValues(testConfig);
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  EzConfig.init(
    assetPaths: <String>{},
    preferences: prefs,
    defaults: testConfig,
  );

  group(
    'maximum-config',
    () {
      home.testSuite();
      settings_home.testSuite();
      products.testSuite();
      mission.testSuite();
      team.testSuite();
      contribute.testSuite();
    },
  );
}
