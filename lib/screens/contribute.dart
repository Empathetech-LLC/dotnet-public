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
        child: _Content(
          headerStyle: headerStyle,
          titleStyle: titleStyle,
          contentStyle: contentStyle,
          contentLinkStyle: contentLinkStyle,
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}

class _Content extends StatelessWidget {
  final TextStyle? headerStyle;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final TextStyle? contentLinkStyle;

  const _Content({
    required this.titleStyle,
    required this.headerStyle,
    required this.contentStyle,
    required this.contentLinkStyle,
  });

  @override
  Widget build(BuildContext context) {
    bool limitedSpace = LayoutSize.of(context)?.isLimited ?? false;

    final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];
    final double buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];
    final double padding = EzConfig.instance.prefs[paddingKey];

    return EzScrollView(
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
        EzRowCol(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          limitedSpace: limitedSpace,
          children: [
            // Venmo
            ElevatedButton(
              onPressed: () => openLink(Uri.parse(EmpathetechVenmo)),
              child: Text('Venmo'),
            ),
            EzSpacer.swap(buttonSpacer, limitedSpace: limitedSpace),

            // PayPal
            ElevatedButton.icon(
              onPressed: () => openLink(Uri.parse(EmpathetechPayPal)),
              icon: Icon(LineIcons.github),
              label: Text('PayPal'),
            ),
            EzSpacer.swap(buttonSpacer, limitedSpace: limitedSpace),

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
          limitedSpace: limitedSpace,
        ),
        EzSpacer(2 * spacer),
      ],
    );
  }
}
