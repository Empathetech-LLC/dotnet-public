import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class CharityOrgs extends StatelessWidget {
  final TextStyle? titleStyle;
  final TextStyle? bodyStyle;

  const CharityOrgs({
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
      child: EzLinkImage(
        image: AssetImage(imagePath),
        url: Uri.parse(url),
        semanticLabel: semanticLabel,
        tooltip: url,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool limitedSpace = ScreenSpace.of(context)?.isLimited ?? false;

    final double buttonSpace = EzConfig.get(buttonSpacingKey);

    final EzSpacer buttonSpacer = EzSpacer(buttonSpace);
    final EzSpacer rowButtonSpacer = EzSpacer.row(buttonSpace);
    final EzSpacer textSpacer = EzSpacer(EzConfig.get(textSpacingKey));

    double twoThirdsWidth = widthOf(context) * (2 / 3);
    double sharedColWidth = (widthOf(context) - 2 * buttonSpace) * 0.3;
    double imageWidth = MediaQuery.textScalerOf(context).scale(imageSize);

    final List<Widget> anitaB = [
      logoImage(
        width: imageWidth,
        url: anitaBorgLink,
        imagePath: anitaBorgIconPath,
        semanticLabel: Lang.of(context)!.gAnitaBorgIconHint,
      ),
      buttonSpacer,
      EzLink(
        'AnitaB.org',
        style: titleStyle,
        textAlign: TextAlign.center,
        url: Uri.parse(anitaBorgCNavLink),
        semanticsLabel: Lang.of(context)!.fpsAnitaCNavHint,
        tooltip: anitaBorgCNavLink,
      ),
      buttonSpacer,
      Text(
        Lang.of(context)!.fpsAnitaMission,
        style: bodyStyle,
        textAlign: TextAlign.center,
      ),
    ];

    final List<Widget> codeDotOrg = [
      logoImage(
        width: imageWidth,
        url: codeDotOrgLink,
        imagePath: codeDotOrgIconPath,
        semanticLabel: Lang.of(context)!.gCodeDotOrgIconHint,
      ),
      buttonSpacer,
      EzLink(
        'code.org',
        style: titleStyle,
        textAlign: TextAlign.center,
        url: Uri.parse(codeDotOrgCNavLink),
        semanticsLabel: Lang.of(context)!.fpsCodeCNavHint,
        tooltip: codeDotOrgCNavLink,
      ),
      buttonSpacer,
      Text(
        Lang.of(context)!.fpsCodeMission,
        style: bodyStyle,
        textAlign: TextAlign.center,
      ),
    ];

    final List<Widget> worldSavvy = [
      logoImage(
        width: imageWidth,
        url: worldSavvyLink,
        imagePath: worldSavvyIconPath,
        semanticLabel: Lang.of(context)!.gWorldSavvyIconHint,
        color: Colors.transparent,
      ),
      buttonSpacer,
      EzLink(
        'World Savvy',
        style: titleStyle,
        textAlign: TextAlign.center,
        url: Uri.parse(worldSavvyCNavLink),
        semanticsLabel: Lang.of(context)!.fpsSavvyCNavHint,
        tooltip: worldSavvyCNavLink,
      ),
      buttonSpacer,
      Text(
        Lang.of(context)!.fpsSavvyMission,
        style: bodyStyle,
        textAlign: TextAlign.center,
      ),
    ];

    return limitedSpace
        ? ConstrainedBox(
            constraints: BoxConstraints(maxWidth: twoThirdsWidth),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...anitaB,
                textSpacer,
                ...codeDotOrg,
                textSpacer,
                ...worldSavvy,
              ],
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AnitaB.org
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: sharedColWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: anitaB,
                ),
              ),
              rowButtonSpacer,

              // Code.org
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: sharedColWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: codeDotOrg,
                ),
              ),
              rowButtonSpacer,

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
