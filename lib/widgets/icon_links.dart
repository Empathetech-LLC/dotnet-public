/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
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
  /// [BuildContext] passthrough for [Lang]
  final BuildContext context;

  /// [ThemeData.colorScheme] passthrough
  final ColorScheme colorScheme;

  /// [Row] of [EzIconButton]s leading to all Empathetech contacts
  IconLinks({
    super.key,
    required this.context,
    required this.colorScheme,
  });

  // Define the buttons //

  late final IconLink gitHub = IconLink(
    url: Uri.parse(empathGitHub),
    tooltip: 'GitHub',
    icon: Icon(LineIcons.github, color: colorScheme.primary),
  );

  late final IconLink newsletter = IconLink(
    url: Uri.parse(empathNewsletter),
    tooltip: Lang.of(context)!.gNewsletter,
    icon: Icon(Icons.mail_outline, color: colorScheme.primary),
  );

  late final IconLink mastodon = IconLink(
    url: Uri.parse(empathMastodon),
    tooltip: 'Mastodon',
    icon: Icon(LineIcons.mastodon, color: colorScheme.primary),
  );

  late final IconLink bluesky = IconLink(
    url: Uri.parse(empathBluesky),
    tooltip: 'Bluesky',
    icon: Icon(FontAwesomeIcons.bluesky, color: colorScheme.primary),
  );

  late final IconLink linkedIn = IconLink(
    url: Uri.parse(empathLinkedIn),
    tooltip: 'LinkedIn',
    icon: Icon(LineIcons.linkedin, color: colorScheme.primary),
  );

  late final EzIconButton feedback = EzIconButton(
    onPressed: () => ezFeedback(
      parentContext: context,
      l10n: ezL10n(context),
      supportEmail: empathSupport,
      appName: appName,
    ),
    tooltip: ezL10n(context).gGiveFeedback,
    icon: Icon(Icons.feedback_outlined, color: colorScheme.primary),
  );

  // Define the getters //

  List<Widget> get buttons => <Widget>[
        gitHub,
        newsletter,
        mastodon,
        bluesky,
        linkedIn,
        feedback,
      ];

  List<Widget> get children => <Widget>[
        ezRowMargin,
        gitHub,
        ezRowSpacer,
        newsletter,
        ezRowSpacer,
        mastodon,
        ezRowSpacer,
        bluesky,
        ezRowSpacer,
        linkedIn,
        ezRowSpacer,
        feedback,
        ezRowMargin,
      ];

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
