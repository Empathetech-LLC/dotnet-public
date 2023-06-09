import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsFAB extends StatelessWidget {
  /// [FloatingActionButton] (but actually an [ElevatedButton])
  /// That navigates to the [SettingsScreen]
  /// Control the size with the [EzConfig] pref [circleDiameterKey]
  const SettingsFAB();

  @override
  Widget build(BuildContext context) {
    final double fabSize = EzConfig.instance.prefs[circleDiameterKey];

    return ElevatedButton(
      onPressed: () => pushScreen(
        context: context,
        screen: const SettingsScreen(),
      ),
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
    );
  }
}

class BackFAB extends StatelessWidget {
  /// [FloatingActionButton] (but actually an [ElevatedButton])
  /// That runs [popScreen]
  /// Control the size with the [EzConfig] pref [circleDiameterKey]
  const BackFAB();

  @override
  Widget build(BuildContext context) {
    final double fabSize = EzConfig.instance.prefs[circleDiameterKey];

    return ElevatedButton(
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
    );
  }
}
