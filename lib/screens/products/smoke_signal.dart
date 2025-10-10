/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SmokeSignalScreen extends StatefulWidget {
  const SmokeSignalScreen({super.key});

  @override
  State<SmokeSignalScreen> createState() => _SmokeSignalScreenState();
}

class _SmokeSignalScreenState extends State<SmokeSignalScreen> {
  // Gather the fixed theme data //

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);

  late final double imageSize = ezImageSize(context);

  late final Lang l10n = Lang.of(context)!;

  // Return the build //

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return DotnetScaffold(
      EzScreen(EzScrollView(mainAxisSize: MainAxisSize.min, children: <Widget>[
        // Headline
        EzText(
          smokeSignal,
          style: textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),
        ezMargin,

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
        ezSpacer,

        // Description
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.ssPreview1,
            style: textTheme.bodyLarge,
            semanticsLabel: l10n.ssPreview1Fix,
          ),
          EzInlineLink(
            smokeSignal,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(smokeSignalSource),
            hint: smokeSignalSource,
          ),
          EzPlainText(
            text: l10n.ssPreview2,
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        ezCenterLine,

        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.ssPreview3,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            'Activity Pub.',
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse('https://www.w3.org/TR/activitypub/'),
            hint: l10n.ssAPHint,
          ),
        ], textAlign: TextAlign.center),
        ezCenterLine,

        // Collaboration call-out
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
