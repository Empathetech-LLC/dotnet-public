/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:dotnet/main.dart';
import 'package:dotnet/utils/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

void testSuite({
  Locale locale = english,
  bool isLefty = false,
}) =>
    testWidgets('home-screen', (WidgetTester tester) async {
      // Load localization(s) //

      ezLog('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      ezLog('Loading Open UI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Verify text and art loaded //

      ezLog('\nValidating text');
      await ezFindText(tester, l10n.hsSlogan);
      await ezFindWidget(tester, Logo);
      await ezFindWidget(tester, LogoAnimation);

      //* Test functionality *//

      ezLog('\nTesting share menu');
      try {
        await _largeLayoutTests(tester, l10n: l10n);
      } catch (_) {
        await _smallLayoutTests(tester, l10n: l10n);
      }

      // Reset for next test suite  //

      ezLog('\nHome screen suite complete\n\n');
    });

Future<void> _largeLayoutTests(
  WidgetTester tester, {
  required Lang l10n,
}) async {
  ezLog('Testing large layout');

  await ezTouch(tester, find.byType(MenuAnchor).last);

  await ezFind(tester, find.widgetWithText(MenuItemButton, 'GitHub'));
  await ezFind(tester, find.widgetWithText(MenuItemButton, 'LinkedIn'));
  await ezFind(tester, find.widgetWithText(MenuItemButton, 'Mastodon'));
  await ezFind(tester, find.widgetWithText(MenuItemButton, l10n.gNewsletter));

  await ezDismiss(tester);
}

Future<void> _smallLayoutTests(
  WidgetTester tester, {
  required Lang l10n,
}) async {
  ezLog('Catching to small layout');

  await ezTouch(tester, find.byIcon(Icons.menu));

  await ezFind(tester, find.byIcon(LineIcons.github));
  await ezFind(tester, find.byIcon(LineIcons.linkedin));
  await ezFind(tester, find.byIcon(LineIcons.mastodon));
  await ezFind(tester, find.byIcon(Icons.mail_outline));

  await ezDismiss(tester);
}
