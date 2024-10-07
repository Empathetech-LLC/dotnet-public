/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

/// Find and touch the [EmpathetechLogo] home "button"
Future<void> goHome(WidgetTester tester) async {
  final Finder icon = find.byType(EmpathetechLogo);

  await tester.ensureVisible(icon);
  await tester.tapAt(tester.getCenter(icon));
  await tester.pumpAndSettle();
}

Future<void> dotNetNav(WidgetTester tester, String text) async {
  try {
    debugPrint('\nTesting navigation');
    debugPrint('Try large layout');
    await touchText(tester, text);
  } catch (_) {
    debugPrint('Catching to small layout');
    await touch(tester, find.byIcon(Icons.menu));
    await touchText(tester, text);
  }
}
