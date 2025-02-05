/* dotnet
 * Copyright (c) 2022-2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

enum Products { openUI, smokeSignal }

extension Path on Products {
  String get path {
    switch (this) {
      case Products.openUI:
        return 'open-ui';
      case Products.smokeSignal:
        return 'smoke-signal';
    }
  }
}

class ProductsScreen extends StatefulWidget {
  final Products? target;

  /// Do you like stuff? We got stuff!
  const ProductsScreen({super.key, this.target});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  // Gather the theme data //

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  late Products currentTab = widget.target ?? Products.openUI;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(l10n.psPageTitle, Theme.of(context).colorScheme.primary);
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
            SegmentedButton<Products>(
              segments: <ButtonSegment<Products>>[
                ButtonSegment<Products>(
                  value: Products.openUI,
                  label: Text(l10n.psCreate),
                ),
                ButtonSegment<Products>(
                  value: Products.smokeSignal,
                  label: Text(l10n.psUse),
                ),
              ],
              selected: <Products>{currentTab},
              showSelectedIcon: false,
              onSelectionChanged: (Set<Products> selected) =>
                  setState(() => currentTab = selected.first),
            ),
            const EzSpacer(),

            // Core view
            if (currentTab == Products.openUI)
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
            const EzTranslationsPendingNotice(),
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
    final Widget divider = ConstrainedBox(
      constraints: BoxConstraints(maxWidth: widthOf(context) * 0.667),
      child: const Divider(),
    );

    final TextStyle? subTitle = ezSubTitleStyle(textTheme);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // Open UI intro/demo //

        // Title
        Text(
          'Open UI',
          style: textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),

        // Slogan
        EzLink(
          l10n.psSlogan,
          style: textTheme.headlineLarge!,
          textAlign: TextAlign.center,
          onTap: () async {
            final String latest = await getLatest();

            if (context.mounted) {
              final Uri? url = await openUIDownload(
                context,
                getBasePlatform(context),
                latest,
              );
              url == null ? doNothing : launchUrl(url);
            }
          },
          hint: l10n.psSloganHint,
        ),
        separator,

        // Demo
        Text(
          l10n.psLike,
          style: subTitle,
          textAlign: TextAlign.center,
        ),
        spacer,
        const DemoButtons(),
        divider,

        // Open UI video && description //

        // Header
        Text(
          l10n.psOpenUIIs,
          style: subTitle,
          textAlign: TextAlign.center,
        ),

        // Video
        const _DemoVideo(),
        separator,

        // Description
        Text(
          l10n.psFoundation,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        spacer,
        Text(
          l10n.psLocal,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        spacer,
        Text(
          l10n.psRequirements,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        separator,
        Text(
          l10n.psFlutterToo,
          style: textTheme.labelLarge,
          textAlign: TextAlign.center,
        ),
        divider,

        // EFUI //

        // How?

        Text(
          l10n.psHow,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        spacer,

        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psEFUIsHow,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            efuiL,
            richLabel: efuiLFix,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            onTap: () => launchUrl(Uri.parse(efuiGitHub)),
            hint: EFUILang.of(context)!.gEFUISourceHint,
          ),
          EzPlainText(
            text: '.',
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        spacer,

        // Elevator pitch
        Text(
          l10n.psSimplifies,
          style: textTheme.bodyLarge,
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
            hint: l10n.psTalkBackHint,
          ),
          EzPlainText(text: l10n.psAnd, style: textTheme.bodyLarge),
          EzInlineLink(
            'VoiceOver',
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(
              'https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios',
            ),
            hint: l10n.psVoiceOverHint,
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

        // Tag line && consultation call-out
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
            hint: l10n.gTeamHint,
          ),
          EzPlainText(
            text: l10n.psConsult,
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        divider,

        // Download Open UI (again) //

        Text(
          l10n.psStart,
          style: subTitle,
          textAlign: TextAlign.center,
        ),
        const OpenUILink(),
      ],
    );
  }
}

class _DemoVideo extends StatefulWidget {
  const _DemoVideo();

  @override
  State<_DemoVideo> createState() => _DemoVideoState();
}

class _DemoVideoState extends State<_DemoVideo> {
  // Gather the theme data //

  late final ColorScheme colorScheme = Theme.of(context).colorScheme;
  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  final VideoPlayerController controller =
      VideoPlayerController.asset(openUIDemoPath);

  bool showVideo = false;

  // Init //

  @override
  void initState() {
    super.initState();
    controller.initialize().then((_) => setState(() {}));
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const EzSpacer(),

        // Show
        Visibility(
          visible: !showVideo,
          child: EzElevatedIconButton(
            onPressed: () => setState(() => showVideo = true),
            icon: Icon(PlatformIcons(context).eyeSolid),
            label: l10n.psShowDemo,
          ),
        ),

        // Video
        Visibility(
          visible: showVideo,
          child: EzVideoPlayer(
            controller: controller,
            aspectRatio: 34 / 19,
            maxHeight: heightOf(context) * 0.80,
            maxWidth: widthOf(context) * 0.90,
            backgroundColor: Colors.black,
            semantics: l10n.psOpenUIDemo,
            volumeVis: EzButtonVis.alwaysOff,
            variableVolume: false,
            autoPlay: false,
          ),
        ),

        // Hide
        Visibility(
          visible: showVideo,
          child: Padding(
            padding: EdgeInsets.only(top: EzConfig.get(spacingKey)),
            child: EzElevatedIconButton(
              onPressed: () => setState(() => showVideo = false),
              icon: Icon(PlatformIcons(context).eyeSlashSolid),
              label: l10n.psHideDemo,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
    final double imageSize = ezImageSize(context);
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
          constraints: EzBox.sym(imageSize),
          child: EzLinkWidget(
            url: Uri.parse(smokeSignalSource),
            tooltip: l10n.psSignalHint,
            label: l10n.psSignalLabel,
            hint: l10n.psSignalHint,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(imageSize),
              child: const Image(image: smokeSignalImage, fit: BoxFit.contain),
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
            textAlign: TextAlign.center,
            url: Uri.parse(smokeSignalSource),
            hint: smokeSignalSource,
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
            textAlign: TextAlign.center,
            url: Uri.parse('https://www.w3.org/TR/activitypub/'),
            hint: l10n.psAPHint,
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
            hint: l10n.gTeamHint,
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
