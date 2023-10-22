import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class StyleSettingsScreen extends StatefulWidget {
  const StyleSettingsScreen({Key? key}) : super(key: key);

  @override
  _StyleSettingsScreenState createState() => _StyleSettingsScreenState();
}

class _StyleSettingsScreenState extends State<StyleSettingsScreen> {
  // Set page/tab title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, EFUILang.of(context)!.stsPageTitle);
  }

  // Gather theme data //

  final double _margin = EzConfig.instance.prefs[marginKey];
  final double _buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // Font
            EzSpacer(_buttonSpacer > _margin ? _buttonSpacer - _margin : 0),
            const EzFontSetting(),
            EzSpacer(_buttonSpacer),

            // Margin
            EzSliderSetting(
              prefsKey: marginKey,
              type: SliderSettingType.margin,
              title: EFUILang.of(context)!.stsMargin,
              min: 5.0,
              max: 50.0,
              steps: 18,
              decimals: 1,
            ),
            EzSpacer(_buttonSpacer),

            // Padding
            EzSliderSetting(
              prefsKey: paddingKey,
              type: SliderSettingType.padding,
              title: EFUILang.of(context)!.stsPadding,
              min: 0.0,
              max: 50.0,
              steps: 20,
              decimals: 1,
            ),
            EzSpacer(_buttonSpacer),

            // Circle button size
            EzSliderSetting(
              prefsKey: circleDiameterKey,
              type: SliderSettingType.circleSize,
              title: EFUILang.of(context)!.stsCircleSize,
              min: 30,
              max: 100,
              steps: 14,
              decimals: 0,
            ),
            EzSpacer(_buttonSpacer),

            // Button spacing
            EzSliderSetting(
              prefsKey: buttonSpacingKey,
              type: SliderSettingType.buttonSpacing,
              title: EFUILang.of(context)!.stsButtonSpacing,
              min: 10.0,
              max: 100.0,
              steps: 18,
              decimals: 0,
            ),
            EzSpacer(_buttonSpacer),

            // Text spacing
            EzSliderSetting(
              prefsKey: textSpacingKey,
              type: SliderSettingType.textSpacing,
              title: EFUILang.of(context)!.stsTextSpacing,
              min: 10.0,
              max: 100.0,
              steps: 18,
              decimals: 0,
            ),
            EzSpacer(2 * _buttonSpacer),

            // Local reset "all"
            EzResetButton(
              context: context,
              dialogTitle: EFUILang.of(context)!.stsResetAll,
              onConfirm: () {
                EzConfig.instance.preferences.remove(fontFamilyKey);
                EzConfig.instance.preferences.remove(marginKey);
                EzConfig.instance.preferences.remove(paddingKey);
                EzConfig.instance.preferences.remove(circleDiameterKey);
                EzConfig.instance.preferences.remove(buttonSpacingKey);
                EzConfig.instance.preferences.remove(textSpacingKey);

                popScreen(context: context, pass: true);
              },
            ),
            EzSpacer(_buttonSpacer),
          ],
        ),
      ),
      fab: const BackFAB(),
    );
  }
}