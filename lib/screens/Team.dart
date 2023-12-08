import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  // Gather the theme data //
  late final TextStyle? _headerStyle = headlineSmall(context);
  late final TextStyle? _titleStyle = titleLarge(context);
  late final TextStyle? _contentStyle = bodyLarge(context);

  final double _padding = EzConfig.get(paddingKey);
  final double _textSpacer = EzConfig.get(textSpacingKey);

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, Lang.of(context)!.tsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // Core //

            Text(
              Lang.of(context)!.tsCore,
              style: _headerStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_padding),

            // Founder
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Avatar of Mike
                Semantics(
                  image: true,
                  label: Lang.of(context)!.tsTheFounderImageHint,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundImage: const AssetImage(founderIconPath),
                    radius: MediaQuery.textScalerOf(context)
                        .scale(CircleAvatarRadius),
                  ),
                ),
                EzSwapSpacer(_padding),

                // Information
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Lang.of(context)!.tsTheFounder,
                      style: _titleStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      mike,
                      style: _contentStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            EzSpacer(_textSpacer),

            // Community //

            Text(
              Lang.of(context)!.tsCommunity,
              style: _headerStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_padding),

            // Folding@home
            FaHBanner(
              titleStyle: _titleStyle,
              contentStyle: _contentStyle,
            ),
            EzSpacer(_textSpacer),

            // Freelance //

            Text(
              Lang.of(context)!.tsFreelance,
              style: _headerStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_padding),

            // Logo animation
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EzLink(
                  'Graphic Alert',
                  style: _titleStyle,
                  textAlign: TextAlign.center,
                  url: Uri.parse(graphicAlertLink),
                  semanticsLabel: Lang.of(context)!.tsGALinkHint,
                ),
                Text(
                  Lang.of(context)!.tsGADescription,
                  style: _contentStyle,
                  textAlign: TextAlign.center,
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
