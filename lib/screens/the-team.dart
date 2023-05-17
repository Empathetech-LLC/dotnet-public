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
        child: _Content(
          headerStyle: headerStyle,
          titleStyle: titleStyle,
          contentStyle: contentStyle,
          contentLinkStyle: contentLinkStyle,
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}

class _Content extends StatelessWidget {
  final TextStyle? headerStyle;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;
  final TextStyle? contentLinkStyle;

  const _Content({
    required this.headerStyle,
    required this.titleStyle,
    required this.contentStyle,
    required this.contentLinkStyle,
  });

  @override
  Widget build(BuildContext context) {
    bool limitedSpace = LayoutSize.of(context)?.isLimited ?? false;

    final double padding = EzConfig.instance.prefs[paddingKey];
    final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];

    return EzScrollView(
      children: [
        // Core //

        EzSelectableText('Core', style: headerStyle),
        EzSpacer(padding),

        // Founder
        EzRowCol(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          limitedSpace: limitedSpace,
          children: [
            // Avatar of Michael Waldron
            CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundImage: const AssetImage(founderIconPath),
              radius: CircleAvatarRadius *
                  sqrt(MediaQuery.of(context).textScaleFactor),
            ),
            EzSpacer.swap(spacer, limitedSpace: limitedSpace),

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
          limitedSpace: limitedSpace,
        ),
        EzSpacer(2 * spacer),
      ],
    );
  }
}
