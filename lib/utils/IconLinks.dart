import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class IconLinks extends StatelessWidget {
  final GlobalKey? key;
  final BuildContext context;
  final double iconSize;
  final Color? color;
  final double margin;
  final double spacer;

  /// [Row] of [Icon]s wrapped in clickable [MouseRegion]s for Empathetech's public pages
  const IconLinks({
    this.key,
    required this.context,
    required this.iconSize,
    this.color,
    required this.margin,
    required this.spacer,
  }) : super(key: key);

  List<Widget> get rowChildren => [
        EzSpacer.row(margin),

        // Github
        Semantics(
          link: true,
          hint: Lang.of(context)!.gGitHint,
          child: ExcludeSemantics(
            child: IconButton(
              onPressed: () => launchUrl(Uri.parse(EmpathetechGitHub)),
              icon: Icon(LineIcons.github, size: iconSize, color: color),
            ),
          ),
        ),

        EzSpacer.row(spacer),

        // LinkedIn
        Semantics(
          link: true,
          hint: Lang.of(context)!.gLinkedHint,
          child: ExcludeSemantics(
            child: IconButton(
              onPressed: () => launchUrl(Uri.parse(EmpathetechLinkedIn)),
              icon: Icon(LineIcons.linkedin, size: iconSize, color: color),
            ),
          ),
        ),

        EzSpacer.row(spacer),

        // Mastodon
        Semantics(
          link: true,
          hint: Lang.of(context)!.gMastodonHint,
          child: ExcludeSemantics(
            child: IconButton(
              onPressed: () => launchUrl(Uri.parse(EmpathetechMastodon)),
              icon: Icon(LineIcons.mastodon, size: iconSize, color: color),
            ),
          ),
        ),

        EzSpacer.row(spacer),

        // Email
        Semantics(
          link: true,
          hint: Lang.of(context)!.gEmailHint,
          child: ExcludeSemantics(
            child: IconButton(
              onPressed: () =>
                  launchUrl(Uri.parse("mailto:$EmpathetechCommunity")),
              icon: Icon(Icons.mail_outline, size: iconSize, color: color),
            ),
          ),
        ),

        EzSpacer.row(margin),
      ];

  double get width {
    return 2 * margin + 3 * spacer + 4 * iconSize;
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
