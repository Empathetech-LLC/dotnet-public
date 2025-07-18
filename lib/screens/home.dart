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
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class HomeScreen extends StatefulWidget {
  /// No place like it
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();

  late final Lang l10n = Lang.of(context)!;

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final TextStyle? subTitle = ezSubTitleStyle(textTheme);

  final double margin = EzConfig.get(marginKey);

  /// 0.667 <= [displayScale] <= 1.5
  late final double displayScale = max(
    0.667,
    min(
      1.5,
      (EzConfig.get(displayFontSizeKey) ?? defaultDisplaySize) /
          defaultDisplaySize,
    ),
  );

  late final double toolbarHeight = ezToolbarHeight(context, l10n.csPageTitle);

  late final double sloganWidth = widthOf(context);
  late final double sloganHeight = (heightOf(context) / 3) * displayScale;

  // Define build data //

  late bool animFin;

  // Init //

  @override
  void initState() {
    super.initState();
    Navigator.canPop(context) ? animFin = true : animFin = false;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, empathetech);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      logo: Semantics(
        image: true,
        link: false,
        button: false,
        label: l10n.gLogoLabel(empatheticLLC),
        enabled: animFin,
        excludeSemantics: !animFin,
        child: ExcludeSemantics(
          child: AnimatedOpacity(
            opacity: animFin ? 1.0 : 0.0,
            duration: const Duration(milliseconds: fadeTime),
            child: SizedBox(
              width: toolbarHeight,
              height: toolbarHeight,
              child: EmpathetechLogo(margin: margin),
            ),
          ),
        ),
      ),
      body: EzScreen(
        EzScrollView(
          children: <Widget>[
            // Video
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: sloganWidth,
                maxWidth: sloganWidth,
                minHeight: sloganHeight,
                maxHeight: sloganHeight,
              ),
              child: EmpathetechLogoAnimation(
                margin: margin,
                height: sloganHeight,
                slogan: l10n.hsSlogan,
                sloganSemantics: l10n.hsSloganFix,
                videoSemantics: l10n.hsVideoLabel,
                play: !animFin,
                onComplete: () {
                  if (!animFin) setState(() => animFin = true);
                },
              ),
            ),
            separator,

            // Mini-mission statement
            AnimatedOpacity(
              opacity: animFin ? 1.0 : 0.0,
              duration: const Duration(milliseconds: fadeTime),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // People shouldn't be products
                  Text(
                    l10n.hsPeople,
                    style: textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  spacer,
                  Text(
                    l10n.hsWell,
                    style: subTitle,
                    textAlign: TextAlign.center,
                  ),
                  spacer,

                  // But our data is
                  EzRichText(<InlineSpan>[
                    EzPlainText(text: l10n.hsReality, style: subTitle),
                    EzPlainText(
                      text: l10n.hsData,
                      style: subTitle?.copyWith(fontStyle: FontStyle.italic),
                    ),
                    EzPlainText(text: l10n.hsGold, style: subTitle),
                  ], textAlign: TextAlign.center),
                  spacer,

                  // How about !(move fast && break things)
                  Text(
                    l10n.hsRush,
                    style: subTitle,
                    textAlign: TextAlign.center,
                  ),
                  spacer,
                  EzRichText(<InlineSpan>[
                    EzPlainText(text: l10n.hsSlow, style: subTitle),
                    EzInlineLink(
                      l10n.hsPlan,
                      style: subTitle,
                      textAlign: TextAlign.center,
                      url: Uri.parse(missionURL),
                      hint: l10n.gMissionHint,
                    ),
                  ], textAlign: TextAlign.center),
                ],
              ),
            ),
            separator,
            const EzTranslationsPendingNotice(),
          ],
        ),
        useImageDecoration: false,
      ),
      fab: SettingsFAB(context),
    );
  }
}
