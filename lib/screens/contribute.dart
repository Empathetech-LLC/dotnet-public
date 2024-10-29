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

class ContributeScreen extends StatefulWidget {
  const ContributeScreen({super.key});

  @override
  State<ContributeScreen> createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen> {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSwapSpacer swapSpacer = EzSwapSpacer();
  static const EzSeparator separator = EzSeparator();

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final TextStyle? pitchStyle = textTheme.bodyLarge?.copyWith(
    fontSize: textTheme.titleLarge?.fontSize,
  );

  late final Lang l10n = Lang.of(context)!;

  // Define the buttons //

  late final List<Widget> crowdFundOrgs = <Widget>[
    // GoFundMe
    EzElevatedIconButton(
      onPressed: () => launchUrl(Uri.parse(empathGoFundMe)),
      icon: const Icon(Icons.wb_sunny_outlined),
      label: 'GoFundMe',
    ),
  ];

  late final List<Widget> affiliateDonations = <Widget>[
    // Patreon
    EzElevatedIconButton(
      onPressed: () => launchUrl(Uri.parse(empathPatreon)),
      icon: const Icon(LineIcons.patreon),
      label: 'Patreon',
    ),
    swapSpacer,

    // Buy Me a Coffee
    EzElevatedIconButton(
      onPressed: () => launchUrl(Uri.parse(empathCoffee)),
      icon: const Icon(LineIcons.coffee),
      label: 'Buy Me a Coffee',
    ),
    swapSpacer,

    // Ko-fi
    EzElevatedIconButton(
      onPressed: () => launchUrl(Uri.parse(empathKofi)),
      icon: const Icon(LineIcons.coffee),
      label: 'Ko-fi',
    ),
  ];

  late final List<Widget> directDonations = <Widget>[
    // PayPal
    EzElevatedIconButton(
      onPressed: () => launchUrl(Uri.parse(empathPayPal)),
      icon: const Icon(LineIcons.paypal),
      label: 'PayPal',
    ),
    swapSpacer,

    // Venmo
    ElevatedButton(
      onPressed: () => launchUrl(Uri.parse(empathVenmo)),
      child: const Text('Venmo'),
    ),
    swapSpacer,

    // CashApp
    EzElevatedIconButton(
      onPressed: () => launchUrl(Uri.parse(empathCashApp)),
      icon: const Icon(LineIcons.dollarSign),
      label: 'CashApp',
    ),
  ];

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.csPageTitle, Theme.of(context).colorScheme.primary);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        useImageDecoration: false,
        child: EzScrollView(
          children: <Widget>[
            // Intro //

            MergeSemantics(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Thanks
                  Text(
                    l10n.csThanks,
                    style: pitchStyle,
                    textAlign: TextAlign.center,
                  ),
                  spacer,

                  // Every bit
                  Text(
                    l10n.csEveryBit,
                    semanticsLabel: l10n.csEveryBitFix,
                    style: textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  spacer,

                  // Would you like to give?...
                  Text(
                    l10n.csGive,
                    style: pitchStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            separator,

            //* Donate *//

            // Time //

            Text(
              l10n.csTimeQ,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            EzSpacer(space: EzConfig.get(marginKey)),

            // GitHub contributor
            EzRichText(<InlineSpan>[
              EzInlineLink(
                l10n.gReachOut,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'mailto:$empathCommunity?subject=Becoming%20a%20contributor',
                ),
                tooltip: l10n.gEmailTo(empathetechLLC),
                semanticsLabel: l10n.gEmailTo(empatheticLLC),
              ),
              EzPlainText(
                text: l10n.csBecome,
                style: textTheme.bodyLarge,
              ),
              EzInlineLink(
                l10n.csGit,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(empathGitHub),
                semanticsLabel: l10n.gEmpathetechGitHint,
                tooltip: empathGitHub,
              ),
            ], textAlign: TextAlign.center),

            // Divider
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: widthOf(context) * 0.667),
              child: const Divider(),
            ),

            // Money //

            Text(
              l10n.csMoneyQ,
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

            // Divider
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: widthOf(context) * 0.667),
              child: const Divider(),
            ),

            // Power //

            Text(
              l10n.csPowerQ,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

            // F@H team
            const FaHBanner(),
            separator,
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
