/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:feedback/feedback.dart';
import 'package:line_icons/line_icons.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class IconLinks extends StatelessWidget {
  final BuildContext context;
  final ColorScheme colorScheme;
  final double iconSize;
  final double margin;

  /// [Row] of [IconButton]s leading to Empathetech's public pages
  IconLinks({
    super.key,
    required this.context,
    required this.colorScheme,
    required this.iconSize,
    required this.margin,
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

  late final IconButton newsletter = IconButton(
    style: IconButton.styleFrom(
      side: BorderSide(color: colorScheme.primaryContainer),
      padding: EdgeInsets.all(margin),
    ),
    onPressed: () => launchUrl(Uri.parse(empathNewsletter)),
    tooltip: Lang.of(context)!.gNewsletter,
    icon: Icon(Icons.mail_outline, size: iconSize, color: colorScheme.primary),
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

  late final IconButton linkedIn = IconButton(
    style: IconButton.styleFrom(
      side: BorderSide(color: colorScheme.primaryContainer),
      padding: EdgeInsets.all(margin),
    ),
    onPressed: () => launchUrl(Uri.parse(empathLinkedIn)),
    tooltip: 'LinkedIn',
    icon: Icon(LineIcons.linkedin, size: iconSize, color: colorScheme.primary),
  );

  late final IconButton feedback = IconButton(
    style: IconButton.styleFrom(
      side: BorderSide(color: colorScheme.primaryContainer),
      padding: EdgeInsets.all(margin),
    ),
    onPressed: () async {
      final EFUILang l10n = EFUILang.of(context)!;

      final String snackBarText = l10n.gClipboard(l10n.gSupportEmail);

      await ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
            content: Text(snackBarText, textAlign: TextAlign.center),
            duration: readingTime(snackBarText),
          ))
          .closed;

      if (context.mounted) {
        BetterFeedback.of(context).show(
          (UserFeedback feedback) async {
            await Clipboard.setData(const ClipboardData(text: empathSupport));

            await Share.shareXFiles(
              <XFile>[
                XFile.fromData(
                  feedback.screenshot,
                  name: 'screenshot.png',
                  mimeType: 'image/png',
                )
              ],
              text: feedback.text,
            );
          },
        );
      }
    },
    tooltip:
        EFUILang.of(context)!.gGiveFeedback.split(' ').last[0].toUpperCase() +
            EFUILang.of(context)!.gGiveFeedback.split(' ').last.substring(1),
    icon: Icon(
      Icons.feedback_outlined,
      size: iconSize,
      color: colorScheme.primary,
    ),
  );

  // Define the getters //

  List<IconButton> get buttons => <IconButton>[
        gitHub,
        newsletter,
        mastodon,
        linkedIn,
        feedback,
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
      newsletter,
      spacer,
      mastodon,
      spacer,
      linkedIn,
      spacer,
      feedback,
      margin,
    ];
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
