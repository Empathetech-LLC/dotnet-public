/* dotnet
 * Copyright (c) 2022-2025 Empathetech LLC. All rights reserved.
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

/// Unique navigation for DotNet
/// Automatically handles large and small layouts
Future<void> dotNetNav(WidgetTester tester, String text) async {
  try {
    ezLog('\nTesting navigation');
    ezLog('Try large layout');
    await ezTouchText(tester, text);
  } catch (_) {
    ezLog('Catching to small layout');
    await ezTouch(tester, find.byIcon(Icons.menu));
    await ezTouchText(tester, text);
  }
}
