/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
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
  HomeScreen({this.fin = false}) : super(key: ValueKey<int>(EzConfig.seed));

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Define the build data //

  late bool fin = widget.fin || GoRouter.of(context).state.uri.path != homePath;

  Widget animation({
    required Lang l10n,
    required double sloganHeight,
    required double letterRatio,
  }) =>
      LogoAnimation(
        key: ValueKey<double>(letterRatio),
        margin: EzConfig.marginVal,
        height: sloganHeight,
        letterRatio: letterRatio,
        finSpacing: EzConfig.spacing * 2,
        slogan: l10n.hsSlogan,
        sloganSemantics: l10n.hsSloganFix,
        videoSemantics: l10n.hsVideoLabel,
        play: mounted && !fin,
        onComplete: () {
          if (!fin) setState(() => fin = true);
        },
      );

  // Set the page title //

  @override
  void initState() {
    super.initState();
    ezWindowNamer(empathetech);
  }

  @override
  Widget build(BuildContext context) {
    // Gather the contextual theme data //

    final TextStyle? subTitle = ezSubTitleStyle();
    final Widget newLine =
        EzNewLine(style: subTitle, textAlign: TextAlign.center);

    /// 0.667 <= [displayScale] <= 1.5
    final double displayScale = max(
      0.667,
      min(
        1.5,
        (EzConfig.styles.displayLarge?.fontSize ?? defaultDisplaySize) /
            defaultDisplaySize,
      ),
    );

    final double toolbarHeight =
        ezToolbarHeight(context: context, title: l10n.csPageTitle);
    final double sloganHeight =
        max(EzConfig.spacing * 7, (heightOf(context) / 3) * displayScale);

    // Return the build //

    return DotnetScaffold(
      EzScreen(
        EzScrollView(children: <Widget>[
          // Video
          Container(
            color: EzConfig.colors.surfaceContainer,
            constraints: BoxConstraints(
              minWidth: double.infinity,
              maxWidth: double.infinity,
              minHeight: sloganHeight,
              maxHeight: sloganHeight,
            ),
            child: EzAdaptiveWidget(
              small: animation(
                l10n: l10n,
                sloganHeight: sloganHeight,
                letterRatio: 0.9,
              ),
              medium: animation(
                l10n: l10n,
                sloganHeight: sloganHeight,
                letterRatio: 0.75,
              ),
              large: animation(
                l10n: l10n,
                sloganHeight: sloganHeight,
                letterRatio: 0.667,
              ),
            ),
          ),
          EzConfig.separator,

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
                  style: EzConfig.styles.headlineLarge,
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
                  // Inclue a key for the selectable registrar
                  // ...tbhidkybiwsdri
                  key: UniqueKey(),
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
          EzConfig.separator,
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
              child: Logo(margin: EzConfig.marginVal),
            ),
          ),
        ),
      ),
      fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
    );
  }
}
