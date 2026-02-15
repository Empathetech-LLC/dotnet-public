/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class VerifiedScreen extends StatefulWidget {
  VerifiedScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  @override
  Widget build(BuildContext context) {
    // Gather the contextual  theme data //

    final EdgeInsets wrapPadding = EdgeInsets.only(
      left: EzConfig.spacing,
      right: EzConfig.spacing,
      bottom: EzConfig.spacing * 2,
    );
    final double loadingSize = ezImageSize(context);

    // Return the build //

    return DotnetScaffold(
      EzScreen(EzScrollView(mainAxisSize: MainAxisSize.min, children: <Widget>[
        EzHeader(),

        // Headline
        EzText(
          l10n.vaIntro,
          style: EzConfig.styles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.centerLine,
        EzText(
          l10n.vaTheBad,
          style: EzConfig.styles.bodyLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.centerLine,

        // Why we verify
        EzRichText(
          <InlineSpan>[
            EzInlineLink(
              Products.openUI.name,
              url: Uri.parse(Products.openUI.url),
              hint: l10n.gLearn(Products.openUI.name),
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
            ),
            EzPlainText(
              text: l10n.vaScamRisk,
              style: EzConfig.styles.bodyLarge,
            ),
          ],
          style: EzConfig.styles.bodyLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.centerLine,
        EzText(
          l10n.vaCheckIn,
          style: EzConfig.styles.bodyLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.spacer,

        // 1st party apps
        EzText(
          l10n.vaFirst,
          style: EzConfig.styles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Padding(
              padding: wrapPadding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  EzText(
                    Products.openUI.name,
                    style: EzConfig.styles.titleLarge,
                  ),
                  const OpenUILink(),
                ],
              ),
            ),
            Padding(
              padding: wrapPadding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  EzText(Products.sos.name, style: EzConfig.styles.titleLarge),
                  const SOSLink(),
                ],
              ),
            ),
          ],
        ),

        // 3rd party verified
        EzText(
          l10n.vaThird,
          style: EzConfig.styles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: loadingSize,
              width: loadingSize,
              child: EmpathyLoading(semantics: l10n.vaWaiting),
            ),
            EzText(
              l10n.vaWillYou,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        EzConfig.spacer,

        // Known scams
        EzText(
          l10n.vaKnown,
          style: EzConfig.styles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.margin,
        EzText(
          l10n.vaSoGood,
          style: EzConfig.styles.bodyLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.divider,

        // How (and why again) to submit
        EzRichText(
          <InlineSpan>[
            EzPlainText(
              text: l10n.vaPublished,
              style: EzConfig.styles.bodyLarge,
            ),
            EzInlineLink(
              l10n.gAnEmail,
              url: Uri.parse(
                  'mailto:$empathSupport?subject=Sharing%20an%20EFUI%20app'),
              hint: l10n.gEmailHint,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
            ),
            EzPlainText(
              text: l10n.vaDoNoHarm,
              style: EzConfig.styles.bodyLarge,
            )
          ],
          style: EzConfig.styles.bodyLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.centerLine,

        // Closing statements
        EzText(
          l10n.vaPrivateFree,
          style: EzConfig.styles.bodyLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.centerLine,
        EzText(
          l10n.vaDoYourPart,
          style: EzConfig.styles.bodyLarge,
          textAlign: TextAlign.center,
        ),

        EzConfig.separator,
        const EzTranslationsPendingNotice(),
      ])),
      fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
    );
  }
}
