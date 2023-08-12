import 'utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmpathetechLogo extends StatelessWidget {
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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.goNamed('home'),
        child: EzImage(
          // Colors are purposefully opposite
          // Matches the AppBar from DotNetScaffold.dart
          image: AssetImage(isLight ? darkLogoPath : lightLogoPath),

          width: width,
          height: height,
          semanticLabel: 'Empathetech Logo. Click to go to the home screen.',
        ),
      ),
    );
  }
}
