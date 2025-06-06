/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:dotnet/main.dart';
import 'package:dotnet/widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

void testSuite({
  Locale locale = english,
  bool isLefty = false,
}) =>
    testWidgets('settings-home-screen', (WidgetTester tester) async {
      // Load localization(s) //

      ezLog('Loading localizations');
      final EFUILang eL10n = await EFUILang.delegate.load(locale);
      final LocaleNames l10nNames =
          await const LocaleNamesLocalizationsDelegate().load(locale);

      // Load the app //

      ezLog('Loading OpenUI');
      await tester.pumpWidget(const DotNet());
      await tester.pumpAndSettle();

      // Test navigation //

      ezLog('\nTesting navigation');
      // Users can navigate back with the browser's back arrow or system gestures
      // Going home and coming back is easiest for the tester
      await ezTouch(tester, find.byType(SettingsFAB));

      await ezTouchText(tester, eL10n.tsPageTitle);
      await goHome(tester);
      await ezTouch(tester, find.byType(SettingsFAB));

      await ezTouchText(tester, eL10n.lsPageTitle);
      await goHome(tester);
      await ezTouch(tester, find.byType(SettingsFAB));

      await ezTouchText(tester, eL10n.csPageTitle);
      await goHome(tester);
      await ezTouch(tester, find.byType(SettingsFAB));

      // Verify text loaded //

      ezLog('\nValidating text');
      await ezFindWidget(tester, EzWarning);
      await ezFindText(tester, eL10n.ssDominantHand);
      await ezFindText(tester, eL10n.ssThemeMode);

      //* Test functionality *//

      await testDHSetting(tester, l10n: eL10n, isLefty: isLefty);
      await testTMSwitch(tester, l10n: eL10n, isLefty: isLefty);
      await testLocaleSetting(
        tester,
        l10n: eL10n,
        l10nNames: l10nNames,
        isLefty: isLefty,
      );

      // Reset button //

      await testResetButton(
        tester,
        type: RBType.all,
        l10n: eL10n,
        isLefty: isLefty,
      );

      // EFUI shout-out //

      await ezFindWidget(tester, EFUIShoutOut);

      // Reset for next test suite  //

      await goHome(tester);
      ezLog('\nSettings screen suite complete\n\n');
    });
