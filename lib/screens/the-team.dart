import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'dart:math';
import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  // Set page/tab title //

  @override
  void initState() {
    super.initState();
    setPageTitle(context: context, title: 'The Team');
  }

  // Gather theme data //

  final double padding = EzConfig.instance.prefs[paddingKey];
  final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];

  late final Color? buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? headerStyle = headlineSmall(context);
  late final TextStyle? titleStyle = titleLarge(context);
  late final TextStyle? contentStyle = bodyLarge(context);
  late final TextStyle? contentLinkStyle = contentStyle?.copyWith(
    color: buttonColor,
    decoration: TextDecoration.underline,
  );

  // Build page //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScreenScroller(
          children: [
            // Core //

            EzSelectableText('Core', style: headerStyle),
            EzSpacer(padding),

            // Founder
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Avatar of Michael Waldron
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundImage: const AssetImage(founderIconPath),
                  radius: CircleAvatarRadius *
                      sqrt(MediaQuery.of(context).textScaleFactor),
                ),
                EzSpacer.row(spacer),

                // Information
                EzSelectableText.rich(TextSpan(children: [
                  TextSpan(text: 'The Founder\n', style: titleStyle),
                  TextSpan(text: 'Michael Waldron\n', style: contentStyle),
                ])),
              ],
            ),
            EzSpacer(2 * spacer),

            // Community //

            EzSelectableText('Community', style: headerStyle),
            EzSpacer(padding),

            // Folding@home
            FAHBanner(
              titleStyle: titleStyle,
              contentStyle: contentStyle,
              contentLinkStyle: contentLinkStyle,
            ),
            EzSpacer(2 * spacer),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
