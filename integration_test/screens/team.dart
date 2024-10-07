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
    testWidgets('team-screen', (WidgetTester tester) async {
      // Load localization(s) //

      debugPrint('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      debugPrint('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      await dotNetNav(tester, l10n.tsPageTitle);

      // Verify text loaded //

      debugPrint('\nValidating text');
      await validateText(tester, l10n.tsCore);
      await validateText(tester, l10n.tsTheFounder);
      await validateText(tester, mike);
      await validateText(tester, l10n.tsCommunity);
      await validateText(tester, l10n.tsFreelance);
      await validateText(tester, l10n.tsSpanish);
      await validateText(tester, saraH);
      await validateText(tester, l10n.tsFrench);
      await validateText(tester, alexisN);

      //* Test functionality *//

      await testFaHBanner(tester, l10n);

      // Reset for next test suite  //

      await goHome(tester);
      debugPrint('\nImage settings test suite complete\n\n');
    });
