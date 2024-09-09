/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class CharityOrgs extends StatelessWidget {
  final TextStyle? titleStyle;

  const CharityOrgs({super.key, required this.titleStyle});

  // Define custom Widgets //

  /// Return the Charity's logo [Image] with a [Colors.white] background
  Widget logoImage({
    required double width,
    required String imagePath,
    required String url,
    required String semanticLabel,
    Color color = Colors.white,
  }) {
    return Container(
      constraints: BoxConstraints(maxWidth: width),
      color: color,
      child: EzLinkImageProvider(
        image: AssetImage(imagePath),
        url: Uri.parse(url),
        semanticLabel: semanticLabel,
        tooltip: url,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Gather theme data //

    const EzSwapSeparator separator = EzSwapSeparator();

    final Lang l10n = Lang.of(context)!;

    // Return the build //

    final double imageWidth = MediaQuery.textScalerOf(context).scale(imageSize);

    return EzRowCol.sym(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // AnitaB.org
        logoImage(
          width: imageWidth,
          url: anitaBorgLink,
          imagePath: anitaBorgIconPath,
          semanticLabel: l10n.gAnitaBorgIconHint,
        ),
        separator,

        // Code.org
        logoImage(
          width: imageWidth,
          url: codeDotOrgLink,
          imagePath: codeDotOrgIconPath,
          semanticLabel: l10n.gCodeDotOrgIconHint,
        ),
        separator,

        // World Savvy
        logoImage(
          width: imageWidth,
          url: worldSavvyLink,
          imagePath: worldSavvyIconPath,
          semanticLabel: l10n.gWorldSavvyIconHint,
          color: Colors.transparent,
        ),
      ],
    );
  }
}
