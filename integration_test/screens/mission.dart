/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:dotnet/main.dart';
import 'package:dotnet/utils/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

void testSuite({
  Locale locale = english,
  bool isLefty = false,
}) =>
    testWidgets('mission-screen', (WidgetTester tester) async {
      // Load localization(s) //

      debugPrint('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      debugPrint('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      await dotNetNav(tester, l10n.msPageTitle);

      // Verify text loaded and sub-navigation //
      debugPrint('\nValidating text(s)');

      debugPrint('Step 1: Identify the problem');
      await validateText(tester, l10n.msIDProblem);
      await validateText(tester, l10n.msIDProblemContent);

      debugPrint('Step 2: Be a part of the solution');
      await touchText(tester, l10n.msFindSolution);
      await validateText(tester, l10n.msFindSolutionContent);

      debugPrint('Step 3: Provide value');
      await touchText(tester, l10n.msProvideValue);
      await validate(tester, find.widgetWithText(EzLink, efuiL));

      // Reset for next test suite  //

      await goHome(tester);
      debugPrint('\nImage settings test suite complete\n\n');
    });
