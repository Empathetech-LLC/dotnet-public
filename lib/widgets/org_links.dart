/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class FaHBanner extends StatelessWidget {
  /// Fold proteins as Ez as folding clothes
  const FaHBanner({super.key});

  @override
  Widget build(BuildContext context) {
    // Gather theme data //

    const EzSpacer spacer = EzSpacer();

    final Lang l10n = Lang.of(context)!;

    final TextTheme textTheme = Theme.of(context).textTheme;

    // Return the build //

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
              constraints: EzBox.sym(ezImageSize(context)),
              child: EzImageLink(
                image: fahImage,
                fit: BoxFit.contain,
                url: Uri.parse(faHLink),
                label: l10n.gIconLabel('Folding at Home') + l10n.fahIconLabel,
                hint: l10n.fahIconHint,
                tooltip: faHLink,
              ),
            ),
            const EzSwapSpacer(),

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
                    hint: l10n.fahTeamHint,
                    richLabel: empathetic,
                    tooltip: empathFoldingTeam,
                  ),
                  EzPlainText(
                    text: l10n.fahIntro2,
                    style: textTheme.bodyLarge,
                  ),
                ], textAlign: TextAlign.center),
                spacer,
                EzLink(
                  l10n.fahWhatQ,
                  style: textTheme.bodyLarge!,
                  textAlign: TextAlign.center,
                  url: Uri.parse(aboutFaHLink),
                  hint: l10n.fahWhatQHint,
                  tooltip: aboutFaHLink,
                ),
              ],
            ),
          ],
        ),
        spacer,

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
