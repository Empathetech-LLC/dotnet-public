/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../../export.dart';
import '../../../utils/export.dart';
import '../../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class LiminalScreen extends StatelessWidget {
  LiminalScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  Widget build(BuildContext context) => DotnetScaffold(
        EzScreen(EzScrollView(children: <Widget>[
          // Headline
          EzLink(
            Products.liminal.name,
            url: Uri.parse(liminalSource),
            hint: l10n.gRepoHint,
            style: EzConfig.styles.displayLarge,
            textAlign: TextAlign.center,
          ),
          EzText(
            l10n.llDescription,
            semanticsLabel: l10n.llDescriptionFix,
            style: EzConfig.styles.headlineLarge,
            textAlign: TextAlign.center,
          ),
          EzConfig.centerLine,

          // In dev
          EzText(
            l10n.llInDev,
            style: EzConfig.styles.bodyLarge,
            textAlign: TextAlign.center,
          ),
          EzConfig.centerLine,
          EzRichText(
            <InlineSpan>[
              EzPlainText(
                text: l10n.llBut,
                style: EzConfig.styles.bodyLarge,
              ),
              EzInlineLink(
                Products.openUI.name,
                url: Uri.parse(Products.openUI.url),
                hint: l10n.gLearn(Products.openUI.name),
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzPlainText(
                text: l10n.llWhimsy,
                style: EzConfig.styles.bodyLarge,
              ),
            ],
            style: EzConfig.styles.bodyLarge,
            textAlign: TextAlign.center,
          ),
          EzConfig.separator,

          EzScrollView(
            startCentered: true,
            showScrollHint: true,
            scrollDirection: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Mt Hood
              Tooltip(
                message: '${l10n.llTheHood}\n${l10n.gImageCredit(crosby)}',
                child: EzImage(
                  width: ezImageSize(context) * 1.5,
                  image: theHoodImage,
                  semanticLabel: l10n.llTheHood,
                ),
              ),
              EzConfig.rowSpacer,

              // Rose Garden
              Tooltip(
                message: '${l10n.llLasRosas}\n${l10n.gImageCredit(mike)}',
                child: EzImage(
                  width: ezImageSize(context) * 1.5,
                  image: lasRosasImage,
                  semanticLabel: l10n.llLasRosas,
                ),
              ),
              EzConfig.rowSpacer,

              // La Grenouille
              Tooltip(
                message: '${l10n.llFrogAndPigs}\n${l10n.gImageCredit(nikkolas)}',
                child: EzImage(
                  width: ezImageSize(context) * 1.5,
                  image: laGrenouilleImage,
                  semanticLabel: l10n.llFrogAndPigs,
                ),
              ),
            ],
          ),
          EzConfig.separator,

          // Pricing && contact
          EzText(
            l10n.llModel,
            style: EzConfig.styles.bodyLarge,
            textAlign: TextAlign.center,
          ),
          EzConfig.centerLine,

          EzRichText(<InlineSpan>[
            EzInlineLink(
              l10n.gReachOut,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(teamURL),
              hint: l10n.gTeamHint,
            ),
            EzPlainText(
              text: l10n.psLearnMore,
              style: EzConfig.styles.bodyLarge,
            ),
          ], textAlign: TextAlign.center),
          const EzFooter(),
        ])),
        fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
      );
}
