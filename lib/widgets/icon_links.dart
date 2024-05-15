import '../utils/export.dart';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:feedback/feedback.dart';
import 'package:line_icons/line_icons.dart';
// import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class IconLinks extends StatelessWidget {
  final BuildContext context;
  final double iconSize;
  final double margin;
  final double spacer;
  final Color? color;

  /// [Row] of [IconButton]s leading to Empathetech's public pages
  IconLinks({
    super.key,
    required this.context,
    required this.iconSize,
    required this.margin,
    required this.spacer,
    this.color,
  });

  // Define the buttons //

  late final IconButton _gitHub = IconButton(
    onPressed: () => launchUrl(Uri.parse(empathGitHub)),
    icon: Icon(LineIcons.github, size: iconSize, color: color),
    tooltip: 'GitHub',
  );

  late final IconButton _linkedIn = IconButton(
    onPressed: () => launchUrl(Uri.parse(empathLinkedIn)),
    icon: Icon(LineIcons.linkedin, size: iconSize, color: color),
    tooltip: 'LinkedIn',
  );

  late final IconButton _mastodon = IconButton(
    onPressed: () => launchUrl(Uri.parse(empathMastodon)),
    icon: Icon(LineIcons.mastodon, size: iconSize, color: color),
    tooltip: 'Mastodon',
  );

  late final IconButton _newsletter = IconButton(
    onPressed: () => launchUrl(Uri.parse(empathNewsletter)),
    icon: Icon(Icons.mail_outline, size: iconSize, color: color),
    tooltip: Lang.of(context)!.gNewsletter,
  );

  // late final IconButton _feedback = IconButton(
  //   onPressed: () {
  //     BetterFeedback.of(context).show((UserFeedback feedback) async {
  //       await Clipboard.setData(const ClipboardData(text: empathSupport));

  //       await Share.shareXFiles(
  //         <XFile>[
  //           XFile.fromData(
  //             feedback.screenshot,
  //             name: 'screenshot.png',
  //             mimeType: 'image/png',
  //           )
  //         ],
  //         text: feedback.text,
  //       );
  //     });
  //   },
  //   icon: Icon(Icons.feedback, size: iconSize, color: color),
  //   tooltip: Lang.of(context)!.gFeedback,
  // );

  // Define the getters //

  List<IconButton> get buttons => <IconButton>[
        _gitHub,
        _linkedIn,
        _mastodon,
        _newsletter,
        //_feedback,
      ];

  List<Widget> get children {
    final EzSpacer marginR = EzSpacer.row(margin);
    final EzSpacer spaceR = EzSpacer.row(spacer);

    return <Widget>[
      marginR,
      _gitHub,
      spaceR,
      _linkedIn,
      spaceR,
      _mastodon,
      spaceR,
      _newsletter,
      // spaceR,
      // _feedback,
      marginR,
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
