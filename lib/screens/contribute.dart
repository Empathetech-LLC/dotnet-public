/* website
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:ywt_private/ywt_private.dart' as ywt;

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:line_icons/line_icons.dart';

class ContributeScreen extends StatelessWidget {
  /// Time > Money > (electrical) Power
  const ContributeScreen({super.key});

  @override
  Widget build(BuildContext context) => Consumer<EzCP>(builder: (_, EzCP config, __) {
        final EdgeInsets wrapPadding = EzInsets.wrap(config.spacing);
        final EzSpacer halfSpacer = EzSpacer(config.spacing / 2);

        return WebsiteScaffold(
          config,
          body: EzScreen(
            config,
            child: EzScrollView(config, children: <Widget>[
              EzHeader(config),

              // Time //

              EzText(
                config,
                text: l10n(config).csTime,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),

              // GitHub contributor
              EzRichText(
                config,
                children: <InlineSpan>[
                  EzInlineLink(
                    config,
                    text: l10n(config).gReachOut,
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                    url: Uri.parse('mailto:${ywt.ywtCommunity}?subject=Becoming%20a%20contributor'),
                    tooltip: l10n(config).gEmailTo(ywtName),
                    hint: l10n(config).gEmailTo(ywtName),
                  ),
                  EzPlainText(text: l10n(config).csBecome, style: config.bodyStyle),
                  EzInlineLink(
                    config,
                    text: l10n(config).csGit,
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                    url: Uri.parse(ywt.ywtGitHub),
                    hint: l10n(config).gYWTGitHint,
                    tooltip: ywt.ywtGitHub,
                  ),
                ],
                textAlign: TextAlign.center,
              ),
              config.divider,

              // Money //

              EzText(
                config,
                text: l10n(config).csMoney,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),
              halfSpacer,

              // Affiliate donations
              EzWrap(children: <Widget>[
                // Buy Me a Coffee
                Padding(
                  padding: wrapPadding,
                  child: EzElevatedIconLink(
                    config,
                    tooltip: ywt.ywtCoffee,
                    hint: l10n(config).csOpenLink('Buy Me a Coffee'),
                    url: Uri.parse(ywt.ywtCoffee),
                    icon: EzIcon(config, LineIcons.coffee),
                    label: 'Buy Me a Coffee',
                  ),
                ),

                // Ko-fi
                Padding(
                  padding: wrapPadding,
                  child: EzElevatedIconLink(
                    config,
                    tooltip: ywt.ywtKofi,
                    hint: l10n(config).csOpenLink('Ko-fi'),
                    url: Uri.parse(ywt.ywtKofi),
                    icon: EzIcon(config, LineIcons.coffee),
                    label: 'Ko-fi',
                  ),
                ),

                // Patreon
                Padding(
                  padding: wrapPadding,
                  child: EzElevatedIconLink(
                    config,
                    tooltip: ywt.ywtPatreon,
                    hint: l10n(config).csOpenLink('Patreon'),
                    url: Uri.parse(ywt.ywtPatreon),
                    icon: EzIcon(config, LineIcons.patreon),
                    label: 'Patreon',
                  ),
                ),

                // PayPal
                Padding(
                  padding: wrapPadding,
                  child: EzElevatedIconLink(
                    config,
                    tooltip: ywt.ywtPayPal,
                    hint: l10n(config).csOpenLink('PayPal'),
                    url: Uri.parse(ywt.ywtPayPal),
                    icon: EzIcon(config, LineIcons.paypal),
                    label: 'PayPal',
                  ),
                ),
              ]),
              halfSpacer,
              EzDivider(height: config.spacing),
              config.spacer,

              // Power //

              EzText(
                config,
                text: l10n(config).csPower,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),

              // F@H team
              FaHBanner(config),
              config.divider,

              // Thanks
              EzText(
                config,
                text: l10n(config).csEveryBit,
                style: ezSubTitleStyle(config.styles),
                textAlign: TextAlign.center,
              ),
              EzFooter(config),
            ]),
          ),
          fabs: <Widget>[config.spacer, SettingsFAB(config)],
        );
      });
}
