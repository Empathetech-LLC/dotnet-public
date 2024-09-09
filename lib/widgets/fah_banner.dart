/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class FaHBanner extends StatelessWidget {
  final TextStyle? titleStyle;
  final TextStyle? bodyStyle;

  const FaHBanner({
    super.key,
    required this.titleStyle,
    required this.bodyStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double padding = EzConfig.get(paddingKey);

    final EzSpacer padder = EzSpacer(space: padding);

    final Lang l10n = Lang.of(context)!;

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
            EzSwapSpacer(space: padding),

            // External links && info
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  l10n.fahJoin,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
                EzRichText(<InlineSpan>[
                  EzPlainText(
                    text: l10n.fahIntro1,
                    style: bodyStyle,
                  ),
                  EzInlineLink(
                    empathetech,
                    style: bodyStyle,
                    textAlign: TextAlign.center,
                    url: Uri.parse(empathFoldingTeam),
                    semanticsLabel: l10n.fahTeamHint,
                    richSemanticsLabel: empathetic,
                    tooltip: empathFoldingTeam,
                  ),
                  EzPlainText(
                    text: l10n.fahIntro2,
                    style: bodyStyle,
                  ),
                ], textAlign: TextAlign.center),
                padder,
                EzLink(
                  l10n.fahWhatQ,
                  style: bodyStyle,
                  textAlign: TextAlign.center,
                  url: Uri.parse(aboutFaHLink),
                  semanticsLabel: l10n.fahWhatQHint,
                  tooltip: aboutFaHLink,
                ),
              ],
            ),
          ],
        ),
        padder,

        // "Live" stats //
        Text(
          l10n.fahStats,
          style: bodyStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
