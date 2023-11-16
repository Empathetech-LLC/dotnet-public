import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'dart:math';
import 'package:flutter/material.dart';

class CharityOrgs extends StatelessWidget {
  final TextStyle? titleLinkStyle;
  final TextStyle? contentStyle;

  const CharityOrgs({
    required this.titleLinkStyle,
    required this.contentStyle,
  });

  Widget logoImage({
    required double width,
    required String url,
    required String assetPath,
    required String semanticLabel,
    Color color = Colors.white,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: width),
      child: Container(
        color: color,
        child: EzLinkImage(
          url: Uri.parse(url),
          image: AssetImage(assetPath),
          semanticLabel: semanticLabel,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool limitedSpace = ScreenSpace.of(context)?.isLimited ?? false;

    final double buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];
    final double textSpacer = EzConfig.instance.prefs[textSpacingKey];

    double twoThirdsWidth = widthOf(context) * (2 / 3);
    double sharedColWidth = (widthOf(context) - 2 * buttonSpacer) * 0.3;
    double circleDiameter =
        2.0 * CircleAvatarRadius * sqrt(MediaQuery.of(context).textScaleFactor);

    final List<Widget> anitaB = [
      logoImage(
        width: circleDiameter,
        url: anitaBorgLink,
        assetPath: anitaBorgIconPath,
        semanticLabel: Lang.of(context)!.gAnitaBorgIconHint,
      ),
      EzSpacer(buttonSpacer),
      EzLink(
        'AnitaB.org',
        style: titleLinkStyle,
        url: Uri.parse(anitaBorgCNavLink),
        semanticsLabel: Lang.of(context)!.fpsAnitaCNavHint,
      ),
      EzSpacer(buttonSpacer),
      EzText(
        Lang.of(context)!.fpsAnitaMission,
        style: contentStyle,
      ),
    ];

    final List<Widget> codeOrg = [
      logoImage(
        width: circleDiameter,
        url: codeDotOrgLink,
        assetPath: codeDotOrgIconPath,
        semanticLabel: Lang.of(context)!.gCodeDotOrgIconHint,
      ),
      EzSpacer(buttonSpacer),
      EzLink(
        'code.org',
        style: titleLinkStyle,
        url: Uri.parse(codeDotOrgCNavLink),
        semanticsLabel: Lang.of(context)!.fpsCodeCNavHint,
      ),
      EzSpacer(buttonSpacer),
      EzText(
        Lang.of(context)!.fpsCodeMission,
        style: contentStyle,
      ),
    ];

    final List<Widget> worldSavvy = [
      logoImage(
        width: circleDiameter,
        url: worldSavvyLink,
        assetPath: worldSavvyIconPath,
        semanticLabel: Lang.of(context)!.gWorldSavvyIconHint,
        color: Colors.transparent,
      ),
      EzSpacer(buttonSpacer),
      EzLink(
        'World Savvy',
        style: titleLinkStyle,
        url: Uri.parse(worldSavvyCNavLink),
        semanticsLabel: Lang.of(context)!.fpsSavvyCNavHint,
      ),
      EzSpacer(buttonSpacer),
      EzText(
        Lang.of(context)!.fpsSavvyMission,
        style: contentStyle,
      ),
    ];

    return limitedSpace
        ? ConstrainedBox(
            constraints: BoxConstraints(maxWidth: twoThirdsWidth),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...anitaB,
                EzSpacer(textSpacer),
                ...codeOrg,
                EzSpacer(textSpacer),
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
              EzSpacer.row(buttonSpacer),

              // Code.org
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: sharedColWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: codeOrg,
                ),
              ),
              EzSpacer.row(buttonSpacer),

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
