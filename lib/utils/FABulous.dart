import './utils.dart';
import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsFAB extends StatelessWidget {
  /// [FloatingActionButton] (but actually an [ElevatedButton]) that goes to the [SettingsScreen]
  const SettingsFAB();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      hint: Lang.of(context)!.gSettingsHint,
      child: ExcludeSemantics(
        child: ElevatedButton(
          onPressed: () => context.goNamed(settingsRoute),
          child: Icon(PlatformIcons(context).settings),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                shape: MaterialStatePropertyAll(const CircleBorder()),
              ),
        ),
      ),
    );
  }
}

class BackFAB extends StatelessWidget {
  /// [FloatingActionButton] (but actually an [ElevatedButton]) that goes back via [popScreen]
  const BackFAB();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      hint: Lang.of(context)!.gBack,
      child: ExcludeSemantics(
        child: ElevatedButton(
          onPressed: () => popScreen(context: context),
          child: Icon(PlatformIcons(context).back),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                shape: MaterialStatePropertyAll(const CircleBorder()),
              ),
        ),
      ),
    );
  }
}
