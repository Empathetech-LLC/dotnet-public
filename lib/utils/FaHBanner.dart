import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'dart:math';
import 'package:flutter/material.dart';

class FaHBanner extends StatelessWidget {
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final TextStyle? contentLinkStyle;

  const FaHBanner({
    required this.titleStyle,
    required this.contentStyle,
    required this.contentLinkStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double spacer = EzConfig.instance.prefs[textSpacingKey];

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Description && links //

        EzRowCol(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            EzLinkImage(
              url: Uri.parse(faHLink),
              image: const AssetImage(fahIconPath),
              semanticLabel: Lang.of(context)!.gFahIconHint,
              width: 2.0 *
                  CircleAvatarRadius *
                  sqrt(MediaQuery.of(context).textScaleFactor),
              height: 2.0 *
                  CircleAvatarRadius *
                  sqrt(MediaQuery.of(context).textScaleFactor),
            ),

            EzSwapSpacer(spacer),

            // External links && info
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EzText(Lang.of(context)!.fahJoin, style: titleStyle),
                EzRichText([
                  EzPlainText(
                    Lang.of(context)!.fahIntro,
                    context: context,
                    style: contentStyle,
                    semantics: Lang.of(context)!.fahIntroFix,
                  ),
                  EzInlineLink(
                    Lang.of(context)!.tsPageTitle.toLowerCase(),
                    style: contentLinkStyle,
                    semanticsLabel: Lang.of(context)!.fahTeamHint,
                    url: Uri.parse(EmpathetechFoldingTeam),
                  ),
                ]),
                EzLink(
                  "\n${Lang.of(context)!.fahWhatQ}",
                  url: Uri.parse(aboutFaHLink),
                  style: contentLinkStyle,
                  semanticsLabel: Lang.of(context)!.fahWhatQHint,
                ),
              ],
            ),
          ],
        ),
        EzSpacer(0.5 * spacer),

        // "Live" stats //
        EzText(
          Lang.of(context)!.fahStats,
          style: contentStyle,
          semanticsLabel: Lang.of(context)!.fahStatsFix,
        ),
      ],
    );
  }
}
