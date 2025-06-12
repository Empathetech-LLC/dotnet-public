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

  final EzSpacer margin = EzMargin();
  final EdgeInsets wrapPadding = EzInsets.wrap(EzConfig.get(spacingKey));

  late final double imageSize = ezImageSize(context);

  late final Lang l10n = Lang.of(context)!;
  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final ColorScheme colorScheme = Theme.of(context).colorScheme;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, l10n.tsPageTitle);
  }

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
                  child: EzImageLink(
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
                Padding(
                  padding: wrapPadding,
                  child: _Ar(
                    l10n: l10n,
                    textTheme: textTheme,
                    margin: margin,
                    imageSize: imageSize,
                  ),
                ),
                Padding(
                  padding: wrapPadding,
                  child: _Es(
                    l10n: l10n,
                    textTheme: textTheme,
                    margin: margin,
                    imageSize: imageSize,
                  ),
                ),
                Padding(
                  padding: wrapPadding,
                  child: _Fil(
                    l10n: l10n,
                    textTheme: textTheme,
                    margin: margin,
                    imageSize: imageSize,
                  ),
                ),
                Padding(
                  padding: wrapPadding,
                  child: _Fr(
                    l10n: l10n,
                    textTheme: textTheme,
                    margin: margin,
                    imageSize: imageSize,
                  ),
                ),
                Padding(
                  padding: wrapPadding,
                  child: _Ht(
                    l10n: l10n,
                    textTheme: textTheme,
                    margin: margin,
                    imageSize: imageSize,
                  ),
                ),
                Padding(
                  padding: wrapPadding,
                  child: _Zh(
                    l10n: l10n,
                    textTheme: textTheme,
                    margin: margin,
                    imageSize: imageSize,
                  ),
                ),
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

// Credits Widgets //
// There is a fair amount of duplication here, but it's likely there will eventually be more than one translator per language
// So a little repetition is fine

class _Ar extends StatelessWidget {
  final Lang l10n;
  final TextTheme textTheme;
  final EzSpacer margin;
  final double imageSize;

  const _Ar({
    required this.l10n,
    required this.textTheme,
    required this.margin,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) => Column(
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
}

class _Es extends StatelessWidget {
  final Lang l10n;
  final TextTheme textTheme;
  final EzSpacer margin;
  final double imageSize;

  const _Es({
    required this.l10n,
    required this.textTheme,
    required this.margin,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) => Column(
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
}

class _Fil extends StatelessWidget {
  final Lang l10n;
  final TextTheme textTheme;
  final EzSpacer margin;
  final double imageSize;

  const _Fil({
    required this.l10n,
    required this.textTheme,
    required this.margin,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Avatar
          Container(
            constraints: EzBox.sym(imageSize),
            child: EzLinkWidget(
              isImage: true,
              url: Uri.parse(remalynLink),
              tooltip: remalynLink,
              label: l10n.tsProfile(remalyn),
              hint: l10n.gFiverrPage(remalyn),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(imageSize),
                child: const Image(image: remalynProfile, fit: BoxFit.contain),
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
                  l10n.tsFil,
                  style: textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                Text(
                  remalyn,
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      );
}

class _Fr extends StatelessWidget {
  final Lang l10n;
  final TextTheme textTheme;
  final EzSpacer margin;
  final double imageSize;

  const _Fr({
    required this.l10n,
    required this.textTheme,
    required this.margin,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) => Column(
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
}

class _Ht extends StatelessWidget {
  final Lang l10n;
  final TextTheme textTheme;
  final EzSpacer margin;
  final double imageSize;

  const _Ht({
    required this.l10n,
    required this.textTheme,
    required this.margin,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) => Column(
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
}

class _Zh extends StatelessWidget {
  final Lang l10n;
  final TextTheme textTheme;
  final EzSpacer margin;
  final double imageSize;

  const _Zh({
    required this.l10n,
    required this.textTheme,
    required this.margin,
    required this.imageSize,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Avatar
          Container(
            constraints: EzBox.sym(imageSize),
            child: EzLinkWidget(
              isImage: true,
              url: Uri.parse(hilariaLink),
              tooltip: hilariaLink,
              label: l10n.tsProfile(hilaria),
              hint: l10n.gFiverrPage(hilaria),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(imageSize),
                child: const Image(image: hilariaProfile, fit: BoxFit.contain),
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
                  l10n.tsZh,
                  style: textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                Text(
                  hilaria,
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      );
}
