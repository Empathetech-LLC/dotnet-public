/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';
import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class HomeScreen extends StatefulWidget {
  /// Whether the animation should play
  final bool fin;

  /// No place like it
  const HomeScreen({super.key, this.fin = false});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Gather the fixed theme data //

  static const EzSeparator separator = EzSeparator();

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);

  late final Lang l10n = Lang.of(context)!;

  /// 0.667 <= [displayScale] <= 1.5
  late final double displayScale = max(
    0.667,
    min(
      1.5,
      (EzConfig.get(displayFontSizeKey) ?? defaultDisplaySize) /
          defaultDisplaySize,
    ),
  );

  late final double toolbarHeight =
      ezToolbarHeight(context: context, title: l10n.csPageTitle);

  // Define the build data //

  late bool fin = widget.fin || GoRouter.of(context).state.uri.path != homePath;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, empathetech);
  }

  @override
  Widget build(BuildContext context) {
    // Gather the dynamic theme data //

    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle? subTitle = ezSubTitleStyle(textTheme);

    final double sloganHeight =
        max(spacing * 7, (heightOf(context) / 3) * displayScale);

    final Widget newLine = EzNewLine(
      style: subTitle,
      textAlign: TextAlign.center,
    );

    // Return the build //

    return DotnetScaffold(
      EzScreen(
        EzScrollView(children: <Widget>[
          // Video
          Container(
            color: Theme.of(context).colorScheme.surfaceContainer,
            constraints: BoxConstraints(
              minWidth: double.infinity,
              maxWidth: double.infinity,
              minHeight: sloganHeight,
              maxHeight: sloganHeight,
            ),
            child: EzSwapWidget(
              restricted: EmpathetechLogoAnimation(
                margin: margin,
                height: sloganHeight,
                letterRatio: 0.90,
                finSpacing: spacing * 2,
                slogan: l10n.hsSlogan,
                sloganSemantics: l10n.hsSloganFix,
                videoSemantics: l10n.hsVideoLabel,
                play: mounted && !fin,
                onComplete: () {
                  if (!fin) setState(() => fin = true);
                },
              ),
              expanded: EmpathetechLogoAnimation(
                margin: margin,
                height: sloganHeight,
                letterRatio: 0.75,
                finSpacing: spacing * 2,
                slogan: l10n.hsSlogan,
                sloganSemantics: l10n.hsSloganFix,
                videoSemantics: l10n.hsVideoLabel,
                play: mounted && !fin,
                onComplete: () {
                  if (!fin) setState(() => fin = true);
                },
              ),
            ),
          ),
          separator,

          // Mini-mission statement
          AnimatedOpacity(
            opacity: fin ? 1.0 : 0.0,
            duration: const Duration(milliseconds: fadeTime),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // People shouldn't be products
                EzText(
                  l10n.hsPeople,
                  style: textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                EzText(
                  l10n.hsWell,
                  style: subTitle,
                  textAlign: TextAlign.center,
                ),
                newLine,

                // But our data is
                EzRichText(<InlineSpan>[
                  EzPlainText(text: l10n.hsReality, style: subTitle),
                  EzPlainText(
                    text: l10n.hsData,
                    style: subTitle?.copyWith(fontStyle: FontStyle.italic),
                  ),
                  EzPlainText(text: l10n.hsGold, style: subTitle),
                ], textAlign: TextAlign.center),
                newLine,

                // How about !(move fast && break things)
                EzText(
                  l10n.hsRush,
                  style: subTitle,
                  textAlign: TextAlign.center,
                ),
                newLine,
                EzRichText(
                  key: UniqueKey(), // Include for selectable registrar
                  <InlineSpan>[
                    EzPlainText(text: l10n.hsSlow, style: subTitle),
                    EzInlineLink(
                      l10n.hsPlan,
                      style: subTitle,
                      textAlign: TextAlign.center,
                      url: Uri.parse(missionURL),
                      hint: l10n.gMissionHint,
                    ),
                  ],
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          separator,
          const EzTranslationsPendingNotice(),
        ]),
        margin: EdgeInsets.zero,
      ),
      logo: Semantics(
        image: true,
        link: false,
        button: false,
        label: l10n.gLogoLabel(empatheticLLC),
        enabled: fin,
        excludeSemantics: !fin,
        child: ExcludeSemantics(
          child: AnimatedOpacity(
            opacity: fin ? 1.0 : 0.0,
            duration: const Duration(milliseconds: fadeTime),
            child: SizedBox(
              width: toolbarHeight,
              height: toolbarHeight,
              child: EmpathetechLogo(margin: margin),
            ),
          ),
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
