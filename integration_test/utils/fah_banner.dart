/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:dotnet/utils/export.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

Future<void> testFaHBanner(WidgetTester tester, Lang l10n) async {
  await validateText(tester, l10n.fahJoin);

  await validate(tester, find.widgetWithText(EzLink, empathetech));
  await validate(tester, find.widgetWithText(EzLink, l10n.fahWhatQ));

  await validateText(tester, l10n.fahStats);
}
