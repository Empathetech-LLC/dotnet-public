/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class UserProducts extends StatelessWidget {
  final TextTheme textTheme;
  final Lang l10n;
  final Key signalKey;

  const UserProducts({
    super.key,
    required this.textTheme,
    required this.l10n,
    required this.signalKey,
  });

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();
  static const EzDivider divider = EzDivider();

  @override
  Widget build(BuildContext context) {
    final EzMargin margin = EzMargin();
    final double imageSize = ezImageSize(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // InstaSOS //

        // Headline
        Text(
          sosName,
          semanticsLabel: sosLabel,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        margin,

        // Icon link(s)
        const SOSLink(),
        separator,

        // Description
        Text(
          l10n.psSOSDescription,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        spacer,

        // README link
        EzLink(
          l10n.psDocsLabel,
          url: Uri.parse(
              'https://github.com/Empathetech-LLC/sos/blob/main/README.md#using'),
          hint: l10n.psDocsHint,
          textAlign: TextAlign.center,
        ),
        spacer,

        // Donation call-out
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psSafeSOS,
            style: textTheme.bodyLarge,
          ),
          EzPlainText(
            text: l10n.psFreeSOS,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            l10n.psOpenSource,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(sosSource),
            hint: l10n.gRepoHint,
          ),
          EzPlainText(
            text: '.',
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psConsider,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            l10n.psContributing,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(contributeURL),
            hint: l10n.gContributeHint,
          ),
          EzPlainText(
            text: l10n.psSAPS,
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        divider,

        // Smoke Signal //

        // Headline
        Text(
          l10n.psComingSoon,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
          key: signalKey, // For scrolling
        ),
        margin,

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
              child: const Image(image: smokeSignalImage, fit: BoxFit.contain),
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
      ],
    );
  }
}
