import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  // Set page/tab title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, Lang.of(context)!.spsPageTitle);
  }

  // Gather theme data //

  late final Color? _buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? _headerStyle = headlineMedium(context);
  late final TextStyle? _titleStyle = titleLarge(context);
  late final TextStyle? _contentStyle = bodyLarge(context);
  late final TextStyle? _contentLinkStyle = _contentStyle?.copyWith(
    color: _buttonColor,
    decoration: TextDecoration.underline,
  );

  final double _padding = EzConfig.instance.prefs[paddingKey];
  final double _textSpacer = EzConfig.instance.prefs[textSpacingKey];
  final double _buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // Intro //

            EzText(
              Lang.of(context)!.spsThanks,
              style: _titleStyle,
            ),
            EzText(
              Lang.of(context)!.spsGive,
              style: _contentStyle,
            ),
            EzSpacer(_textSpacer),

            // Donate ... //
            // Time

            EzText(
              Lang.of(context)!.spsTimeQ,
              style: _headerStyle,
            ),
            EzSpacer(_padding),

            // GitHub contributor
            EzRichText([
              EzInlineLink(
                Lang.of(context)!.gReachOut,
                style: _contentLinkStyle,
                semanticsLabel: Lang.of(context)!.gEmailHint,
                url: Uri.parse(
                    "mailto:$EmpathetechCommunity?subject=Becoming%20a%20contributor"),
              ),
              EzPlainText(
                Lang.of(context)!.spsBecome,
                context: context,
                style: _contentStyle,
              ),
              EzInlineLink(
                Lang.of(context)!.spsGit,
                style: _contentLinkStyle,
                semanticsLabel: Lang.of(context)!.gGitHint,
                url: Uri.parse(EmpathetechGitHub),
              ),
            ]),
            EzSpacer(_textSpacer),

            // Money //

            EzText(
              Lang.of(context)!.spsMoneyQ,
              style: _headerStyle,
            ),
            EzSpacer(_buttonSpacer),

            // Direct donations
            EzRowCol(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // PayPal
                ElevatedButton.icon(
                  onPressed: () => launchUrl(Uri.parse(EmpathetechPayPal)),
                  icon: Icon(LineIcons.paypal),
                  label: const Text("PayPal"),
                ),
                EzSwapSpacer(_buttonSpacer),

                // Venmo
                ElevatedButton(
                  onPressed: () => launchUrl(Uri.parse(EmpathetechVenmo)),
                  child: const Text("Venmo"),
                ),
                EzSwapSpacer(_buttonSpacer),

                // CashApp
                ElevatedButton.icon(
                  onPressed: () => launchUrl(Uri.parse(EmpathetechCashApp)),
                  icon: Icon(LineIcons.dollarSign),
                  label: const Text("CashApp"),
                ),
              ],
            ),
            EzSpacer(_buttonSpacer),

            // Indirect donations
            EzRowCol(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Patreon
                ElevatedButton.icon(
                  onPressed: () => launchUrl(Uri.parse(EmpathetechPatreon)),
                  icon: Icon(LineIcons.patreon),
                  label: const Text("Patreon"),
                ),
                EzSwapSpacer(_buttonSpacer),

                // Buy Me a Coffee
                ElevatedButton.icon(
                  onPressed: () => launchUrl(Uri.parse(EmpathetechCoffee)),
                  icon: Icon(LineIcons.coffee),
                  label: const Text("Buy Me a Coffee"),
                ),
                EzSwapSpacer(_buttonSpacer),

                // Ko-fi
                ElevatedButton.icon(
                  onPressed: () => launchUrl(Uri.parse(EmpathetechKofi)),
                  icon: Icon(LineIcons.coffee),
                  label: const Text("Ko-fi"),
                ),
              ],
            ),
            EzSpacer(_textSpacer),

            // Power //

            EzText(
              Lang.of(context)!.spsPowerQ,
              style: _headerStyle,
            ),
            EzSpacer(_padding),

            // F@H team
            FaHBanner(
              titleStyle: _titleStyle,
              contentStyle: _contentStyle,
              contentLinkStyle: _contentLinkStyle,
            ),
            EzSpacer(_textSpacer),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
