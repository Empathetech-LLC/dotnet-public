/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:line_icons/line_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class IconLink extends StatelessWidget {
  /// Destination URL
  final Uri url;

  /// [IconButton.tooltip] passthrough
  final String tooltip;

  /// [IconButton.icon] passthrough
  final Icon icon;

  const IconLink({
    super.key,
    required this.url,
    required this.tooltip,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) => Link(
        uri: url,
        builder: (_, FollowLink? followLink) => EzIconButton(
          onPressed: followLink,
          tooltip: tooltip,
          icon: icon,
        ),
      );
}

class IconLinks extends StatelessWidget {
  /// [Row] of [EzIconButton]s leading to all Empathetech contacts
  IconLinks({super.key});

  // Define the buttons //

  final IconLink gitHub = IconLink(
    url: Uri.parse(empathGitHub),
    tooltip: 'GitHub',
    icon: Icon(LineIcons.github, color: EzConfig.colors.primary),
  );

  final IconLink newsletter = IconLink(
    url: Uri.parse(empathNewsletter),
    tooltip: l10n.gNewsletter,
    icon: Icon(Icons.mail_outline, color: EzConfig.colors.primary),
  );

  final IconLink mastodon = IconLink(
    url: Uri.parse(empathMastodon),
    tooltip: 'Mastodon',
    icon: Icon(LineIcons.mastodon, color: EzConfig.colors.primary),
  );

  final IconLink bluesky = IconLink(
    url: Uri.parse(empathBluesky),
    tooltip: 'Bluesky',
    icon: Icon(FontAwesomeIcons.bluesky, color: EzConfig.colors.primary),
  );

  final IconLink linkedIn = IconLink(
    url: Uri.parse(empathLinkedIn),
    tooltip: 'LinkedIn',
    icon: Icon(LineIcons.linkedin, color: EzConfig.colors.primary),
  );

  // Define the getters //

  List<Widget> get buttons => <Widget>[
        gitHub,
        newsletter,
        mastodon,
        bluesky,
        linkedIn,
      ];

  List<Widget> get children => <Widget>[
        EzMargin(vertical: false),
        gitHub,
        EzConfig.rowSpacer,
        newsletter,
        EzConfig.rowSpacer,
        mastodon,
        EzConfig.rowSpacer,
        bluesky,
        EzConfig.rowSpacer,
        linkedIn,
        EzMargin(vertical: false),
      ];

  // Return the build //

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      );
}
