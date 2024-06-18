import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  // Gather the theme data //

  final double padding = EzConfig.get(paddingKey);
  final double spacing = EzConfig.get(paddingKey);

  late final EzSpacer padder = EzSpacer(padding);
  late final EzSpacer spacer = EzSpacer(spacing);
  late final EzSpacer separator = EzSpacer(spacing * 2);

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final Color textColor = Theme.of(context).colorScheme.onSurface;

  late final TextStyle? headlineStyle = textTheme.headlineLarge?.copyWith(
    color: textColor,
  );
  late final TextStyle? titleStyle = textTheme.titleLarge?.copyWith(
    color: textColor,
  );
  late final TextStyle? bodyStyle = textTheme.bodyLarge?.copyWith(
    color: textColor,
  );

  late final Lang l10n = Lang.of(context)!;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.tsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: <Widget>[
            // Core //

            Text(
              l10n.tsCore,
              style: headlineStyle,
              textAlign: TextAlign.center,
            ),
            padder,

            // Founder
            EzRowCol.sym(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Avatar of Mike
                Container(
                  constraints: BoxConstraints(
                    maxHeight:
                        MediaQuery.textScalerOf(context).scale(imageSize),
                  ),
                  child: EzImage(
                    image: const AssetImage(founderIconPath),
                    semanticLabel: l10n.tsTheFounderImageHint,
                  ),
                ),
                EzSwapSpacer(padding),

                // Information
                MergeSemantics(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        l10n.tsTheFounder,
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
            separator,

            // Community //

            Text(
              l10n.tsCommunity,
              style: headlineStyle,
              textAlign: TextAlign.center,
            ),
            padder,

            // Folding@home
            FaHBanner(
              titleStyle: titleStyle,
              bodyStyle: bodyStyle,
            ),
            spacer,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
