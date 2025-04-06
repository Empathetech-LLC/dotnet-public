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
    testWidgets('team-screen', (WidgetTester tester) async {
      // Load localization(s) //

      ezLog('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      ezLog('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      await dotNetNav(tester, l10n.tsPageTitle);

      // Verify text loaded //

      ezLog('\nValidating text');
      await ezFindText(tester, l10n.tsCore);
      await ezFindText(tester, l10n.tsTheFounder);
      await ezFindText(tester, mike);
      await ezFindText(tester, l10n.tsCommunity);
      await ezFindText(tester, l10n.tsFreelance);
      await ezFindText(tester, l10n.tsSpanish);
      await ezFindText(tester, saraH);
      await ezFindText(tester, l10n.tsFrench);
      await ezFindText(tester, alexisN);

      //* Test functionality *//

      await testFaHBanner(tester, l10n);

      // Reset for next test suite  //

      await goHome(tester);
      ezLog('\nImage settings test suite complete\n\n');
    });
