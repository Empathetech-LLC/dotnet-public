/* website
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import 'package:ywt_private/ywt_private.dart' as ywt;

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';

class FaHBanner extends StatelessWidget {
  final EzCP config;

  /// Fold proteins as Ez as folding clothes
  const FaHBanner(this.config, {super.key});

  @override
  Widget build(BuildContext context) => EzCol(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Description && links //

          EzRowCol.sym(
            config,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Icon
              Container(
                constraints: EzBox.sym(ezImageSize(config, context: context)),
                child: EzImageLink(
                  config,
                  image: fahImage,
                  fit: BoxFit.contain,
                  url: Uri.parse(faHLink),
                  label: l10n(config).gIconLabel('Folding at Home') + l10n(config).fahIconLabel,
                  hint: l10n(config).fahIconHint,
                  tooltip: faHLink,
                ),
              ),
              config.swapSpacer,

              // External links && info
              EzTextBackground(
                config,
                text: EzCol(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(l10n(config).fahJoin,
                        style: config.titleStyle, textAlign: TextAlign.center),
                    config.margin,
                    EzRichText(
                      config,
                      children: <InlineSpan>[
                        EzPlainText(text: l10n(config).fahIntro1, style: config.bodyStyle),
                        EzInlineLink(
                          config,
                          text: ywtName,
                          style: config.bodyStyle,
                          textAlign: TextAlign.center,
                          url: Uri.parse(ywt.ywtFoldingTeam),
                          hint: l10n(config).fahTeamHint,
                          tooltip: ywt.ywtFoldingTeam,
                        ),
                        EzPlainText(text: l10n(config).fahIntro2, style: config.bodyStyle),
                      ],
                      textAlign: TextAlign.center,
                      textBackground: false,
                    ),
                    EzRichText(
                      config,
                      children: <InlineSpan>[
                        EzPlainText(text: l10n(config).fahWhats, style: config.bodyStyle),
                        EzInlineLink(
                          config,
                          text: l10n(config).fahName,
                          style: config.bodyStyle,
                          textAlign: TextAlign.center,
                          url: Uri.parse(aboutFaHLink),
                          hint: l10n(config).fahNameHint,
                          tooltip: aboutFaHLink,
                        ),
                      ],
                      textAlign: TextAlign.center,
                      textBackground: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
          config.spacer,

          // "Live" stats //
          EzText(
            config,
            text: l10n(config).fahStats,
            style: config.bodyStyle,
            textAlign: TextAlign.center,
          ),
        ],
      );
}
