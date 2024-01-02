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

  final double padding = EzConfig.get(paddingKey);

  late final EzSpacer _padder = EzSpacer(padding);
  late final EzSpacer _textSpacer = EzSpacer(EzConfig.get(textSpacingKey));

  late final TextStyle? headlineStyle = getHeadline(context);
  late final TextStyle? titleStyle = getTitle(context);
  late final TextStyle? bodyStyle = getBody(context);

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(Lang.of(context)!.tsPageTitle);
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
              style: headlineStyle,
              textAlign: TextAlign.center,
            ),
            _padder,

            // Founder
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Avatar of Mike
                Container(
                  constraints: BoxConstraints(
                    maxHeight:
                        MediaQuery.textScalerOf(context).scale(imageSize),
                  ),
                  child: EzImage(
                    image: const AssetImage(founderIconPath),
                    semanticLabel: Lang.of(context)!.tsTheFounderImageHint,
                  ),
                ),
                EzSwapSpacer(padding),

                // Information
                MergeSemantics(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        Lang.of(context)!.tsTheFounder,
                        style: titleStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        mike,
                        style: bodyStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _textSpacer,

            // Community //

            Text(
              Lang.of(context)!.tsCommunity,
              style: headlineStyle,
              textAlign: TextAlign.center,
            ),
            _padder,

            // Folding@home
            FaHBanner(
              titleStyle: titleStyle,
              bodyStyle: bodyStyle,
            ),
            _textSpacer,

            // Freelance //

            Text(
              Lang.of(context)!.tsFreelance,
              style: headlineStyle,
              textAlign: TextAlign.center,
            ),
            _padder,

            // Logo animation
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EzLink(
                  'Graphic Alert',
                  style: titleStyle,
                  textAlign: TextAlign.center,
                  url: Uri.parse(graphicAlertLink),
                  semanticsLabel: Lang.of(context)!.tsGALinkHint,
                  tooltip: graphicAlertLink,
                ),
                Text(
                  Lang.of(context)!.tsGADescription,
                  style: bodyStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            _textSpacer,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
