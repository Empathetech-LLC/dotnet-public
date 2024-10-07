/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class FaHBanner extends StatelessWidget {
  const FaHBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final double margin = EzConfig.get(marginKey);
    final EzSpacer titleMargin = EzSpacer(space: margin);

    final Lang l10n = Lang.of(context)!;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Description && links //

        EzRowCol.sym(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Icon
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.textScalerOf(context).scale(imageSize),
              ),
              child: EzLinkImageProvider(
                image: fahImage,
                url: Uri.parse(faHLink),
                semanticLabel: l10n.gFahIconHint,
                tooltip: faHLink,
              ),
            ),
            EzSwapSpacer(space: margin),

            // External links && info
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  l10n.fahJoin,
                  style: textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                EzRichText(<InlineSpan>[
                  EzPlainText(
                    text: l10n.fahIntro1,
                    style: textTheme.bodyLarge,
                  ),
                  EzInlineLink(
                    empathetech,
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                    url: Uri.parse(empathFoldingTeam),
                    semanticsLabel: l10n.fahTeamHint,
                    richSemanticsLabel: empathetic,
                    tooltip: empathFoldingTeam,
                  ),
                  EzPlainText(
                    text: l10n.fahIntro2,
                    style: textTheme.bodyLarge,
                  ),
                ], textAlign: TextAlign.center),
                titleMargin,
                EzLink(
                  l10n.fahWhatQ,
                  style: textTheme.bodyLarge!,
                  textAlign: TextAlign.center,
                  url: Uri.parse(aboutFaHLink),
                  semanticsLabel: l10n.fahWhatQHint,
                  tooltip: aboutFaHLink,
                ),
              ],
            ),
          ],
        ),
        titleMargin,

        // "Live" stats //
        Text(
          l10n.fahStats,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
