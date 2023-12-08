import './screens.dart';
import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Gather the theme data //

  final double _buttonSpacer = EzConfig.get(buttonSpacingKey);
  final double _textSpacer = EzConfig.get(textSpacingKey);

  late final TextStyle? _labelStyle = labelLarge(context);

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, EFUILang.of(context)!.ssPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // Functionality disclaimer
            EzWarning(
              message: kIsWeb
                  ? EFUILang.of(context)!.ssSettingsGuide
                  : EFUILang.of(context)!.ssSettingsGuideWeb,
              style: headlineSmall(context),
            ),
            EzSpacer(_buttonSpacer),

            // Global settings
            const EzDominantHandSwitch(),
            EzSpacer(_buttonSpacer),

            const EzThemeModeSwitch(),
            EzSpacer(_buttonSpacer),

            const EzLocaleSetting(),
            EzSpacer(_buttonSpacer),

            // Color settings
            ElevatedButton(
              onPressed: () => context.goNamed(colorSettingsRoute),
              child: Text(EFUILang.of(context)!.csPageTitle),
            ),
            EzSpacer(_buttonSpacer),

            // Style settings
            ElevatedButton(
              onPressed: () => context.goNamed(styleSettingsRoute),
              child: Text(EFUILang.of(context)!.stsPageTitle),
            ),
            EzSpacer(_buttonSpacer),

            EzResetButton(
              context: context,
              dialogTitle: EFUILang.of(context)!.ssResetAll,
            ),
            EzSpacer(_textSpacer),

            EFUIShoutOut(
              style: _labelStyle,
              fileLink: settingsLink,
            ),
            EzSpacer(_buttonSpacer),
          ],
        ),
      ),
      fab: const BackFAB(),
    );
  }
}
