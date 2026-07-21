/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:oui_bios/oui_bios.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_ui/open_ui.dart';

class VerifiedScreen extends StatelessWidget {
  const VerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EzCP>(
      builder: (_, EzCP config, __) => DotnetScaffold(
        config,
        body: EzScreen(config,
            child: EzScrollView(config, children: <Widget>[
              EzHeader(config),

              // Headline
              EzText(
                config,
                text: l10n(config).vaIntro,
                style: config.headlineStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,
              EzText(
                config,
                text: l10n(config).vaTheBad,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // Why we verify
              EzRichText(
                config,
                children: <InlineSpan>[
                  EzInlineLink(
                    config,
                    text: Products.openUI.name,
                    url: Uri.parse(Products.openUI.url),
                    hint: l10n(config).gLearn(Products.openUI.name),
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                  EzPlainText(
                    text: l10n(config).vaScamRisk,
                    style: config.bodyStyle,
                  ),
                ],
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,
              EzText(
                config,
                text: l10n(config).vaCheckIn,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.spacer,

              // 1st party apps
              EzText(
                config,
                text: l10n(config).vaFirst,
                style: config.headlineStyle,
                textAlign: TextAlign.center,
              ),
              EzWrap(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: config.spacing,
                    right: config.spacing,
                    bottom: config.spacing * 2,
                  ),
                  child: EzCol(children: <Widget>[
                    EzText(
                      config,
                      text: Products.openUI.name,
                      style: config.titleStyle,
                    ),
                    OpenUILink(config),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: config.spacing,
                    right: config.spacing,
                    bottom: config.spacing * 2,
                  ),
                  child: EzCol(children: <Widget>[
                    EzText(config, text: Products.sos.name, style: config.titleStyle),
                    SOSLink(config),
                  ]),
                ),
              ]),

              // 3rd party verified
              EzText(
                config,
                text: l10n(config).vaThird,
                style: config.headlineStyle,
                textAlign: TextAlign.center,
              ),
              EzRow(
                config,
                reverseHands: false,
                children: <Widget>[
                  SizedBox(
                    height: ezImageSize(config, context: context),
                    width: ezImageSize(config, context: context),
                    child: YWTime(semantics: l10n(config).vaWaiting, colorScheme: config.colors),
                  ),
                  EzText(
                    config,
                    text: l10n(config).vaWillYou,
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              config.spacer,

              // Known scams
              EzText(
                config,
                text: l10n(config).vaKnown,
                style: config.headlineStyle,
                textAlign: TextAlign.center,
              ),
              config.margin,
              EzText(
                config,
                text: l10n(config).vaSoGood,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.divider,

              // How (and why again) to submit
              EzRichText(
                config,
                children: <InlineSpan>[
                  EzPlainText(
                    text: l10n(config).vaPublished,
                    style: config.bodyStyle,
                  ),
                  EzInlineLink(
                    config,
                    text: l10n(config).gAnEmail,
                    url: Uri.parse('mailto:$ywtSupport?subject=Sharing%20an%20Open%20UI%20app'),
                    hint: l10n(config).gEmailHint,
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                  EzPlainText(
                    text: l10n(config).vaDoNoHarm,
                    style: config.bodyStyle,
                  )
                ],
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // Closing statements
              EzText(
                config,
                text: l10n(config).vaPrivateFree,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,
              EzText(
                config,
                text: l10n(config).vaDoYourPart,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              EzFooter(config),
            ])),
        fabs: <Widget>[config.spacer, SettingsFAB(config)],
      ),
    );
  }
}
