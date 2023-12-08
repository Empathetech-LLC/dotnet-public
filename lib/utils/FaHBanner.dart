import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class FaHBanner extends StatelessWidget {
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;

  const FaHBanner({
    required this.titleStyle,
    required this.contentStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double padding = EzConfig.get(paddingKey);

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
            EzLinkImage(
              url: Uri.parse(faHLink),
              image: const AssetImage(fahIconPath),
              semanticLabel: Lang.of(context)!.gFahIconHint,
              width: 2.0 *
                  MediaQuery.textScalerOf(context).scale(CircleAvatarRadius),
              height: 2.0 *
                  MediaQuery.textScalerOf(context).scale(CircleAvatarRadius),
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
                EzRichText(
                  [
                    EzPlainText(
                      Lang.of(context)!.fahIntro,
                      context: context,
                      style: contentStyle,
                      semantics: Lang.of(context)!.fahIntroFix,
                    ),
                    EzInlineLink(
                      Lang.of(context)!.tsPageTitle.toLowerCase(),
                      style: contentStyle,
                      url: Uri.parse(EmpathetechFoldingTeam),
                      semanticsLabel: Lang.of(context)!.fahTeamHint,
                    ),
                  ],
                  textAlign: TextAlign.center,
                ),
                Text("", style: contentStyle, textAlign: TextAlign.center),
                EzLink(
                  Lang.of(context)!.fahWhatQ,
                  style: contentStyle,
                  textAlign: TextAlign.center,
                  url: Uri.parse(aboutFaHLink),
                  semanticsLabel: Lang.of(context)!.fahWhatQHint,
                ),
              ],
            ),
          ],
        ),
        EzSpacer(padding),

        // "Live" stats //
        Text(
          Lang.of(context)!.fahStats,
          style: contentStyle,
          textAlign: TextAlign.center,
          semanticsLabel: Lang.of(context)!.fahStatsFix,
        ),
      ],
    );
  }
}
