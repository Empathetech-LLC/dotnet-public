/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();

  final double margin = EzConfig.get(marginKey);
  late final EzSpacer titleMargin = EzSpacer(space: margin);

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final ColorScheme colorScheme = Theme.of(context).colorScheme;

  late final Lang l10n = Lang.of(context)!;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.tsPageTitle, colorScheme.primary);
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
          tooltip: saraHLink,
          semanticLabel: l10n.gFiverrPage(saraH),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(imageSize),
            child: const Image(image: saraHProfile),
          ),
        ),
      ),
      titleMargin,

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
      titleMargin,

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
        useImageDecoration: false,
        child: EzScrollView(
          children: <Widget>[
            // Core //

            Text(
              l10n.tsCore,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

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
                  child: EzLinkImageProvider(
                    image: founderImage,
                    semanticLabel: l10n.tsTheFounderImageHint,
                    url: Uri.parse(
                      'mailto:$empathFounder?subject=Becoming%20a%20contributor',
                    ),
                    tooltip: l10n.tsTheFounderImageHint.split('. ').last,
                  ),
                ),
                EzSwapSpacer(space: margin),

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

            // Divider
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: widthOf(context) * 0.667),
              child: const Divider(),
            ),

            // Community //

            EzLink(
              l10n.tsCommunity,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
              textColor: colorScheme.onSurface,
              decorationColor: colorScheme.primary,
              onTap: () => context.goNamed(contributePath),
              semanticsLabel: l10n.gContributeHint,
            ),
            spacer,

            // Folding@home
            const FaHBanner(),

            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: widthOf(context) * 0.667),
              child: const Divider(),
            ),

            // Freelance //

            Text(
              l10n.tsFreelance,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

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
            separator,
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
