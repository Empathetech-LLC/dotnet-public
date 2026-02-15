/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SmokeSignalScreen extends StatefulWidget {
  SmokeSignalScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  State<SmokeSignalScreen> createState() => _SmokeSignalScreenState();
}

class _SmokeSignalScreenState extends State<SmokeSignalScreen> {
  @override
  Widget build(BuildContext context) {
    final double imageSize = ezImageSize(context);

    return DotnetScaffold(
      EzScreen(EzScrollView(mainAxisSize: MainAxisSize.min, children: <Widget>[
        // Headline
        EzText(
          smokeSignal,
          style: EzConfig.styles.displayLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.margin,

        // Icon link
        Container(
          constraints: EzBox.sym(imageSize),
          child: EzLinkWidget(
            url: Uri.parse(smokeSignalSource),
            tooltip: l10n.gRepoHint,
            label: l10n.gIconLabel(smokeSignal),
            hint: l10n.gRepoHint,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(imageSize),
              child: const Image(image: smokeSignalImage, fit: BoxFit.contain),
            ),
          ),
        ),
        EzConfig.spacer,

        // Description
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.ssPreview1,
            style: EzConfig.styles.bodyLarge,
            semanticsLabel: l10n.ssPreview1Fix,
          ),
          EzInlineLink(
            smokeSignal,
            style: EzConfig.styles.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(smokeSignalSource),
            hint: smokeSignalSource,
          ),
          EzPlainText(
            text: l10n.ssPreview2,
            style: EzConfig.styles.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        EzConfig.centerLine,

        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.ssPreview3,
            style: EzConfig.styles.bodyLarge,
          ),
          EzInlineLink(
            'Activity Pub.',
            style: EzConfig.styles.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse('https://www.w3.org/TR/activitypub/'),
            hint: l10n.ssAPHint,
          ),
        ], textAlign: TextAlign.center),
        EzConfig.centerLine,

        // Collaboration call-out
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

        EzConfig.separator,
        const EzTranslationsPendingNotice(),
      ])),
      fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
    );
  }
}
