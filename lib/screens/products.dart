/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  late final TextStyle? pitchStyle = textTheme.bodyLarge?.copyWith(
    fontSize: textTheme.titleLarge?.fontSize,
  );

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.psPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: <Widget>[
            // EFUI //

            // Intro
            Text(
              efuiL,
              style: textTheme.displayLarge,
              textAlign: TextAlign.center,
              semanticsLabel: efuiLFix,
            ),
            // Tagline
            EzLink(
              l10n.psEFUISlogan,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(efuiSource),
              semanticsLabel: EFUILang.of(context)!.gEFUISourceHint,
              tooltip: efuiSource,
            ),
            separator,

            // Elevator pitch
            EzRichText(<InlineSpan>[
              EzPlainText(text: l10n.psEFUIDescription1, style: pitchStyle),
              EzInlineLink(
                'Flutter',
                style: pitchStyle,
                textAlign: TextAlign.center,
                url: Uri.parse('https://flutter.dev/'),
                semanticsLabel: 'Flutter',
                tooltip: 'https://flutter.dev/',
              ),
              EzPlainText(text: l10n.psEFUIDescription2, style: pitchStyle),
            ], textAlign: TextAlign.center),
            separator,

            // Platform availability
            Text(
              l10n.psPlatform,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              l10n.psPlatformContent,
              semanticsLabel: l10n.psPlatformContentFix,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

            // Responsive design
            Text(
              l10n.psResponsive,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              l10n.psResponsiveContent,
              semanticsLabel: l10n.psResponsiveContentFix,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

            // Screen reader support
            Text(
              l10n.psScreen,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.psScreenContent,
                semanticsLabel: l10n.psScreenContentFix,
                style: textTheme.bodyLarge,
              ),
              EzInlineLink(
                'TalkBack',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'https://support.google.com/accessibility/android/answer/6006598?hl=en',
                ),
                semanticsLabel: l10n.psTalkBackHint,
              ),
              EzPlainText(text: l10n.psAnd, style: textTheme.bodyLarge),
              EzInlineLink(
                'VoiceOver',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios',
                ),
                semanticsLabel: l10n.psVoiceOverHint,
              ),
              EzPlainText(text: '.', style: textTheme.bodyLarge),
            ], textAlign: TextAlign.center),
            spacer,

            // User customization
            Text(
              l10n.psCustom,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),

            Text(
              l10n.psCustomContent,
              semanticsLabel: l10n.psCustomContentFix,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

            // Internationalization
            Text(
              l10n.psInternational,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            Text(
              l10n.psInternationalContent,
              semanticsLabel: l10n.psInternationalContentFix,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            separator,

            // Tag line
            Text(
              l10n.psEFUITagLine,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            separator,

            // Consultation call-out
            EzRichText(<InlineSpan>[
              EzInlineLink(
                l10n.gReachOut,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse('mailto:$empathAdmin'),
                semanticsLabel: l10n.gEmailTo(empatheticLLC),
              ),
              EzPlainText(
                text: l10n.psConsult,
                style: textTheme.bodyLarge,
              ),
            ], textAlign: TextAlign.center),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: widthOf(context) * (2 / 3)),
              child: const Divider(),
            ),

            // Live demos
            Text(
              l10n.psLive,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            OpenUILinks(bodyStyle: textTheme.bodyLarge),
            spacer,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
