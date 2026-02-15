/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
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
  Widget build(BuildContext context) => Column(
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
              EzTextBackground(Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    l10n.fahJoin,
                    style: EzConfig.styles.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  EzConfig.margin,
                  EzRichText(<InlineSpan>[
                    EzPlainText(
                      text: l10n.fahIntro1,
                      style: EzConfig.styles.bodyLarge,
                    ),
                    EzInlineLink(
                      empathetech,
                      style: EzConfig.styles.bodyLarge,
                      textAlign: TextAlign.center,
                      url: Uri.parse(empathFoldingTeam),
                      hint: l10n.fahTeamHint,
                      richLabel: empathetic,
                      tooltip: empathFoldingTeam,
                    ),
                    EzPlainText(
                      text: l10n.fahIntro2,
                      style: EzConfig.styles.bodyLarge,
                    ),
                  ], textAlign: TextAlign.center, textBackground: false),
                  EzRichText(<InlineSpan>[
                    EzPlainText(
                      text: l10n.fahWhats,
                      style: EzConfig.styles.bodyLarge,
                    ),
                    EzInlineLink(
                      l10n.fahName,
                      style: EzConfig.styles.bodyLarge,
                      textAlign: TextAlign.center,
                      url: Uri.parse(aboutFaHLink),
                      hint: l10n.fahNameHint,
                      tooltip: aboutFaHLink,
                    ),
                  ], textAlign: TextAlign.center, textBackground: false),
                ],
              )),
            ],
          ),
          EzConfig.spacer,

          // "Live" stats //
          EzText(
            l10n.fahStats,
            style: EzConfig.styles.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      );
}
