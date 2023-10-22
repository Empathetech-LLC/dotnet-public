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
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, Lang.of(context)!.tsPageTitle);
  }

  // Gather theme data //

  late final Color? _buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? _headerStyle = headlineSmall(context);
  late final TextStyle? _titleStyle = titleLarge(context);
  late final TextStyle? _titleLinkStyle = _titleStyle?.copyWith(
    color: _buttonColor,
    decoration: TextDecoration.underline,
  );
  late final TextStyle? _contentStyle = bodyLarge(context);
  late final TextStyle? _contentLinkStyle = _contentStyle?.copyWith(
    color: _buttonColor,
    decoration: TextDecoration.underline,
  );

  final double _padding = EzConfig.instance.prefs[paddingKey];
  final double _textSpacer = EzConfig.instance.prefs[textSpacingKey];

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // Core //

            EzText(Lang.of(context)!.tsCore, style: _headerStyle),
            EzSpacer(_padding),

            // Founder
            EzRowCol(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Avatar of Michael Waldron
                Semantics(
                  image: true,
                  label: Lang.of(context)!.tsTheFounderImageHint,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundImage: const AssetImage(founderIconPath),
                    radius: CircleAvatarRadius *
                        sqrt(MediaQuery.of(context).textScaleFactor),
                  ),
                ),
                EzSwapSpacer(_textSpacer),

                // Information
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    EzText(
                      Lang.of(context)!.tsTheFounder,
                      style: _titleStyle,
                    ),
                    EzLink(
                      'Michael Waldron',
                      style: _contentLinkStyle,
                      semanticsLabel:
                          "Michael Waldron ${Lang.of(context)!.tsResumeHint}",
                      url: Uri.parse(
                        "https://github.com/empathictech/resume/blob/main/public-resume.pdf",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            EzSpacer(_textSpacer),

            // Community //

            EzText(Lang.of(context)!.tsCommunity, style: _headerStyle),
            EzSpacer(_padding),

            // Folding@home
            FaHBanner(
              titleStyle: _titleStyle,
              contentStyle: _contentStyle,
              contentLinkStyle: _contentLinkStyle,
            ),
            EzSpacer(_textSpacer),

            // Freelance //

            EzText(
              Lang.of(context)!.tsFreelance,
              style: _headerStyle,
            ),
            EzSpacer(_padding),

            // Logo animation
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EzLink(
                  'Graphic Alert',
                  style: _titleLinkStyle,
                  semanticsLabel: Lang.of(context)!.tsGALinkHint,
                  url: Uri.parse("https://www.fiverr.com/graphic_alert"),
                ),
                EzText(
                  Lang.of(context)!.tsGADescription,
                  style: _contentStyle,
                  semanticsLabel: Lang.of(context)!.tsGADescriptionFix,
                ),
              ],
            ),
            EzSpacer(_textSpacer),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
