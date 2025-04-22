/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:feedback/feedback.dart';
import 'package:flutter/foundation.dart';
import 'package:line_icons/line_icons.dart';
import 'package:share_plus/share_plus.dart';
import 'package:file_saver/file_saver.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class IconLinks extends StatelessWidget {
  /// [BuildContext] passthrough for [Lang]
  final BuildContext context;

  /// [ThemeData.colorScheme] passthrough
  final ColorScheme colorScheme;

  /// Spacing between the [EzIconButton]s when [ScreenSpace] is not limited
  final double margin;

  /// [Row] of [EzIconButton]s leading to all Empathetech contacts
  IconLinks({
    super.key,
    required this.context,
    required this.colorScheme,
    required this.margin,
  });

  // Define the buttons //

  late final EzIconButton gitHub = EzIconButton(
    onPressed: () => launchUrl(Uri.parse(empathGitHub)),
    tooltip: 'GitHub',
    icon: Icon(LineIcons.github, color: colorScheme.primary),
  );

  late final EzIconButton newsletter = EzIconButton(
    onPressed: () => launchUrl(Uri.parse(empathNewsletter)),
    tooltip: Lang.of(context)!.gNewsletter,
    icon: Icon(Icons.mail_outline, color: colorScheme.primary),
  );

  late final EzIconButton mastodon = EzIconButton(
    onPressed: () => launchUrl(Uri.parse(empathMastodon)),
    tooltip: 'Mastodon',
    icon: Icon(LineIcons.mastodon, color: colorScheme.primary),
  );

  late final EzIconButton bluesky = EzIconButton(
    onPressed: () => launchUrl(Uri.parse(empathBluesky)),
    tooltip: 'Bluesky',
    icon: Icon(FontAwesomeIcons.bluesky, color: colorScheme.primary),
  );

  late final EzIconButton linkedIn = EzIconButton(
    onPressed: () => launchUrl(Uri.parse(empathLinkedIn)),
    tooltip: 'LinkedIn',
    icon: Icon(LineIcons.linkedin, color: colorScheme.primary),
  );

  late final EzIconButton feedback = EzIconButton(
    onPressed: () async {
      final bool isMobile = !kIsWeb && (Platform.isAndroid || Platform.isIOS);
      late final EFUILang l10n = EFUILang.of(context)!;

      if (isMobile) {
        await Clipboard.setData(const ClipboardData(text: empathSupport));

        if (context.mounted) {
          await ezSnackBar(
            context: context,
            message:
                '${l10n.gOpeningFeedback}\n${l10n.gClipboard(l10n.gSupportEmail)}',
          ).closed;
        }
      }

      if (context.mounted) {
        BetterFeedback.of(context).show(
          (UserFeedback feedback) async {
            if (isMobile) {
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
            } else {
              await FileSaver.instance.saveFile(
                name: 'screenshot.png',
                bytes: feedback.screenshot,
                mimeType: MimeType.png,
              );
              await launchUrl(Uri.parse(
                'mailto:$empathSupport?subject=Site%20feedback&body=${feedback.text}\n\n----%20%20----%20%20----\n\n${l10n.gAttachScreenshot}',
              ));
            }
          },
        );
      }
    },
    tooltip: EFUILang.of(context)!.gGiveFeedback,
    icon: Icon(Icons.feedback_outlined, color: colorScheme.primary),
  );

  // Define the getters //

  List<EzIconButton> get buttons => <EzIconButton>[
        gitHub,
        newsletter,
        mastodon,
        bluesky,
        linkedIn,
        feedback,
      ];

  List<Widget> get children {
    const EzSpacer spacer = EzSpacer(vertical: false);
    final EzSpacer margin = EzMargin(vertical: false);

    return <Widget>[
      margin,
      gitHub,
      spacer,
      newsletter,
      spacer,
      mastodon,
      spacer,
      bluesky,
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
