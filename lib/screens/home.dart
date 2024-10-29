/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';
import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:efui_bios/efui_bios.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);

  late bool isDark = isDarkTheme(context);

  late final Lang l10n = Lang.of(context)!;

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final TextStyle? pitchStyle = textTheme.bodyLarge?.copyWith(
    fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
  );

  // Define build data //

  late bool animFin;

  @override
  void initState() {
    super.initState();
    Navigator.canPop(context) ? animFin = true : animFin = false;
  }

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(empathetech, Theme.of(context).colorScheme.primary);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    final double toolbarHeight = measureText(
          l10n.csPageTitle,
          context: context,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ).height +
        margin * 2;

    final double sloganWidth = widthOf(context);
    final double sloganHeight = heightOf(context) / 3;

    return DotnetScaffold(
      logo: Semantics(
        image: true,
        link: false,
        button: false,
        label: l10n.gLogoHint.split('.')[0],
        enabled: animFin,
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
        useImageDecoration: false,
        child: EzScrollView(
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
                videoSemantics: l10n.hsVideoHint,
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
                    style: pitchStyle,
                    textAlign: TextAlign.center,
                  ),
                  spacer,

                  // But our data is
                  EzRichText(<InlineSpan>[
                    EzPlainText(text: l10n.hsReality, style: pitchStyle),
                    EzPlainText(
                      text: l10n.hsData,
                      style: pitchStyle?.copyWith(fontStyle: FontStyle.italic),
                    ),
                    EzPlainText(text: l10n.hsGold, style: pitchStyle),
                  ], textAlign: TextAlign.center),
                  spacer,

                  // How about !(move fast && break things)
                  Text(
                    l10n.hsRush,
                    style: pitchStyle,
                    textAlign: TextAlign.center,
                  ),
                  spacer,
                  EzRichText(<InlineSpan>[
                    EzPlainText(text: l10n.hsSlow, style: pitchStyle),
                    EzInlineLink(
                      l10n.hsPlan,
                      style: pitchStyle,
                      textAlign: TextAlign.center,
                      onTap: () => context.goNamed(missionPath),
                      semanticsLabel: l10n.gMissionHint,
                    ),
                  ], textAlign: TextAlign.center),
                ],
              ),
            ),
            separator,
            const EzTranslationsPendingNotice(),
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
