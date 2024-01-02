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

  final double _buttonSpace = EzConfig.get(buttonSpacingKey);

  final EzSpacer _padder = EzSpacer(EzConfig.get(paddingKey));
  late final EzSpacer _buttonSpacer = EzSpacer(_buttonSpace);
  late final EzSwapSpacer _swapButtonSpacer = EzSwapSpacer(_buttonSpace);
  final EzSpacer _textSpacer = EzSpacer(EzConfig.get(textSpacingKey));

  late final TextStyle? headlineStyle = getHeadline(context);
  late final TextStyle? titleStyle = getTitle(context);
  late final TextStyle? bodyStyle = getBody(context);

  // Define the buttons //

  late final List<Widget> _directDonations = [
    // PayPal
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(EmpathetechPayPal)),
      icon: const Icon(LineIcons.paypal),
      label: const Text("PayPal"),
    ),
    _swapButtonSpacer,

    // Venmo
    ElevatedButton(
      onPressed: () => launchUrl(Uri.parse(EmpathetechVenmo)),
      child: const Text("Venmo"),
    ),
    _swapButtonSpacer,

    // CashApp
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(EmpathetechCashApp)),
      icon: const Icon(LineIcons.dollarSign),
      label: const Text("CashApp"),
    ),
  ];

  late final List<Widget> _affiliateDonations = [
    // Patreon
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(EmpathetechPatreon)),
      icon: const Icon(LineIcons.patreon),
      label: const Text("Patreon"),
    ),
    _swapButtonSpacer,

    // Buy Me a Coffee
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(EmpathetechCoffee)),
      icon: const Icon(LineIcons.coffee),
      label: const Text("Buy Me a Coffee"),
    ),
    _swapButtonSpacer,

    // Ko-fi
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(EmpathetechKofi)),
      icon: const Icon(LineIcons.coffee),
      label: const Text("Ko-fi"),
    ),
  ];

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(Lang.of(context)!.spsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // Intro //

            MergeSemantics(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Lang.of(context)!.spsThanks,
                    style: titleStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    Lang.of(context)!.spsGive,
                    style: bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            _textSpacer,

            // Donate ... //
            // Time

            Text(
              Lang.of(context)!.spsTimeQ,
              style: headlineStyle,
              textAlign: TextAlign.center,
            ),
            _padder,

            // GitHub contributor
            EzRichText([
              EzInlineLink(
                Lang.of(context)!.gReachOut,
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse(
                    "mailto:$EmpathetechCommunity?subject=Becoming%20a%20contributor"),
                semanticsLabel: Lang.of(context)!.gEmailTo(empathetech_llc),
              ),
              EzPlainText(
                Lang.of(context)!.spsBecome,
                style: bodyStyle,
              ),
              EzInlineLink(
                Lang.of(context)!.spsGit,
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse(EmpathetechGitHub),
                semanticsLabel: Lang.of(context)!.gEmpathetechGitHint,
                tooltip: EmpathetechGitHub,
              ),
            ], textAlign: TextAlign.center),
            _textSpacer,

            // Money //

            Text(
              Lang.of(context)!.spsMoneyQ,
              style: headlineStyle,
              textAlign: TextAlign.center,
            ),
            _buttonSpacer,

            // Direct donations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: _directDonations,
            ),
            _buttonSpacer,

            // Affiliate donations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: _affiliateDonations,
            ),
            _textSpacer,

            // Power //

            Text(
              Lang.of(context)!.spsPowerQ,
              style: headlineStyle,
              textAlign: TextAlign.center,
            ),
            _padder,

            // F@H team
            FaHBanner(
              titleStyle: titleStyle,
              bodyStyle: bodyStyle,
            ),
            _textSpacer,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
