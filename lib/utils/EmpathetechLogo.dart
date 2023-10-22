import './utils.dart';
import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class EmpathetechLogo extends StatelessWidget {
  /// Is [PlatformTheme] set to light?
  final bool isLight;

  final double width;
  final double height;

  /// Clickable [AssetImage] logo that leads to the [HomeScreen]
  const EmpathetechLogo({
    required this.isLight,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      image: true,
      link: true,
      hint: Lang.of(context)!.hsLogoHint,
      child: ExcludeSemantics(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => context.goNamed(homeRoute),
            child: EzImage(
              // Colors are purposefully opposite
              // Matches the AppBar from DotNetScaffold.dart
              image: AssetImage(isLight ? darkLogoPath : lightLogoPath),

              width: width,
              height: height,
              semanticLabel: "",
            ),
          ),
        ),
      ),
    );
  }
}
