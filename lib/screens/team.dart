/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class TeamScreen extends StatefulWidget {
  /// I believe
  /// I believe that...
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();
  static const EzDivider divider = EzDivider();

  late final EzSpacer margin = EzMargin();
  late final double imageSize = ezImageSize(context);

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final ColorScheme colorScheme = Theme.of(context).colorScheme;

  late final Lang l10n = Lang.of(context)!;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, l10n.tsPageTitle);
  }

  // Define custom widgets //

  late final EdgeInsets wrapPadding = EzInsets.wrap(EzConfig.get(spacingKey));

  late final Widget arCredits = Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      // Avatar
      Container(
        constraints: EzBox.sym(imageSize),
        child: EzLinkWidget(
          isImage: true,
          url: Uri.parse(yasminSLink),
          tooltip: yasminSLink,
          label: l10n.tsProfile(yasminS),
          hint: l10n.gFiverrPage(yasminS),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(imageSize),
            child: const Image(image: yasminSProfile, fit: BoxFit.contain),
          ),
        ),
      ),
      margin,

      // Information
      MergeSemantics(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              l10n.tsAr,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              yasminS,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ],
  );

  late final Widget esCredits = Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      // Avatar
      Container(
        constraints: EzBox.sym(imageSize),
        child: EzLinkWidget(
          isImage: true,
          url: Uri.parse(saraHLink),
          tooltip: saraHLink,
          label: l10n.tsProfile(saraH),
          hint: l10n.gFiverrPage(saraH),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(imageSize),
            child: const Image(image: saraHProfile, fit: BoxFit.contain),
          ),
        ),
      ),
      margin,

      // Information
      MergeSemantics(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              l10n.tsEs,
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

  late final Widget frCredits = Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      // Avatar
      Container(
        constraints: EzBox.sym(imageSize),
        child: EzLinkWidget(
          isImage: true,
          url: Uri.parse(alexisNLink),
          label: l10n.tsProfile(alexisN),
          hint: l10n.gFiverrPage(alexisN),
          tooltip: alexisNLink,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(imageSize),
            child: const Image(image: alexisNProfile, fit: BoxFit.contain),
          ),
        ),
      ),
      margin,

      // Information
      MergeSemantics(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              l10n.tsFr,
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

  late final Widget htCredits = Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      // Avatar
      Container(
        constraints: EzBox.sym(imageSize),
        child: EzLinkWidget(
          isImage: true,
          url: Uri.parse(carlyLink),
          tooltip: carlyLink,
          label: l10n.tsProfile(carly),
          hint: l10n.gFiverrPage(carly),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(imageSize),
            child: const Image(image: carlyProfile, fit: BoxFit.contain),
          ),
        ),
      ),
      margin,

      // Information
      MergeSemantics(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              l10n.tsHt,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              carly,
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
                  // Not an ego thing I swear
                  // The image gets super pixelated if it's too small
                  constraints: EzBox.sym(imageSize * 1.333),
                  child: EzLinkImageProvider(
                    image: founderImage,
                    fit: BoxFit.contain,
                    label: l10n.tsTheFounderLabel,
                    hint: l10n.tsTheFounderHint,
                    url: Uri.parse(
                      'mailto:$empathFounder?subject=Becoming%20a%20contributor',
                    ),
                    tooltip: l10n.tsTheFounderHint,
                  ),
                ),
                EzSwapMargin(),

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
            divider,

            // Community //

            EzLink(
              l10n.tsCommunity,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
              textColor: colorScheme.onSurface,
              decorationColor: colorScheme.primary,
              onTap: () => context.goNamed(contributePath),
              hint: l10n.gContributeHint,
            ),
            spacer,

            // Folding@home
            const FaHBanner(),
            divider,

            // Freelance //

            Text(
              l10n.tsFreelance,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Padding(padding: wrapPadding, child: arCredits),
                Padding(padding: wrapPadding, child: esCredits),
                Padding(padding: wrapPadding, child: frCredits),
                Padding(padding: wrapPadding, child: htCredits),
              ],
            ),
            separator,
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
