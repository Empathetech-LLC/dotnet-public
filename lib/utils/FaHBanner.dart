import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class FaHBanner extends StatelessWidget {
  final TextStyle? titleStyle;
  final TextStyle? bodyStyle;

  const FaHBanner({
    required this.titleStyle,
    required this.bodyStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double padding = EzConfig.get(paddingKey);

    final EzSpacer padder = EzSpacer(padding);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Description && links //

        EzRowCol.sym(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.textScalerOf(context).scale(imageSize),
              ),
              child: EzLinkImage(
                image: const AssetImage(fahIconPath),
                url: Uri.parse(faHLink),
                semanticLabel: Lang.of(context)!.gFahIconHint,
                tooltip: faHLink,
              ),
            ),
            EzSwapSpacer(padding),

            // External links && info
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Lang.of(context)!.fahJoin,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                ),
                EzRichText([
                  EzPlainText(
                    Lang.of(context)!.fahIntro,
                    style: bodyStyle,
                    semanticsLabel: Lang.of(context)!.fahIntroFix,
                  ),
                  EzInlineLink(
                    Lang.of(context)!.tsPageTitle.toLowerCase(),
                    style: bodyStyle,
                    textAlign: TextAlign.center,
                    url: Uri.parse(EmpathetechFoldingTeam),
                    semanticsLabel: Lang.of(context)!.fahTeamHint,
                    tooltip: EmpathetechFoldingTeam,
                  ),
                ], textAlign: TextAlign.center),
                padder,
                EzLink(
                  Lang.of(context)!.fahWhatQ,
                  style: bodyStyle,
                  textAlign: TextAlign.center,
                  url: Uri.parse(aboutFaHLink),
                  semanticsLabel: Lang.of(context)!.fahWhatQHint,
                  tooltip: aboutFaHLink,
                ),
              ],
            ),
          ],
        ),
        padder,

        // "Live" stats //
        Text(
          Lang.of(context)!.fahStats,
          style: bodyStyle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
