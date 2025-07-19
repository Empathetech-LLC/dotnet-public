/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class OpenUIScreen extends StatefulWidget {
  const OpenUIScreen({super.key});

  @override
  State<OpenUIScreen> createState() => _OpenUIScreenState();
}

class _OpenUIScreenState extends State<OpenUIScreen> {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();
  static const EzDivider divider = EzDivider();

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final TextStyle? subTitle = ezSubTitleStyle(textTheme);

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  final TargetPlatform basePlatform = getBasePlatform();
  late final DLType dlType;
  late final String latest;
  Uri url = Uri.parse(openUIReleases);

  // Define custom functions //

  /// Set the download link
  void initUrl() async {
    switch (basePlatform) {
      case TargetPlatform.android:
        dlType = DLType.gPlay;
        break;
      case TargetPlatform.iOS:
        dlType = DLType.iOS;
        break;
      case TargetPlatform.macOS:
        dlType = DLType.macOS;
        break;
      case TargetPlatform.windows:
        dlType = DLType.windows;
        break;
      default:
        dlType = DLType.deb;
        break;
    }

    latest = await getLatest('empathetech_flutter_ui', efuiFallback);
    url = await openUIDownload(dlType, latest) ?? url;
    if (mounted) setState(() {});
  }

  // Init //

  @override
  void initState() {
    super.initState();
    initUrl();
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      EzScreen(
        EzScrollView(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Open UI intro/demo //

            // Title
            Text(
              openUI,
              style: textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),

            // Slogan
            EzLink(
              l10n.psOpenUISlogan,
              style: textTheme.headlineLarge!,
              textAlign: TextAlign.center,
              url: url,
              hint: l10n.gDownloadHint(openUI, dlType.name),
            ),
            separator,

            // Demo
            Text(
              l10n.psLike,
              style: subTitle,
              textAlign: TextAlign.center,
            ),
            spacer,
            const EFUIDemo(),
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
                url: Uri.parse(efuiGitHub),
                hint: ezL10n(context).gEFUISourceHint,
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
                url: Uri.parse(teamURL),
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
              l10n.psGetStarted,
              style: subTitle,
              textAlign: TextAlign.center,
            ),
            const OpenUILink(),

            separator,
            const EzTranslationsPendingNotice(),
          ],
        ),
      ),
      fab: SettingsFAB(context),
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
