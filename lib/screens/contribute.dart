/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
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
  ContributeScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  State<ContributeScreen> createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen> {
  // Set the page title //

  @override
  void initState() {
    super.initState();
    ezWindowNamer(EzConfig.l10n.csPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) => DotnetScaffold(
        EzScreen(EzScrollView(children: <Widget>[
          EzHeader(),

          // Time //

          EzText(
            l10n.csTime,
            style: EzConfig.styles.titleLarge,
            textAlign: TextAlign.center,
          ),

          // GitHub contributor
          EzRichText(<InlineSpan>[
            EzInlineLink(
              l10n.gReachOut,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(
                'mailto:$empathCommunity?subject=Becoming%20a%20contributor',
              ),
              tooltip: l10n.gEmailTo(empathetechLLC),
              hint: l10n.gEmailTo(empatheticLLC),
            ),
            EzPlainText(
              text: l10n.csBecome,
              style: EzConfig.styles.bodyLarge,
            ),
            EzInlineLink(
              l10n.csGit,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(empathGitHub),
              hint: l10n.gEmpathetechGitHint,
              tooltip: empathGitHub,
            ),
          ], textAlign: TextAlign.center),
          EzConfig.divider,

          // Money //

          EzText(
            l10n.csMoney,
            style: EzConfig.styles.titleLarge,
            textAlign: TextAlign.center,
          ),
          EzConfig.spacer,

          // Crowdfunding organizations
          EzRowCol.sym(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              EzElevatedIconLink(
                tooltip: empathGoFundMe,
                hint: l10n.csOpenLink('GoFundMe'),
                url: Uri.parse(empathGoFundMe),
                icon: const Icon(Icons.wb_sunny_outlined),
                label: 'GoFundMe',
              ),
            ],
          ),
          EzConfig.spacer,

          // Affiliate donations
          EzRowCol.sym(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Patreon
              EzElevatedIconLink(
                tooltip: empathPatreon,
                hint: l10n.csOpenLink('Patreon'),
                url: Uri.parse(empathPatreon),
                icon: const Icon(LineIcons.patreon),
                label: 'Patreon',
              ),
              const EzSwapSpacer(),

              // Buy Me a Coffee
              EzElevatedIconLink(
                tooltip: empathCoffee,
                hint: l10n.csOpenLink('Buy Me a Coffee'),
                url: Uri.parse(empathCoffee),
                icon: const Icon(LineIcons.coffee),
                label: 'Buy Me a Coffee',
              ),
              const EzSwapSpacer(),

              // Ko-fi
              EzElevatedIconLink(
                tooltip: empathKofi,
                hint: l10n.csOpenLink('Ko-fi'),
                url: Uri.parse(empathKofi),
                icon: const Icon(LineIcons.coffee),
                label: 'Ko-fi',
              ),
            ],
          ),
          EzConfig.spacer,

          // Direct donations
          EzRowCol.sym(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // PayPal
              EzElevatedIconLink(
                tooltip: empathPayPal,
                hint: l10n.csOpenLink('PayPal'),
                url: Uri.parse(empathPayPal),
                icon: const Icon(LineIcons.paypal),
                label: 'PayPal',
              ),
              const EzSwapSpacer(),

              // Venmo
              EzElevatedLink(
                tooltip: empathVenmo,
                hint: l10n.csOpenLink('Venmo'),
                url: Uri.parse(empathVenmo),
                text: 'Venmo',
              ),
              const EzSwapSpacer(),

              // CashApp
              EzElevatedIconLink(
                tooltip: empathCashApp,
                hint: l10n.csOpenLink('CashApp'),
                url: Uri.parse(empathCashApp),
                icon: const Icon(FontAwesomeIcons.cashApp),
                label: 'CashApp',
              ),
            ],
          ),
          EzConfig.divider,

          // Power //

          EzText(
            l10n.csPower,
            style: EzConfig.styles.titleLarge,
            textAlign: TextAlign.center,
          ),

          // F@H team
          const FaHBanner(),
          EzConfig.divider,

          // Thanks
          EzText(
            l10n.csEveryBit,
            style: ezSubTitleStyle(),
            textAlign: TextAlign.center,
          ),
          EzConfig.separator,

          const EzTranslationsPendingNotice(),
        ])),
        fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
      );
}
