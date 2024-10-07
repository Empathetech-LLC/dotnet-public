/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
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

      debugPrint('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      debugPrint('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Verify text and art loaded //

      debugPrint('\nValidating text');
      await validateText(tester, l10n.hsSlogan);
      await validateWidget(tester, EmpathetechLogo);
      await validateWidget(tester, EmpathetechLogoAnimation);

      //* Test functionality *//

      debugPrint('\nTesting socials menu');
      try {
        await _largeLayoutTests(tester, l10n: l10n);
      } catch (_) {
        await _smallLayoutTests(tester, l10n: l10n);
      }

      // Reset for next test suite  //

      debugPrint('\nHome screen suite complete\n\n');
    });

Future<void> _largeLayoutTests(
  WidgetTester tester, {
  required Lang l10n,
}) async {
  debugPrint('Testing large layout');

  await touch(tester, find.byType(MenuAnchor).last);

  await validate(tester, find.widgetWithText(MenuItemButton, 'GitHub'));
  await validate(tester, find.widgetWithText(MenuItemButton, 'LinkedIn'));
  await validate(tester, find.widgetWithText(MenuItemButton, 'Mastodon'));
  await validate(tester, find.widgetWithText(MenuItemButton, l10n.gNewsletter));

  await dismissTap(tester);
}

Future<void> _smallLayoutTests(
  WidgetTester tester, {
  required Lang l10n,
}) async {
  debugPrint('Catching to small layout');

  await touch(tester, find.byIcon(Icons.menu));

  await validate(tester, find.byIcon(LineIcons.github));
  await validate(tester, find.byIcon(LineIcons.linkedin));
  await validate(tester, find.byIcon(LineIcons.mastodon));
  await validate(tester, find.byIcon(Icons.mail_outline));

  await dismissTap(tester);
}
