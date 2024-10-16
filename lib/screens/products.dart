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

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  // Gather the theme data //

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  /// 'creators'
  static const String creators = 'creators';

  /// 'users'
  static const String users = 'users';

  String currentTab = creators;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.psPageTitle, Theme.of(context).colorScheme.primary);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        useImageDecoration: false,
        child: EzScrollView(
          children: <Widget>[
            // Mode switch
            SegmentedButton<String>(
              segments: <ButtonSegment<String>>[
                ButtonSegment<String>(
                  value: creators,
                  label: Text(l10n.psCreate),
                ),
                ButtonSegment<String>(
                  value: users,
                  label: Text(l10n.psUse),
                ),
              ],
              selected: <String>{currentTab},
              showSelectedIcon: false,
              onSelectionChanged: (Set<String> selected) =>
                  setState(() => currentTab = selected.first),
            ),
            const EzSpacer(),

            // Core view
            if (currentTab == creators)
              _CreatorProducts(
                textTheme: textTheme,
                l10n: l10n,
              )
            else
              _UserProducts(
                textTheme: textTheme,
                l10n: l10n,
              ),
            const EzSeparator(),
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}

class _CreatorProducts extends StatelessWidget {
  final TextTheme textTheme;
  final Lang l10n;

  const _CreatorProducts({
    required this.textTheme,
    required this.l10n,
  });

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();

  @override
  Widget build(BuildContext context) {
    final TextStyle? pitchStyle = textTheme.bodyLarge?.copyWith(
      fontSize: textTheme.titleLarge?.fontSize,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
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
          style: textTheme.headlineLarge!,
          textAlign: TextAlign.center,
          url: Uri.parse(efuiSource),
          semanticsLabel: EFUILang.of(context)!.gEFUISourceHint,
          tooltip: efuiSource,
        ),
        separator,

        // EFUI demo
        Text(
          'Like users who need...',
          style: pitchStyle,
          textAlign: TextAlign.center,
        ),
        spacer,
        const EFUIDemoButtons(),

        // Divider
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: widthOf(context) * 0.667),
          child: const Divider(),
        ),

        // Elevator pitch
        Text(
          l10n.psEFUIDescription,
          style: pitchStyle,
          textAlign: TextAlign.center,
        ),
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

        // Consultation call-out
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psEFUITagLine,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            l10n.gReachOut,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            onTap: () => context.goNamed(teamPath),
            semanticsLabel: l10n.gTeamHint,
          ),
          EzPlainText(
            text: l10n.psConsult,
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),

        // Divider
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: widthOf(context) * 0.667),
          child: const Divider(),
        ),

        // Open UI links
        Text(
          l10n.psLive,
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        const OpenUILinks(),
      ],
    );
  }
}

class _UserProducts extends StatelessWidget {
  final TextTheme textTheme;
  final Lang l10n;

  const _UserProducts({
    required this.textTheme,
    required this.l10n,
  });

  static const EzSpacer spacer = EzSpacer();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // Smoke Signal //

        // Headline
        Text(
          l10n.psComingSoon,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        spacer,

        // Icon
        Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.textScalerOf(context).scale(imageSize),
          ),
          child: EzLinkWidget(
            url: Uri.parse(smokeSignalSource),
            tooltip: l10n.psSignalHint,
            semanticLabel: l10n.psSignalHint,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(imageSize),
              child: const Image(image: smokeSignalImage),
            ),
          ),
        ),
        spacer,

        // Description
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psSignalPreview1,
            style: textTheme.bodyLarge,
            semanticsLabel: l10n.psSignalPreview1Fix,
          ),
          EzInlineLink(
            'Smoke Signal',
            style: textTheme.bodyLarge,
            url: Uri.parse(smokeSignalSource),
            semanticsLabel: smokeSignalSource,
          ),
          EzPlainText(
            text: l10n.psSignalPreview2,
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        spacer,

        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psSignalPreview3,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            'Activity Pub.',
            style: textTheme.bodyLarge,
            url: Uri.parse('https://www.w3.org/TR/activitypub/'),
            semanticsLabel: l10n.psAPHint,
          ),
        ], textAlign: TextAlign.center),
        const EzSeparator(),

        // Collaboration call-out
        EzRichText(<InlineSpan>[
          EzInlineLink(
            l10n.gReachOut,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            onTap: () => context.goNamed(teamPath),
            semanticsLabel: l10n.gTeamHint,
          ),
          EzPlainText(
            text: l10n.psLearnMore,
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
      ],
    );
  }
}
