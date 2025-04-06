/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:dotnet/utils/export.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

Future<void> testFaHBanner(WidgetTester tester, Lang l10n) async {
  await ezFindText(tester, l10n.fahJoin);

  await ezFind(tester, find.widgetWithText(EzLink, empathetech));
  await ezFind(tester, find.widgetWithText(EzLink, l10n.fahWhatQ));

  await ezFindText(tester, l10n.fahStats);
}
