/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:dotnet/main.dart';
import 'package:dotnet/utils/export.dart';
import 'package:dotnet/widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

void testSuite({
  Locale locale = english,
  bool isLefty = false,
}) =>
    testWidgets('products-screen', (WidgetTester tester) async {
      // Load localization(s) //

      ezLog('Loading localizations');
      final Lang l10n = await Lang.delegate.load(locale);

      // Load the app //

      ezLog('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      await dotNetNav(tester, l10n.psPageTitle);

      // Verify text loaded //

      ezLog('\nValidating text');
      await ezFindText(tester, efuiL);
      await ezFind(tester, find.widgetWithText(EzLink, l10n.psOpenUISlogan));

      await ezFind(tester, find.widgetWithText(EzLink, 'Flutter'));
      await ezFind(tester, find.widgetWithText(EzLink, 'Flutter'));

      await ezFindText(tester, l10n.psPlatform);
      await ezFindText(tester, l10n.psPlatformContent);

      await ezFindText(tester, l10n.psResponsive);
      await ezFindText(tester, l10n.psResponsiveContent);

      await ezFindText(tester, l10n.psScreen);
      await ezFind(tester, find.widgetWithText(EzLink, 'TalkBack'));
      await ezFind(tester, find.widgetWithText(EzLink, 'VoiceOver'));

      await ezFindText(tester, l10n.psCustom);
      await ezFindText(tester, l10n.psCustomContent);

      await ezFindText(tester, l10n.psInternational);
      await ezFindText(tester, l10n.psInternationalContent);

      await ezFindText(tester, l10n.psEFUITagLine);

      await ezFind(tester, find.widgetWithText(EzLink, l10n.gReachOut));

      ezLog('\nValidating Open UI links');
      await ezFindWidget(tester, OpenUILink);

      // Reset for next test suite  //

      await goHome(tester);
      ezLog('\nImage settings test suite complete\n\n');
    });
