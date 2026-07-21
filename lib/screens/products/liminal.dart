/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_ui/open_ui.dart';

class LiminalScreen extends StatelessWidget {
  const LiminalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EzCP>(
      builder: (_, EzCP config, __) => DotnetScaffold(
        config,
        body: EzScreen(
          config,
          child: EzScrollView(config, children: <Widget>[
            // Headline
            EzLink(
              config,
              text: Products.liminal.name,
              url: Uri.parse(liminalSource),
              hint: l10n(config).gRepoHint,
              style: config.displayStyle,
              textAlign: TextAlign.center,
            ),
            config.centerLine,

            // In dev
            EzText(
              config,
              text: l10n(config).llInDev,
              style: config.bodyStyle,
              textAlign: TextAlign.center,
            ),
            config.centerLine,
            EzRichText(
              config,
              children: <InlineSpan>[
                EzPlainText(
                  text: l10n(config).llBut,
                  style: config.bodyStyle,
                ),
                EzInlineLink(
                  config,
                  text: Products.openUI.name,
                  url: Uri.parse(Products.openUI.url),
                  hint: l10n(config).gLearn(Products.openUI.name),
                  style: config.bodyStyle,
                  textAlign: TextAlign.center,
                ),
                EzPlainText(
                  text: l10n(config).llWhimsy,
                  style: config.bodyStyle,
                ),
              ],
              style: config.bodyStyle,
              textAlign: TextAlign.center,
            ),
            config.separator,

            EzScrollView(
              config,
              startCentered: true,
              showScrollHint: true,
              scrollDirection: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Mt Hood
                Tooltip(
                  message: '${l10n(config).llTheHood}\n${l10n(config).gImageCredit(crosby)}',
                  child: EzImage(
                    width: ezImageSize(config, context: context) * 1.5,
                    image: theHoodImage,
                    semanticLabel: l10n(config).llTheHood,
                  ),
                ),
                config.rowSpacer,

                // Rose Garden
                Tooltip(
                  message: '${l10n(config).llLasRosas}\n${l10n(config).gImageCredit(founder)}',
                  child: EzImage(
                    width: ezImageSize(config, context: context) * 1.5,
                    image: lasRosasImage,
                    semanticLabel: l10n(config).llLasRosas,
                  ),
                ),
                config.rowSpacer,

                // La Grenouille
                Tooltip(
                  message: '${l10n(config).llFrogAndPigs}\n${l10n(config).gImageCredit(nikkolas)}',
                  child: EzImage(
                    width: ezImageSize(config, context: context) * 1.5,
                    image: laGrenouilleImage,
                    semanticLabel: l10n(config).llFrogAndPigs,
                  ),
                ),
              ],
            ),
            config.separator,

            // Pricing && contact
            EzText(
              config,
              text: l10n(config).llModel,
              style: config.bodyStyle,
              textAlign: TextAlign.center,
            ),
            config.centerLine,

            EzRichText(config,
                children: <InlineSpan>[
                  EzInlineLink(
                    config,
                    text: l10n(config).gReachOut,
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                    url: Uri.parse(contributeURL),
                    hint: l10n(config).gTeamHint,
                  ),
                  EzPlainText(
                    text: l10n(config).psLearnMore,
                    style: config.bodyStyle,
                  ),
                ],
                textAlign: TextAlign.center),
            EzFooter(config),
          ]),
        ),
        fabs: <Widget>[config.spacer, SettingsFAB(config)],
      ),
    );
  }
}
