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
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);

  late final double imageSize = ezImageSize(context);

  late final Lang l10n = Lang.of(context)!;
  late final TextTheme textTheme = Theme.of(context).textTheme;

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      EzScreen(
        EzScrollView(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (spacing > margin) EzSpacer(space: spacing - margin),

            // Icon
            Container(
              constraints: EzBox.sym(imageSize),
              child: EzLinkWidget(
                url: Uri.parse(smokeSignalSource),
                tooltip: l10n.gRepoHint,
                label: l10n.gIconLabel(smokeSignal),
                hint: l10n.gRepoHint,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(imageSize),
                  child:
                      const Image(image: smokeSignalImage, fit: BoxFit.contain),
                ),
              ),
            ),
            spacer,

            // Description
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.psSignalPreview1,
                style: textTheme.bodyLarge,
                semanticsLabel: l10n.psSignalPreview1Fix,
              ),
              EzInlineLink(
                smokeSignal,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(smokeSignalSource),
                hint: smokeSignalSource,
              ),
              EzPlainText(
                text: l10n.psSignalPreview2,
                style: textTheme.bodyLarge,
              ),
            ], textAlign: TextAlign.center),
            spacer,

            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.psSignalPreview3,
                style: textTheme.bodyLarge,
              ),
              EzInlineLink(
                'Activity Pub.',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse('https://www.w3.org/TR/activitypub/'),
                hint: l10n.psAPHint,
              ),
            ], textAlign: TextAlign.center),
            spacer,

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
            separator,

            const EzTranslationsPendingNotice(),
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
