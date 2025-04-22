/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:dotnet/main.dart';
import 'package:dotnet/utils/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

void testSuite({
  Locale locale = english,
  bool isLefty = false,
}) =>
    testWidgets('mission-screen', (WidgetTester tester) async {
      // Load localization(s) //

      ezLog('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      ezLog('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      await dotNetNav(tester, l10n.msPageTitle);

      // Verify text loaded and sub-navigation //
      ezLog('\nValidating text(s)');

      ezLog('Step 1: Identify the problem');
      await ezFindText(tester, l10n.msIDProblem);
      await ezFindText(tester, l10n.msIDProblemContent);

      ezLog('Step 2: Be a part of the solution');
      await ezTouchText(tester, l10n.msFindSolution);
      await ezFindText(tester, l10n.msFindSolutionContent);

      ezLog('Step 3: Provide value');
      await ezTouchText(tester, l10n.msProvideValue);
      await ezFind(tester, find.widgetWithText(EzLink, efuiL));

      // Reset for next test suite  //

      await goHome(tester);
      ezLog('\nImage settings test suite complete\n\n');
    });
