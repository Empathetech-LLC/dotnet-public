/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({super.key});

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {
  // Gather the fixed theme data //

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);

  late final EdgeInsets wrapPadding = EdgeInsets.only(
    left: spacing,
    right: spacing,
    bottom: spacing * 2,
  );
  late final double loadingSize = ezImageSize(context);

  late final Lang l10n = Lang.of(context)!;

  // Return the build //

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return DotnetScaffold(
      EzScreen(EzScrollView(mainAxisSize: MainAxisSize.min, children: <Widget>[
        if (spacing > margin) EzSpacer(space: spacing - margin),

        // Headline
        EzText(
          l10n.vaIntro,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        EzText(
          l10n.vaTheBad,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezCenterLine,

        // Why we verify
        EzRichText(
          <InlineSpan>[
            EzInlineLink(
              Products.openUI.name,
              url: Uri.parse(Products.openUI.url),
              hint: l10n.gLearn(Products.openUI.name),
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            EzPlainText(
              text: l10n.vaScamRisk,
              style: textTheme.bodyLarge,
            ),
          ],
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezCenterLine,
        EzText(
          l10n.vaCheckIn,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezSpacer,

        // 1st party apps
        EzText(
          l10n.vaFirst,
          style: textTheme.headlineLarge,
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
                  EzText(Products.openUI.name, style: textTheme.titleLarge),
                  const OpenUILink(),
                ],
              ),
            ),
            Padding(
              padding: wrapPadding,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  EzText(Products.sos.name, style: textTheme.titleLarge),
                  const SOSLink(),
                ],
              ),
            ),
          ],
        ),

        // 3rd party verified
        EzText(
          l10n.vaThird,
          style: textTheme.headlineLarge,
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
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        ezSpacer,

        // Known scams
        EzText(
          l10n.vaKnown,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        ezMargin,
        EzText(
          l10n.vaSoGood,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezDivider,

        // How (and why again) to submit
        EzRichText(
          <InlineSpan>[
            EzPlainText(
              text: l10n.vaPublished,
              style: textTheme.bodyLarge,
            ),
            EzInlineLink(
              l10n.gAnEmail,
              url: Uri.parse(
                  'mailto:$empathSupport?subject=Sharing%20an%20EFUI%20app'),
              hint: l10n.gEmailHint,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            EzPlainText(
              text: l10n.vaDoNoHarm,
              style: textTheme.bodyLarge,
            )
          ],
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezCenterLine,

        // Closing statements
        EzText(
          l10n.vaPrivateFree,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezCenterLine,
        EzText(
          l10n.vaDoYourPart,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),

        ezSeparator,
        const EzTranslationsPendingNotice(),
      ])),
      fabs: const <Widget>[SettingsFAB()],
    );
  }
}
