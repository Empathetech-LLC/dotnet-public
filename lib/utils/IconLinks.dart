import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class IconLinks extends StatelessWidget {
  final GlobalKey? key;
  final BuildContext context;
  final double iconSize;
  final double margin;
  final double spacer;
  final Color? color;

  /// [Row] of [IconButton]s leading to Empathetech's public pages
  IconLinks({
    this.key,
    required this.context,
    required this.iconSize,
    required this.margin,
    required this.spacer,
    this.color,
  }) : super(key: key);

  // Define the buttons //

  late final IconButton _gitHub = IconButton(
    onPressed: () => launchUrl(Uri.parse(EmpathetechGitHub)),
    icon: Icon(LineIcons.github, size: iconSize, color: color),
    tooltip: "GitHub",
  );

  late final IconButton _linkedIn = IconButton(
    onPressed: () => launchUrl(Uri.parse(EmpathetechLinkedIn)),
    icon: Icon(LineIcons.linkedin, size: iconSize, color: color),
    tooltip: "LinkedIn",
  );

  late final IconButton _mastodon = IconButton(
    onPressed: () => launchUrl(Uri.parse(EmpathetechMastodon)),
    icon: Icon(LineIcons.mastodon, size: iconSize, color: color),
    tooltip: "Mastodon",
  );

  late final IconButton _newsletter = IconButton(
    onPressed: () => launchUrl(Uri.parse(EmpathetechNewsletter)),
    icon: Icon(Icons.mail_outline, size: iconSize, color: color),
    tooltip: Lang.of(context)!.gNewsletter,
  );

  // Define the getters //

  List<IconButton> get buttons => [
        _gitHub,
        _linkedIn,
        _mastodon,
        _newsletter,
      ];

  List<Widget> get children {
    final EzSpacer _margin = EzSpacer.row(margin);
    final EzSpacer _spacer = EzSpacer.row(spacer);

    return [
      _margin,
      _gitHub,
      _spacer,
      _linkedIn,
      _spacer,
      _mastodon,
      _spacer,
      _newsletter,
      _margin,
    ];
  }

  double get width {
    return 2 * margin + 3 * spacer + 4 * iconSize;
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }
}
