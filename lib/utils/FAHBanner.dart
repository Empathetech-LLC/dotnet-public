import 'utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FAHBanner extends StatelessWidget {
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final TextStyle? contentLinkStyle;
  final bool limitedSpace;

  const FAHBanner({
    required this.titleStyle,
    required this.contentStyle,
    required this.contentLinkStyle,
    this.limitedSpace = false,
  });

  @override
  Widget build(BuildContext context) {
    final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Description && links //

        EzRowCol(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          limitedSpace: limitedSpace,
          children: [
            // Icon
            // Scales with text
            EzImage(
              image: const AssetImage(fahIconPath),
              semanticLabel: 'Folding at home icon',
              width: 2.0 *
                  (CircleAvatarRadius *
                      sqrt(MediaQuery.of(context).textScaleFactor)),
              height: 2.0 *
                  (CircleAvatarRadius *
                      sqrt(MediaQuery.of(context).textScaleFactor)),
            ),
            EzSpacer.swap(spacer, limitedSpace: limitedSpace),

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
                url: Uri.parse(EmpathetechFoldingTeam),
                style: contentLinkStyle,
                semanticsLabel:
                    'Open the Empathetech Folding at Home team page',
              ),
              EzLink(
                text: '\nWhat\'s folding@home?\n',
                action: () => context.goNamed('folding'),
                style: contentLinkStyle,
                semanticsLabel: 'Open a local FAQ about Folding at Home',
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
