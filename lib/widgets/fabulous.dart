/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SettingsFAB extends FloatingActionButton {
  /// [FloatingActionButton] that goes to the [SettingsHomeScreen]
  SettingsFAB(BuildContext context, {super.key})
      : super(
          child: Icon(PlatformIcons(context).settings),
          onPressed: () => context.goNamed(settingsPath),
          tooltip: Lang.of(context)!.gSettingsHint,
        );
}

class BackFAB extends FloatingActionButton {
  /// [FloatingActionButton] that goes back (pop)
  BackFAB(BuildContext context, {super.key})
      : super(
          child: Icon(PlatformIcons(context).back),
          onPressed: () => Navigator.of(context).pop(),
          tooltip: EFUILang.of(context)!.gBack,
        );
}
