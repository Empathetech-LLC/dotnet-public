/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:dotnet/main.dart';
import 'package:dotnet/utils/export.dart';
import 'package:dotnet/widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

void testSuite({
  Locale locale = english,
  bool isLefty = false,
}) =>
    testWidgets('products-screen', (WidgetTester tester) async {
      // Load localization(s) //

      debugPrint('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      debugPrint('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      await dotNetNav(tester, l10n.psPageTitle);

      // Verify text loaded //

      debugPrint('\nValidating text');
      await validateText(tester, efuiL);
      await validate(tester, find.widgetWithText(EzLink, l10n.psEFUISlogan));

      await validate(tester, find.widgetWithText(EzLink, 'Flutter'));
      await validate(tester, find.widgetWithText(EzLink, 'Flutter'));

      await validateText(tester, l10n.psPlatform);
      await validateText(tester, l10n.psPlatformContent);

      await validateText(tester, l10n.psResponsive);
      await validateText(tester, l10n.psResponsiveContent);

      await validateText(tester, l10n.psScreen);
      await validate(tester, find.widgetWithText(EzLink, 'TalkBack'));
      await validate(tester, find.widgetWithText(EzLink, 'VoiceOver'));

      await validateText(tester, l10n.psCustom);
      await validateText(tester, l10n.psCustomContent);

      await validateText(tester, l10n.psInternational);
      await validateText(tester, l10n.psInternationalContent);

      await validateText(tester, l10n.psEFUITagLine);

      await validate(tester, find.widgetWithText(EzLink, l10n.gReachOut));

      debugPrint('\nValidating Open UI links');
      await validateWidget(tester, OpenUILinks);

      await touch(tester, find.byType(DropdownMenu<String>));
      await touchText(tester, android);

      await touch(tester, find.byType(DropdownMenu<String>));
      await touchText(tester, ios);

      await touch(tester, find.byType(DropdownMenu<String>));
      await touchText(tester, desktop);

      await touch(tester, find.byType(DropdownMenu<String>));
      await touchText(tester, web);

      // Reset for next test suite  //

      await goHome(tester);
      debugPrint('\nImage settings test suite complete\n\n');
    });
