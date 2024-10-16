/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:dotnet/screens/export.dart';

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

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(empathetech, Theme.of(context).colorScheme.primary);
  }

  // Return the build //

  bool fadeIn = false;

  @override
  Widget build(BuildContext context) {
    final double toolbarHeight = measureText(
          l10n.csPageTitle,
          context: context,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ).height +
        margin * 2;

    return DotnetScaffold(
      logo: Semantics(
        image: true,
        link: false,
        button: false,
        label: l10n.gLogoHint.split('.')[0],
        enabled: fadeIn,
        child: ExcludeSemantics(
          child: AnimatedOpacity(
            opacity: fadeIn ? 1.0 : 0.0,
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
                minWidth: widthOf(context),
                maxWidth: widthOf(context),
                minHeight: heightOf(context) / 3,
                maxHeight: heightOf(context) / 3,
              ),
              child: EmpathetechLogoAnimation(
                slogan: l10n.hsSlogan,
                sloganSemantics: l10n.hsSloganFix,
                videoSemantics: l10n.hsVideoHint,
                margin: margin,
                onComplete: () => setState(() => fadeIn = true),
              ),
            ),
            separator,

            // Mini-mission statement
            AnimatedOpacity(
              opacity: fadeIn ? 1.0 : 0.0,
              duration: const Duration(milliseconds: fadeTime),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  // People shouldn't be products
                  Text(
                    "People aren't products.",
                    style: textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  spacer,
                  Text(
                    "Well, they shouldn't be.",
                    style: pitchStyle,
                    textAlign: TextAlign.center,
                  ),
                  spacer,

                  // But we low-key are
                  EzRichText(<InlineSpan>[
                    EzPlainText(
                      text: 'The unfortunate reality is our identities, our ',
                      style: pitchStyle,
                    ),
                    EzPlainText(
                      text: 'data',
                      style: pitchStyle?.copyWith(fontStyle: FontStyle.italic),
                    ),
                    EzPlainText(
                      text: ", is big tech's latest gold rush.",
                      style: pitchStyle,
                    ),
                  ], textAlign: TextAlign.center),
                  spacer,

                  // mOvE fAsT aNd BrEaK tHiNgS
                  Text(
                    'And big tech sure does love to rush.\nThanks to their never-ending sprint, the dystopian sci-fi movies are coming true far too quickly.',
                    style: pitchStyle,
                    textAlign: TextAlign.center,
                  ),
                  spacer,
                  EzRichText(<InlineSpan>[
                    EzPlainText(
                      text:
                          "It's time to slow down.\nIt's time we had ownership of our digital selves.\nIt's time for a better ",
                      style: pitchStyle,
                    ),
                    EzInlineLink(
                      'plan.',
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
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
