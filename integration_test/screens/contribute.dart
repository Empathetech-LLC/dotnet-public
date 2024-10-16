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
    testWidgets('contribute-screen', (WidgetTester tester) async {
      // Load localization(s) //

      debugPrint('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      debugPrint('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      await dotNetNav(tester, l10n.csPageTitle);

      // Verify text loaded //

      debugPrint('\nValidating text');
      await validateText(tester, l10n.csThanks);
      await validateText(tester, l10n.csGive);

      //* Test functionality *//

      debugPrint('\nTesting functionality');

      debugPrint('Time');
      await validateText(tester, l10n.csTimeQ);

      await validate(tester, find.widgetWithText(EzLink, l10n.gReachOut));
      await validate(tester, find.widgetWithText(EzLink, l10n.csGit));

      debugPrint('Money');
      await validateText(tester, l10n.csMoneyQ);

      await validateText(tester, 'GoFundMe');
      await validateText(tester, 'Patreon');
      await validateText(tester, 'Buy Me a Coffee');
      await validateText(tester, 'Ko-fi');
      await validateText(tester, 'PayPal');
      await validateText(tester, 'Venmo');
      await validateText(tester, 'CashApp');

      debugPrint('Power');
      await validateText(tester, l10n.csPowerQ);

      await testFaHBanner(tester, l10n);

      // Reset for next test suite  //

      await goHome(tester);
      debugPrint('\nImage settings test suite complete\n\n');
    });
