/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class ContributeScreen extends StatefulWidget {
  /// Time > Money > (electrical) Power
  const ContributeScreen({super.key});

  @override
  State<ContributeScreen> createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen> {
  // Gather the fixed theme data //

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);

  late final Lang l10n = Lang.of(context)!;

  // Define the buttons //

  late final List<Widget> crowdFundOrgs = <Widget>[
    // GoFundMe
    EzElevatedIconLink(
      tooltip: empathGoFundMe,
      hint: l10n.csOpenLink('GoFundMe'),
      url: Uri.parse(empathGoFundMe),
      icon: EzIcon(Icons.wb_sunny_outlined),
      label: 'GoFundMe',
    ),
  ];

  late final List<Widget> affiliateDonations = <Widget>[
    // Patreon
    EzElevatedIconLink(
      tooltip: empathPatreon,
      hint: l10n.csOpenLink('Patreon'),
      url: Uri.parse(empathPatreon),
      icon: EzIcon(LineIcons.patreon),
      label: 'Patreon',
    ),
    ezSwapSpacer,

    // Buy Me a Coffee
    EzElevatedIconLink(
      tooltip: empathCoffee,
      hint: l10n.csOpenLink('Buy Me a Coffee'),
      url: Uri.parse(empathCoffee),
      icon: EzIcon(LineIcons.coffee),
      label: 'Buy Me a Coffee',
    ),
    ezSwapSpacer,

    // Ko-fi
    EzElevatedIconLink(
      tooltip: empathKofi,
      hint: l10n.csOpenLink('Ko-fi'),
      url: Uri.parse(empathKofi),
      icon: EzIcon(LineIcons.coffee),
      label: 'Ko-fi',
    ),
  ];

  late final List<Widget> directDonations = <Widget>[
    // PayPal
    EzElevatedIconLink(
      tooltip: empathPayPal,
      hint: l10n.csOpenLink('PayPal'),
      url: Uri.parse(empathPayPal),
      icon: EzIcon(LineIcons.paypal),
      label: 'PayPal',
    ),
    ezSwapSpacer,

    // Venmo
    EzElevatedLink(
      tooltip: empathVenmo,
      hint: l10n.csOpenLink('Venmo'),
      url: Uri.parse(empathVenmo),
      text: 'Venmo',
    ),
    ezSwapSpacer,

    // CashApp
    EzElevatedIconLink(
      tooltip: empathCashApp,
      hint: l10n.csOpenLink('CashApp'),
      url: Uri.parse(empathCashApp),
      icon: EzIcon(FontAwesomeIcons.cashApp),
      label: 'CashApp',
    ),
  ];

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, l10n.csPageTitle);
  }

  @override
  Widget build(BuildContext context) {
    // Return the build //

    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle? subTitle = ezSubTitleStyle(textTheme);

    return DotnetScaffold(
      EzScreen(EzScrollView(children: <Widget>[
        if (spacing > margin) EzSpacer(space: spacing - margin),

        // Time //

        EzText(
          l10n.csTime,
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
            tooltip: l10n.gEmailTo(empathetechLLC),
            hint: l10n.gEmailTo(empatheticLLC),
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
            hint: l10n.gEmpathetechGitHint,
            tooltip: empathGitHub,
          ),
        ], textAlign: TextAlign.center),
        ezDivider,

        // Money //

        EzText(
          l10n.csMoney,
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        ezSpacer,

        // Crowdfunding organizations
        EzRowCol.sym(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: crowdFundOrgs,
        ),
        ezSpacer,

        // Affiliate donations
        EzRowCol.sym(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: affiliateDonations,
        ),
        ezSpacer,

        // Direct donations
        EzRowCol.sym(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: directDonations,
        ),
        ezDivider,

        // Power //

        EzText(
          l10n.csPower,
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),

        // F@H team
        const FaHBanner(),
        ezDivider,

        // Thanks
        EzText(
          l10n.csEveryBit,
          style: subTitle,
          textAlign: TextAlign.center,
        ),
        ezSeparator,

        const EzTranslationsPendingNotice(),
      ])),
      fabs: const <Widget>[ezSpacer, SettingsFAB()],
    );
  }
}
