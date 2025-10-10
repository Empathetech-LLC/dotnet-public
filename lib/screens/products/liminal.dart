/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class LiminalScreen extends StatefulWidget {
  const LiminalScreen({super.key});

  @override
  State<LiminalScreen> createState() => _LiminalScreenState();
}

class _LiminalScreenState extends State<LiminalScreen> {
  // Gather the fixed theme data //

  final EdgeInsets wrapPadding = EzInsets.wrap(EzConfig.get(spacingKey));
  late final double imageWidth = ezImageSize(context) * 1.5;

  late final Lang l10n = Lang.of(context)!;

  // Return the build //

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return DotnetScaffold(
      EzScreen(EzScrollView(mainAxisSize: MainAxisSize.min, children: <Widget>[
        // Headline
        EzLink(
          Products.liminal.name,
          url: Uri.parse(liminalSource),
          hint: l10n.gRepoHint,
          style: textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
        EzText(
          l10n.llDescription,
          semanticsLabel: l10n.llDescriptionFix,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        ezCenterLine,

        // In dev
        EzText(
          l10n.llInDev,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezCenterLine,
        EzRichText(
          <InlineSpan>[
            EzPlainText(
              text: l10n.llBut,
              style: textTheme.bodyLarge,
            ),
            EzInlineLink(
              Products.openUI.name,
              url: Uri.parse(Products.openUI.url),
              hint: l10n.gLearn(Products.openUI.name),
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            EzPlainText(
              text: l10n.llWhimsy,
              style: textTheme.bodyLarge,
            ),
          ],
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezSpacer,

        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            Padding(
              padding: wrapPadding,
              child: Tooltip(
                message: '${l10n.llTheHood}\n${l10n.gImageCredit(crosby)}',
                child: EzImage(
                  width: imageWidth,
                  image: theHoodImage,
                  semanticLabel: l10n.llTheHood,
                ),
              ),
            ),
            Padding(
              padding: wrapPadding,
              child: Tooltip(
                message: '${l10n.llLasRosas}\n${l10n.gImageCredit(mike)}',
                child: EzImage(
                  width: imageWidth,
                  image: lasRosasImage,
                  semanticLabel: l10n.llLasRosas,
                ),
              ),
            ),
            Padding(
              padding: wrapPadding,
              child: Tooltip(
                message:
                    '${l10n.llFrogAndPigs}\n${l10n.gImageCredit(nikkolas)}',
                child: EzImage(
                  width: imageWidth,
                  image: laGrenouilleImage,
                  semanticLabel: l10n.llFrogAndPigs,
                ),
              ),
            ),
          ],
        ),
        ezSpacer,

        // Pricing && contact
        EzText(
          l10n.llModel,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezCenterLine,

        EzRichText(<InlineSpan>[
          EzInlineLink(
            l10n.gReachOut,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(teamURL),
            hint: l10n.gTeamHint,
          ),
          EzPlainText(
            text: l10n.psLearnMore,
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),

        ezSeparator,
        const EzTranslationsPendingNotice(),
      ])),
      fabs: const <Widget>[SettingsFAB()],
    );
  }
}
