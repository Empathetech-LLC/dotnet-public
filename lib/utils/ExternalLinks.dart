import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class ExternalLinks extends StatelessWidget {
  final GlobalKey? key;
  final double iconSize;
  final double spacer;
  final double margin;

  /// [Row] of [Icon]s wrapped in clickable [MouseRegion]s for Empathetech's public pages
  const ExternalLinks({
    this.key,
    required this.iconSize,
    required this.spacer,
    required this.margin,
  }) : super(key: key);

  List<Widget> get rowChildren => [
        EzSpacer.row(margin),

        // Email
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => copyToClipboard(string: EmpathetechSupport),
            child: const Icon(Icons.mail_outline),
          ),
        ),

        EzSpacer.row(spacer),

        // Github
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => launchUrl(Uri.parse(EmpathetechGitHub)),
            child: const Icon(LineIcons.github),
          ),
        ),

        EzSpacer.row(margin),
      ];

  double get width {
    return 2 * margin + spacer + 2 * iconSize;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: rowChildren,
    );
  }
}
