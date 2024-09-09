/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsFAB extends FloatingActionButton {
  /// [FloatingActionButton] that goes to the [SettingsScreen]
  SettingsFAB({required BuildContext context, super.key})
      : super(
          child: Icon(PlatformIcons(context).settings),
          onPressed: () => context.go(settingsRoute),
          tooltip: Lang.of(context)!.gSettingsHint,
        );
}
