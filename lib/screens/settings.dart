import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

  late final Color? buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? resetLinkStyle =
      titleLarge(context)?.copyWith(decoration: TextDecoration.underline);
  late final TextStyle? labelStyle = labelLarge(context);
  late final TextStyle? labelLinkStyle = labelStyle?.copyWith(
    color: buttonColor,
    decoration: TextDecoration.underline,
  );

  // Build page //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // Functionality disclaimer
            EzWarning(
              warning: 'ATTENTION',
              message: """Each button will preview it\'s settting
Reload this (or any) page for the changes to take full effect
Have fun!""",
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
              onPressed: () => context.goNamed('color-settings'),
              child: const Text('Colors'),
            ),
            EzSpacer(buttonSpacer),

            // Style settings
            ElevatedButton(
              onPressed: () => context.goNamed('style-settings'),
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
            EzSpacer(3 * paragraphSpacer),

            // EFUI shoutout
            EzSelectableText.rich(TextSpan(children: [
              TextSpan(
                text: "Don\'t cha wish your frontend was fun like ",
                style: labelStyle,
              ),
              EzWebLink(
                text: "me?\n",
                url: Uri.parse(
                    "https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/screens/settings.dart"),
                style: labelLinkStyle,
                semanticsLabel:
                    'Open a GitHub link to the source code for this page',
              ),
              EzWebLink(
                text: "Don\'t cha?",
                url: Uri.parse(
                    "https://github.com/Empathetech-LLC/empathetech_flutter_ui"),
                style: labelLinkStyle,
                semanticsLabel:
                    'Open a GitHub link to the UI package making all this possible',
              ),
            ])),
            EzSpacer(paragraphSpacer),
          ],
        ),
      ),
      fab: const BackFAB(),
    );
  }
}
