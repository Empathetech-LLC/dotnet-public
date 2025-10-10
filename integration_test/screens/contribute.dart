/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
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

      ezLog('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      ezLog('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      await dotNetNav(tester, l10n.csPageTitle);

      // Verify text loaded //

      ezLog('\nValidating text');
      await ezFindText(tester, l10n.csThanks);

      //* Test functionality *//

      ezLog('\nTesting functionality');

      ezLog('Time');
      await ezFindText(tester, l10n.csTime);

      await ezFind(tester, find.widgetWithText(EzLink, l10n.gReachOut));
      await ezFind(tester, find.widgetWithText(EzLink, l10n.csGit));

      ezLog('Money');
      await ezFindText(tester, l10n.csMoney);

      await ezFindText(tester, 'GoFundMe');
      await ezFindText(tester, 'Patreon');
      await ezFindText(tester, 'Buy Me a Coffee');
      await ezFindText(tester, 'Ko-fi');
      await ezFindText(tester, 'PayPal');
      await ezFindText(tester, 'Venmo');
      await ezFindText(tester, 'CashApp');

      ezLog('Power');
      await ezFindText(tester, l10n.csPower);

      await testFaHBanner(tester, l10n);

      // Reset for next test suite  //

      await goHome(tester);
      ezLog('\nImage settings test suite complete\n\n');
    });
