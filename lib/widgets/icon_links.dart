/* website
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:ywt_private/ywt_private.dart' as ywt;

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:line_icons/line_icons.dart';

class IconLink extends StatelessWidget {
  /// EzConfig Provider
  final EzCP config;

  /// Destination URL
  final Uri url;

  /// [IconButton.tooltip] passthrough
  final String tooltip;

  /// [IconButton.icon] passthrough
  final Icon icon;

  const IconLink(
    this.config, {
    super.key,
    required this.url,
    required this.tooltip,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) => Link(
        uri: url,
        builder: (_, FollowLink? followLink) => EzIconButton(
          config,
          onPressed: followLink,
          tooltip: tooltip,
          icon: icon,
        ),
      );
}

class IconLinks extends StatelessWidget {
  final EzCP config;

  /// Links, in [Icon] form
  IconLinks(this.config, {super.key});

  // Define the buttons //

  late final IconLink gitHub = IconLink(
    config,
    url: Uri.parse(ywt.ywtGitHub),
    tooltip: 'GitHub',
    icon: Icon(
      LineIcons.github,
      color: config.colors.primary,
      size: config.titleStyle!.fontSize,
    ),
  );

  // Define the getters //

  Widget get noSpacers => gitHub;

  List<Widget> get yesSpacers => <Widget>[config.rowMargin, gitHub, config.rowMargin];

  // Return the build //

  @override
  Widget build(BuildContext context) => EzRow(
        config,
        reverseHands: false,
        mainAxisAlignment: MainAxisAlignment.center,
        children: yesSpacers,
      );
}
