/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../../export.dart';
import '../../../utils/export.dart';
import '../../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class TranslationsScreen extends StatelessWidget {
  TranslationsScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  Widget build(BuildContext context) => DotnetScaffold(
        EzScreen(EzScrollView(children: <Widget>[
          EzHeader(),

          // Opener //

          EzText(l10n.trWonder, textAlign: TextAlign.center),
          EzConfig.centerLine,
          EzConfig.centerLine,

          // Process //

          // 1
          EzRichText(<InlineSpan>[
            EzPlainText(text: l10n.trFirst, style: EzConfig.styles.bodyLarge),
            EzInlineLink(
              l10n.trSource,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(
                  'https://github.com/Empathetech-LLC/dotnet-public/blob/main/lib/l10n/lang_en_US.arb'),
              hint: EzConfig.l10n.gOpenLink,
            ),
            EzPlainText(text: '.', style: EzConfig.styles.bodyLarge),
          ], textAlign: TextAlign.center),
          EzConfig.centerLine,

          // 2
          EzRichText(<InlineSpan>[
            EzPlainText(text: l10n.trSecond, style: EzConfig.styles.bodyLarge),
            EzInlineLink(
              'Gemini',
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse('https://gemini.google.com/app'),
              hint: EzConfig.l10n.gOpenLink,
            ),
            EzPlainText(text: l10n.trBeNice, style: EzConfig.styles.bodyLarge),
          ], textAlign: TextAlign.center),
          EzConfig.centerLine,

          // 3
          EzRichText(<InlineSpan>[
            EzPlainText(text: l10n.trThird, style: EzConfig.styles.bodyLarge),
            EzInlineLink(
              l10n.trScript,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse('https://github.com/empathictech/l10n-script/blob/main/audit-l10n.sh'),
              hint: EzConfig.l10n.gOpenLink,
            ),
            EzPlainText(text: '.\n', style: EzConfig.styles.bodyLarge),
            EzPlainText(text: l10n.trReverse, style: EzConfig.styles.bodyLarge),
          ], textAlign: TextAlign.center),
          EzConfig.centerLine,

          // 4
          EzText(l10n.trFourth, textAlign: TextAlign.center),
          EzConfig.centerLine,

          // 5
          EzRichText(<InlineSpan>[
            EzPlainText(text: l10n.trFifth, style: EzConfig.styles.bodyLarge),
            EzInlineLink(
              Products.sos.name,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(
                  'https://github.com/Empathetech-LLC/sos/blob/main/lib/l10n/lang_en_US.arb'),
              hint: EzConfig.l10n.gOpenLink,
            ),
            EzPlainText(text: l10n.trBy, style: EzConfig.styles.bodyLarge),
            EzInlineLink(
              l10n.trHumans,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(teamURL),
              hint: l10n.gTeamHint,
            ),
            EzPlainText(text: '.', style: EzConfig.styles.bodyLarge),
          ], textAlign: TextAlign.center),
          EzConfig.centerLine,
          EzConfig.centerLine,

          // Contribution call-out //

          EzText(l10n.trProcess, textAlign: TextAlign.center),
          EzConfig.centerLine,

          EzRichText(<InlineSpan>[
            EzPlainText(text: l10n.trSpeaking, style: EzConfig.styles.bodyLarge),
            EzInlineLink(
              l10n.sosContributing,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(contributeURL),
              hint: l10n.gContributeHint,
            ),
            EzPlainText(text: l10n.trEither, style: EzConfig.styles.bodyLarge),
          ], textAlign: TextAlign.center),
          const EzFooter(),
        ])),
        fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
      );
}
