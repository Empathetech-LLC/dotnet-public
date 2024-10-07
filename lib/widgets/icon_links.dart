/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class IconLinks extends StatelessWidget {
  final ColorScheme colorScheme;
  final double iconSize;
  final double margin;
  final Lang l10n;

  /// [Row] of [IconButton]s leading to Empathetech's public pages
  IconLinks({
    super.key,
    required this.colorScheme,
    required this.iconSize,
    required this.margin,
    required this.l10n,
  });

  // Define the buttons //

  late final IconButton gitHub = IconButton(
    style: IconButton.styleFrom(
      side: BorderSide(color: colorScheme.primaryContainer),
      padding: EdgeInsets.all(margin),
    ),
    onPressed: () => launchUrl(Uri.parse(empathGitHub)),
    tooltip: 'GitHub',
    icon: Icon(LineIcons.github, size: iconSize, color: colorScheme.primary),
  );

  late final IconButton linkedIn = IconButton(
    style: IconButton.styleFrom(
      side: BorderSide(color: colorScheme.primaryContainer),
      padding: EdgeInsets.all(margin),
    ),
    onPressed: () => launchUrl(Uri.parse(empathLinkedIn)),
    tooltip: 'LinkedIn',
    icon: Icon(LineIcons.linkedin, size: iconSize, color: colorScheme.primary),
  );

  late final IconButton mastodon = IconButton(
    style: IconButton.styleFrom(
      side: BorderSide(color: colorScheme.primaryContainer),
      padding: EdgeInsets.all(margin),
    ),
    onPressed: () => launchUrl(Uri.parse(empathMastodon)),
    tooltip: 'Mastodon',
    icon: Icon(LineIcons.mastodon, size: iconSize, color: colorScheme.primary),
  );

  late final IconButton newsletter = IconButton(
    style: IconButton.styleFrom(
      side: BorderSide(color: colorScheme.primaryContainer),
      padding: EdgeInsets.all(margin),
    ),
    onPressed: () => launchUrl(Uri.parse(empathNewsletter)),
    tooltip: l10n.gNewsletter,
    icon: Icon(Icons.mail_outline, size: iconSize, color: colorScheme.primary),
  );

  // Define the getters //

  List<IconButton> get buttons => <IconButton>[
        gitHub,
        linkedIn,
        mastodon,
        newsletter,
      ];

  List<Widget> get children {
    const EzSpacer spacer = EzSpacer(vertical: false);
    final EzSpacer margin = EzSpacer(
      space: EzConfig.get(marginKey),
      vertical: false,
    );

    return <Widget>[
      margin,
      gitHub,
      spacer,
      linkedIn,
      spacer,
      mastodon,
      spacer,
      newsletter,
      margin,
    ];
  }

  double get width {
    return 2 * EzConfig.get(marginKey) +
        3 * EzConfig.get(spacingKey) +
        4 * iconSize;
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
