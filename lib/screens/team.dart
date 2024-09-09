/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

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

  late final EzSpacer padder = EzSpacer(space: padding);
  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final Lang l10n = Lang.of(context)!;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.tsPageTitle);
  }

  // Define custom widgets //

  late final Widget spanishCredits = Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      // Avatar
      Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.textScalerOf(context).scale(imageSize),
        ),
        child: EzLinkWidget(
          url: Uri.parse(saraHLink),
          semanticLabel: l10n.gFiverrPage(saraH),
          tooltip: saraHLink,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(imageSize),
            child: const Image(image: saraHProfile),
          ),
        ),
      ),
      padder,

      // Information
      MergeSemantics(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              l10n.tsSpanish,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              saraH,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ],
  );

  late final Widget frenchCredits = Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      // Avatar
      Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.textScalerOf(context).scale(imageSize),
        ),
        child: EzLinkWidget(
          url: Uri.parse(alexisNLink),
          semanticLabel: l10n.gFiverrPage(alexisN),
          tooltip: alexisNLink,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(imageSize),
            child: const Image(image: alexisNProfile),
          ),
        ),
      ),
      padder,

      // Information
      MergeSemantics(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              l10n.tsFrench,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              alexisN,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ],
  );

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
              style: textTheme.headlineLarge,
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
                    image: founderImage,
                    semanticLabel: l10n.tsTheFounderImageHint,
                  ),
                ),
                EzSwapSpacer(space: padding),

                // Information
                MergeSemantics(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        l10n.tsTheFounder,
                        style: textTheme.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        mike,
                        style: textTheme.bodyLarge,
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
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            padder,

            // Folding@home
            FaHBanner(
              titleStyle: textTheme.titleLarge,
              bodyStyle: textTheme.bodyLarge,
            ),
            separator,

            // Freelance //

            Text(
              l10n.tsFreelance,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            padder,

            EzRowCol(
              row: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[spanishCredits, separator, frenchCredits],
              ),
              col: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[spanishCredits, spacer, frenchCredits],
              ),
            ),
            spacer,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
