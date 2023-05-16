import 'utils.dart';
import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'dart:math';
import 'package:flutter/material.dart';

class FAHBanner extends StatelessWidget {
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final TextStyle? contentLinkStyle;

  const FAHBanner({
    required this.titleStyle,
    required this.contentStyle,
    required this.contentLinkStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Description && links //

        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            // Scales with text
            Image(
              image: const AssetImage(fahIconPath),
              width: 2.0 *
                  (CircleAvatarRadius *
                      sqrt(MediaQuery.of(context).textScaleFactor)),
              height: 2.0 *
                  (CircleAvatarRadius *
                      sqrt(MediaQuery.of(context).textScaleFactor)),
            ),
            EzSpacer.row(spacer),

            // External links && info
            EzSelectableText.rich(TextSpan(children: [
              TextSpan(
                text: 'Join the Fold!\n',
                style: titleStyle,
              ),
              TextSpan(
                text: 'Empathetech has a folding@home ',
                style: contentStyle,
              ),
              EzWebLink(
                text: 'team\n',
                recognizer: EzWebLink.onTap(
                  url: Uri.parse(EmpathetechFoldingTeam),
                ),
                style: contentLinkStyle,
              ),
              EzLink(
                text: '\nWhat\'s folding@home?\n',
                recognizer: EzLink.onTap(
                  action: () => pushScreen(
                    context: context,
                    screen: const FoldingScreen(),
                  ),
                ),
                style: contentLinkStyle,
              ),
            ])),
          ],
        ),
        EzSpacer(0.5 * spacer),

        // "Live" stats //
        EzSelectableText(
          'Together, we\'ve earned over 100 million points\nPutting Empathetech in the top 5k of all teams worldwide!',
          style: contentStyle,
        ),
      ],
    );
  }
}
