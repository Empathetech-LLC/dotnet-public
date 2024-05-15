import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  // Gather the theme data //

  final double space = EzConfig.get(spacingKey);

  late final EzSpacer spacer = EzSpacer(space);
  late final EzSwapSpacer swapSpacer = EzSwapSpacer(space);
  late final EzSpacer separator = EzSpacer(space * 2);

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final TextStyle? headlineStyle = textTheme.headlineLarge;
  late final TextStyle? titleStyle = textTheme.titleLarge;
  late final TextStyle? bodyStyle = textTheme.bodyLarge;

  late final Lang l10n = Lang.of(context)!;

  // Define the buttons //

  late final List<Widget> _directDonations = <Widget>[
    // PayPal
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(empathPayPal)),
      icon: const Icon(LineIcons.paypal),
      label: const Text('PayPal'),
    ),
    swapSpacer,

    // Venmo
    ElevatedButton(
      onPressed: () => launchUrl(Uri.parse(empathVenmo)),
      child: const Text('Venmo'),
    ),
    swapSpacer,

    // CashApp
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(empathCashApp)),
      icon: const Icon(LineIcons.dollarSign),
      label: const Text('CashApp'),
    ),
  ];

  late final List<Widget> _affiliateDonations = <Widget>[
    // Patreon
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(empathPatreon)),
      icon: const Icon(LineIcons.patreon),
      label: const Text('Patreon'),
    ),
    swapSpacer,

    // Buy Me a Coffee
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(empathCoffee)),
      icon: const Icon(LineIcons.coffee),
      label: const Text('Buy Me a Coffee'),
    ),
    swapSpacer,

    // Ko-fi
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(empathKofi)),
      icon: const Icon(LineIcons.coffee),
      label: const Text('Ko-fi'),
    ),
  ];

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.spsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: <Widget>[
            // Intro //

            MergeSemantics(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    l10n.spsThanks,
                    style: headlineStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    l10n.spsGive,
                    style: bodyStyle?.copyWith(fontSize: titleStyle?.fontSize),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            separator,

            /* Donate ... //

            // Time */

            Text(
              l10n.spsTimeQ,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),

            // GitHub contributor
            EzRichText(<InlineSpan>[
              EzInlineLink(
                l10n.gReachOut,
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'mailto:$empathCommunity?subject=Becoming%20a%20contributor',
                ),
                semanticsLabel: l10n.gEmailTo(empatheticLLC),
              ),
              EzPlainText(
                text: l10n.spsBecome,
                style: bodyStyle,
              ),
              EzInlineLink(
                l10n.spsGit,
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse(empathGitHub),
                semanticsLabel: l10n.gEmpathetechGitHint,
                tooltip: empathGitHub,
              ),
            ], textAlign: TextAlign.center),
            separator,

            // Money //

            Text(
              l10n.spsMoneyQ,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            spacer,

            // Direct donations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: _directDonations,
            ),
            spacer,

            // Affiliate donations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: _affiliateDonations,
            ),
            separator,

            // Power //

            Text(
              l10n.spsPowerQ,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),

            // F@H team
            FaHBanner(
              titleStyle: titleStyle,
              bodyStyle: bodyStyle,
            ),
            separator,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
