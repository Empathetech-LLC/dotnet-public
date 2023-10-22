import './utils.dart';
import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsFAB extends StatelessWidget {
  /// [FloatingActionButton] (but actually an [ElevatedButton]) that goes to the [SettingsScreen]
  /// Control its size with the [EzConfig.instance] pref [circleDiameterKey]
  const SettingsFAB();

  @override
  Widget build(BuildContext context) {
    final double fabSize = EzConfig.instance.prefs[circleDiameterKey];

    return Semantics(
      button: true,
      hint: Lang.of(context)!.gSettings,
      child: ExcludeSemantics(
        child: ElevatedButton(
          onPressed: () => context.goNamed(settingsRoute),
          child: Center(
            child: Icon(
              PlatformIcons(context).settings,
              size: fabSize / 2,
            ),
          ),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                shape: MaterialStatePropertyAll(const CircleBorder()),
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                fixedSize: MaterialStatePropertyAll(Size(fabSize, fabSize)),
              ),
        ),
      ),
    );
  }
}

class BackFAB extends StatelessWidget {
  /// [FloatingActionButton] (but actually an [ElevatedButton]) that goes back via [popScreen]
  /// Control its size with the [EzConfig.instance] pref [circleDiameterKey]
  const BackFAB();

  @override
  Widget build(BuildContext context) {
    final double fabSize = EzConfig.instance.prefs[circleDiameterKey];

    return Semantics(
      button: true,
      hint: Lang.of(context)!.gBack,
      child: ExcludeSemantics(
        child: ElevatedButton(
          onPressed: () => popScreen(context: context),
          child: Center(
            child: Icon(
              PlatformIcons(context).back,
              size: fabSize / 2,
            ),
          ),
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                shape: MaterialStatePropertyAll(const CircleBorder()),
                padding: MaterialStatePropertyAll(EdgeInsets.zero),
                fixedSize: MaterialStatePropertyAll(Size(fabSize, fabSize)),
              ),
        ),
      ),
    );
  }
}
