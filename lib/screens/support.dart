/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

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

  static const EzSpacer spacer = EzSpacer();
  static const EzSwapSpacer swapSpacer = EzSwapSpacer();
  static const EzSeparator separator = EzSeparator();

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final Lang l10n = Lang.of(context)!;

  // Define the buttons //

  late final List<Widget> crowdFundOrgs = <Widget>[
    // GoFundMe
    ElevatedButton.icon(
      onPressed: () => launchUrl(Uri.parse(empathGoFundMe)),
      icon: const Icon(Icons.wb_sunny_outlined),
      label: const Text('GoFundMe'),
    ),
  ];

  late final List<Widget> affiliateDonations = <Widget>[
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

  late final List<Widget> directDonations = <Widget>[
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
                    style: textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    l10n.spsGive,
                    style: textTheme.bodyLarge
                        ?.copyWith(fontSize: textTheme.titleLarge?.fontSize),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            separator,

            //// Donate ////

            // Time //

            Text(
              l10n.spsTimeQ,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),

            // GitHub contributor
            EzRichText(<InlineSpan>[
              EzInlineLink(
                l10n.gReachOut,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'mailto:$empathCommunity?subject=Becoming%20a%20contributor',
                ),
                semanticsLabel: l10n.gEmailTo(empatheticLLC),
              ),
              EzPlainText(
                text: l10n.spsBecome,
                style: textTheme.bodyLarge,
              ),
              EzInlineLink(
                l10n.spsGit,
                style: textTheme.bodyLarge,
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
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

            // Crowdfunding organizations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: crowdFundOrgs,
            ),
            spacer,

            // Affiliate donations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: affiliateDonations,
            ),
            spacer,

            // Direct donations
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: directDonations,
            ),
            separator,

            // Power //

            Text(
              l10n.spsPowerQ,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),

            // F@H team
            FaHBanner(
              titleStyle: textTheme.titleLarge,
              bodyStyle: textTheme.bodyLarge,
            ),
            separator,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
