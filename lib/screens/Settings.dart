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

  final double buttonSpace = EzConfig.get(buttonSpacingKey);

  late final EzSpacer _buttonSpacer = EzSpacer(buttonSpace);
  late final EzSpacer _buttonSeparator = EzSpacer(2 * buttonSpace);

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(EFUILang.of(context)!.ssPageTitle);
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
              titleStyle: getTitle(context),
              bodyStyle: getBody(context),
              body: kIsWeb
                  ? EFUILang.of(context)!.ssSettingsGuideWeb
                  : EFUILang.of(context)!.ssSettingsGuide,
            ),
            _buttonSeparator,

            // Global settings
            const EzDominantHandSwitch(),
            _buttonSpacer,

            const EzThemeModeSwitch(),
            _buttonSeparator,

            const EzLocaleSetting(),
            _buttonSpacer,

            // Color settings
            ElevatedButton(
              onPressed: () => context.goNamed(colorSettingsRoute),
              child: Text(EFUILang.of(context)!.csPageTitle),
            ),
            _buttonSpacer,

            // Style settings
            ElevatedButton(
              onPressed: () => context.goNamed(styleSettingsRoute),
              child: Text(EFUILang.of(context)!.stsPageTitle),
            ),
            _buttonSeparator,

            // Reset button
            const EzResetButton(),
            _buttonSeparator,

            EFUIShoutOut(
              style: getLabel(context),
              sourceLink: settingsSource,
            ),
            _buttonSpacer
          ],
        ),
      ),
      fab: BackFAB(context: context),
    );
  }
}
