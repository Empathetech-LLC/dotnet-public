import 'screens.dart';
import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Set page/tab title //

  @override
  void initState() {
    super.initState();
    setPageTitle(context: context, title: 'Settings');
  }

  // Gather theme data //

  final double buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];
  final double paragraphSpacer = EzConfig.instance.prefs[paragraphSpacingKey];

  late final TextStyle? resetLinkStyle =
      titleLarge(context)?.copyWith(decoration: TextDecoration.underline);

  // Build page //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScreenScroller(
          children: [
            // Functionality disclaimer
            EzWarning(
              warning: 'ATTENTION',
              message:
                  'Each setting will preview changes\nReload the page to apply\nPer-reset changes are unlimited!',
              style: headlineSmall(context),
            ),
            EzSpacer(paragraphSpacer),

            // Theme mode switch
            const EzThemeModeSwitch(),
            EzSpacer(buttonSpacer),

            // Dominant hand switch
            const EzDominantHandSwitch(),
            EzSpacer(paragraphSpacer),

            // Color settings
            ElevatedButton(
              onPressed: () => pushScreen(
                context: context,
                screen: const ColorSettingsScreen(),
              ),
              child: const Text('Colors'),
            ),
            EzSpacer(buttonSpacer),

            // Style settings
            ElevatedButton(
              onPressed: () => pushScreen(
                context: context,
                screen: const StyleSettingsScreen(),
              ),
              child: const Text('Styling'),
            ),
            EzSpacer(paragraphSpacer),

            // Reset button
            EzSelectableText(
              'Reset all',
              style: resetLinkStyle,
              onTap: () => showPlatformDialog(
                context: context,
                builder: (context) => EzDialog(
                  title: const EzSelectableText('Reset all settings?'),
                  contents: [
                    EzYesNo(
                      onConfirm: () {
                        EzConfig.instance.preferences.clear();
                        popScreen(context: context, pass: true);
                      },
                      onDeny: () => popScreen(context: context),
                    ),
                  ],
                ),
              ),
            ),
            EzSpacer(paragraphSpacer),
          ],
        ),
      ),
      fab: const BackFAB(),
    );
  }
}
