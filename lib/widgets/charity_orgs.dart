import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class CharityOrgs extends StatelessWidget {
  final TextStyle? titleStyle;
  final TextStyle? bodyStyle;

  const CharityOrgs({
    super.key,
    required this.titleStyle,
    required this.bodyStyle,
  });

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
    final bool limitedSpace = ScreenSpace.of(context)?.isLimited ?? false;

    final double space = EzConfig.get(spacingKey);

    final EzSpacer spacer = EzSpacer(space);
    final EzSpacer rowSpacer = EzSpacer.row(space);
    final EzSpacer separator = EzSpacer(space * 2);

    final double twoThirdsWidth = widthOf(context) * (2 / 3);
    final double sharedColWidth = (widthOf(context) - 2 * space) * 0.3;
    final double imageWidth = MediaQuery.textScalerOf(context).scale(imageSize);

    final Lang l10n = Lang.of(context)!;

    final List<Widget> anitaB = <Widget>[
      logoImage(
        width: imageWidth,
        url: anitaBorgLink,
        imagePath: anitaBorgIconPath,
        semanticLabel: l10n.gAnitaBorgIconHint,
      ),
      spacer,
      EzLink(
        'AnitaB.org',
        style: titleStyle,
        textAlign: TextAlign.center,
        url: Uri.parse(anitaBorgCNavLink),
        semanticsLabel: l10n.fpsAnitaCNavHint,
        tooltip: anitaBorgCNavLink,
      ),
      spacer,
      Text(
        l10n.fpsAnitaMission,
        style: bodyStyle,
        textAlign: TextAlign.center,
      ),
    ];

    final List<Widget> codeDotOrg = <Widget>[
      logoImage(
        width: imageWidth,
        url: codeDotOrgLink,
        imagePath: codeDotOrgIconPath,
        semanticLabel: l10n.gCodeDotOrgIconHint,
      ),
      spacer,
      EzLink(
        'code.org',
        style: titleStyle,
        textAlign: TextAlign.center,
        url: Uri.parse(codeDotOrgCNavLink),
        semanticsLabel: l10n.fpsCodeCNavHint,
        tooltip: codeDotOrgCNavLink,
      ),
      spacer,
      Text(
        l10n.fpsCodeMission,
        style: bodyStyle,
        textAlign: TextAlign.center,
      ),
    ];

    final List<Widget> worldSavvy = <Widget>[
      logoImage(
        width: imageWidth,
        url: worldSavvyLink,
        imagePath: worldSavvyIconPath,
        semanticLabel: l10n.gWorldSavvyIconHint,
        color: Colors.transparent,
      ),
      spacer,
      EzLink(
        'World Savvy',
        style: titleStyle,
        textAlign: TextAlign.center,
        url: Uri.parse(worldSavvyCNavLink),
        semanticsLabel: l10n.fpsSavvyCNavHint,
        tooltip: worldSavvyCNavLink,
      ),
      spacer,
      Text(
        l10n.fpsSavvyMission,
        style: bodyStyle,
        textAlign: TextAlign.center,
      ),
    ];

    return limitedSpace
        ? ConstrainedBox(
            constraints: BoxConstraints(maxWidth: twoThirdsWidth),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ...anitaB,
                separator,
                ...codeDotOrg,
                separator,
                ...worldSavvy,
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // AnitaB.org
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: sharedColWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: anitaB,
                ),
              ),
              rowSpacer,

              // Code.org
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: sharedColWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: codeDotOrg,
                ),
              ),
              rowSpacer,

              // World Savvy
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: sharedColWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: worldSavvy,
                ),
              ),
            ],
          );
  }
}
