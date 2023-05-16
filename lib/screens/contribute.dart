import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ContributeScreen extends StatefulWidget {
  const ContributeScreen({Key? key}) : super(key: key);

  @override
  _ContributeScreenState createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen> {
  // Set page/tab title //

  @override
  void initState() {
    super.initState();
    setPageTitle(context: context, title: 'Contribute');
  }

  // Gather theme data //

  final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];
  final double buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];
  final double padding = EzConfig.instance.prefs[paddingKey];

  late final Color? buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? headerStyle = headlineMedium(context);

  late final TextStyle? titleStyle = titleLarge(context);

  late final TextStyle? contentStyle = bodyLarge(context);
  late final TextStyle? contentLinkStyle = contentStyle?.copyWith(
    color: buttonColor,
    decoration: TextDecoration.underline,
  );

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScreenScroller(
          children: [
            // Intro //

            EzSelectableText(
              'Many thanks for any and all support!',
              style: titleStyle,
            ),
            EzSelectableText(
              'Would you like to give...',
              style: contentStyle,
            ),
            EzSpacer(spacer),

            // Donate...
            // Time //

            EzSelectableText(
              'Time?',
              style: headerStyle,
            ),
            EzSpacer(padding),

            // GitHub contributor
            EzSelectableText.rich(TextSpan(children: [
              EzLink(
                text: 'Reach out',
                recognizer: EzLink.onTap(
                  action: () => copyToClipboard(string: EmpathetechSupport),
                ),
                style: contentLinkStyle,
              ),
              TextSpan(
                text: ' about becoming a ',
                style: contentStyle,
              ),
              EzWebLink(
                text: 'GitHub contributor',
                recognizer: EzWebLink.onTap(
                  url: Uri.parse(EmpathetechGitHub),
                ),
                style: contentLinkStyle,
              ),
            ])),
            EzSpacer(2 * spacer),

            // Money //

            EzSelectableText(
              'Money?',
              style: headerStyle,
            ),
            EzSpacer(buttonSpacer),

            // Donation buttons
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Venmo
                ElevatedButton(
                  onPressed: () => openLink(Uri.parse(EmpathetechVenmo)),
                  child: Text('Venmo'),
                ),
                EzSpacer.row(buttonSpacer),

                // PayPal
                ElevatedButton.icon(
                  onPressed: () => openLink(Uri.parse(EmpathetechPayPal)),
                  icon: Icon(LineIcons.github),
                  label: Text('PayPal'),
                ),
                EzSpacer.row(buttonSpacer),

                // CashApp
                ElevatedButton(
                  onPressed: () => openLink(Uri.parse(EmpathetechCashApp)),
                  child: Text('CashApp'),
                ),
              ],
            ),
            EzSpacer(2 * spacer),

            // Power //
            EzSelectableText(
              'Power?',
              style: headerStyle,
            ),
            EzSpacer(padding),

            // F@H team
            FAHBanner(
              titleStyle: titleStyle,
              contentStyle: contentStyle,
              contentLinkStyle: contentLinkStyle,
            ),
            EzSpacer(2 * spacer),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
