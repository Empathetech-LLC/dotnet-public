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
  // Gather the theme data //

  late final TextStyle? _headerStyle = headlineMedium(context);
  late final TextStyle? _titleStyle = titleLarge(context);
  late final TextStyle? _contentStyle = bodyLarge(context);

  final double _padding = EzConfig.get(paddingKey);
  final double _textSpacer = EzConfig.get(textSpacingKey);
  final double _buttonSpacer = EzConfig.get(buttonSpacingKey);

  // Define the buttons //

  List<Widget> _directDonations(BuildContext context) {
    return [
      // PayPal
      ElevatedButton.icon(
        onPressed: () => launchUrl(Uri.parse(EmpathetechPayPal)),
        icon: const Icon(LineIcons.paypal),
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
        icon: const Icon(LineIcons.dollarSign),
        label: const Text("CashApp"),
      ),
    ];
  }

  List<Widget> _affiliateDonations(BuildContext context) {
    return [
      // Patreon
      ElevatedButton.icon(
        onPressed: () => launchUrl(Uri.parse(EmpathetechPatreon)),
        icon: const Icon(LineIcons.patreon),
        label: const Text("Patreon"),
      ),
      EzSwapSpacer(_buttonSpacer),

      // Buy Me a Coffee
      ElevatedButton.icon(
        onPressed: () => launchUrl(Uri.parse(EmpathetechCoffee)),
        icon: const Icon(LineIcons.coffee),
        label: const Text("Buy Me a Coffee"),
      ),
      EzSwapSpacer(_buttonSpacer),

      // Ko-fi
      ElevatedButton.icon(
        onPressed: () => launchUrl(Uri.parse(EmpathetechKofi)),
        icon: const Icon(LineIcons.coffee),
        label: const Text("Ko-fi"),
      ),
    ];
  }

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, Lang.of(context)!.spsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // Intro //

            Text(
              Lang.of(context)!.spsThanks,
              style: _titleStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              Lang.of(context)!.spsGive,
              style: _contentStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_textSpacer),

            // Donate ... //
            // Time

            Text(
              Lang.of(context)!.spsTimeQ,
              style: _headerStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_padding),

            // GitHub contributor
            EzRichText(
              [
                EzInlineLink(
                  Lang.of(context)!.gReachOut,
                  style: _contentStyle,
                  url: Uri.parse(
                      "mailto:$EmpathetechCommunity?subject=Becoming%20a%20contributor"),
                  semanticsLabel: Lang.of(context)!.gEmailHint,
                ),
                EzPlainText(
                  Lang.of(context)!.spsBecome,
                  context: context,
                  style: _contentStyle,
                ),
                EzInlineLink(
                  Lang.of(context)!.spsGit,
                  style: _contentStyle,
                  url: Uri.parse(EmpathetechGitHub),
                  semanticsLabel: Lang.of(context)!.gGitHint,
                ),
              ],
              textAlign: TextAlign.center,
            ),
            EzSpacer(_textSpacer),

            // Money //

            Text(
              Lang.of(context)!.spsMoneyQ,
              style: _headerStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_buttonSpacer),

            // Direct donations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: _directDonations(context),
            ),
            EzSpacer(_buttonSpacer),

            // Affiliate donations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: _affiliateDonations(context),
            ),
            EzSpacer(_textSpacer),

            // Power //

            Text(
              Lang.of(context)!.spsPowerQ,
              style: _headerStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_padding),

            // F@H team
            FaHBanner(
              titleStyle: _titleStyle,
              contentStyle: _contentStyle,
            ),
            EzSpacer(_textSpacer),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
