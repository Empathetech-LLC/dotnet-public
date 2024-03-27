import './utils.dart';

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

    final EzSpacer padder = EzSpacer(padding);

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
              child: EzLinkImage(
                image: const AssetImage(fahIconPath),
                url: Uri.parse(faHLink),
                semanticLabel: l10n.gFahIconHint,
                tooltip: faHLink,
              ),
            ),
            EzSwapSpacer(padding),

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
                    text: l10n.fahIntro,
                    style: bodyStyle,
                    semanticsLabel: l10n.fahIntroFix,
                  ),
                  EzInlineLink(
                    l10n.tsPageTitle.toLowerCase(),
                    style: bodyStyle,
                    textAlign: TextAlign.center,
                    url: Uri.parse(empathFoldingTeam),
                    semanticsLabel: l10n.fahTeamHint,
                    tooltip: empathFoldingTeam,
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
