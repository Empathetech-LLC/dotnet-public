import './utils.dart';
import '../screens/screens.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
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

class BackFAB extends FloatingActionButton {
  /// [FloatingActionButton] that goes back via [popScreen]
  BackFAB({required BuildContext context, super.key})
      : super(
          child: Icon(PlatformIcons(context).back),
          onPressed: () => Navigator.of(context).pop(),
          tooltip: EFUILang.of(context)!.gBack,
        );
}
