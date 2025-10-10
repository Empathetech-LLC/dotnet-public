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
  // Gather the fixed theme data //

  final EdgeInsets linkPadding = EzInsets.wrap(EzConfig.get(marginKey));

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
    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle? subTitle = ezSubTitleStyle(textTheme);

    return DotnetScaffold(
      EzScreen(
        EzScrollView(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Headline && slogan (link)
            EzText(
              openUI,
              style: textTheme.displayLarge,
              textAlign: TextAlign.center,
            ),
            EzLink(
              l10n.ouSlogan,
              style: textTheme.headlineLarge!,
              padding: linkPadding,
              textAlign: TextAlign.center,
              url: url,
              hint: l10n.gDownloadHint(openUI, dlType.name),
            ),
            ezCenterLine,

            // Demo
            EzText(
              l10n.ouLike,
              style: subTitle,
              textAlign: TextAlign.center,
            ),
            ezMargin,
            const EFUIDemo(),
            ezDivider,

            // Use it in a sentence
            EzText(
              l10n.ouIs,
              style: subTitle,
              textAlign: TextAlign.center,
            ),

            // Video
            const _DemoVideo(),
            ezSpacer,

            // Description
            EzText(
              l10n.ouFoundation,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            EzText(
              l10n.ouLocal,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            EzText(
              l10n.ouRequirements,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            ezCenterLine,
            EzText(
              l10n.ouFlutterToo,
              style: textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            ezDivider,

            // EFUI //

            // How it works
            EzText(
              l10n.ouHow,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.ouEFUIsHow,
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
                text: '.\n',
                style: textTheme.bodyLarge,
              ),
              EzPlainText(
                text: l10n.ouSimplifies,
                style: textTheme.bodyLarge,
              ),
            ], textAlign: TextAlign.center),
            ezSeparator,

            // Platform availability
            EzText(
              l10n.ouPlatform,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            EzText(
              l10n.ouPlatformContent,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            ezCenterLine,

            // Responsive design
            EzText(
              l10n.ouResponsive,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            EzText(
              l10n.ouResponsiveContent,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            ezCenterLine,

            // Screen reader support
            EzText(
              l10n.ouScreen,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.ouScreenContent,
                semanticsLabel: l10n.ouScreenContentFix,
                style: textTheme.bodyLarge,
              ),
              EzInlineLink(
                'TalkBack',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'https://support.google.com/accessibility/android/answer/6006598?hl=en',
                ),
                hint: l10n.ouTalkBackHint,
              ),
              EzPlainText(text: l10n.ouAnd, style: textTheme.bodyLarge),
              EzInlineLink(
                'VoiceOver',
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios',
                ),
                hint: l10n.ouVoiceOverHint,
              ),
              EzPlainText(text: '.', style: textTheme.bodyLarge),
            ], textAlign: TextAlign.center),
            ezCenterLine,

            // User customization
            EzText(
              l10n.ouCustom,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            EzText(
              l10n.ouCustomContent,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            ezCenterLine,

            // Internationalization
            EzText(
              l10n.ouInternational,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            EzText(
              l10n.ouInternationalContent,
              semanticsLabel: l10n.ouInternationalContentFix,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            ezCenterLine,

            // Reliability
            EzText(
              l10n.ouReliability,
              style: textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            EzText(
              l10n.ouReliabilityContent,
              semanticsLabel: l10n.ouReliabilityContentFix,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            ezSeparator,

            // Tag line && consultation call-out
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.ouEFUITagLine,
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
                text: l10n.ouConsult,
                style: textTheme.bodyLarge,
              ),
            ], textAlign: TextAlign.center),
            ezDivider,

            // Download Open UI (again) //

            EzText(
              l10n.ouGetStarted,
              style: subTitle,
              textAlign: TextAlign.center,
            ),
            ezMargin,
            const OpenUILink(),

            ezSeparator,
            const EzTranslationsPendingNotice(),
          ],
        ),
      ),
      fabs: <Widget>[
        EzConfigFAB(context, appName: appName, androidPackage: null),
        ezSpacer,
        const SettingsFAB(),
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
  // Gather the fixed theme data //

  final TargetPlatform platform = getBasePlatform();

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
        ezSpacer,

        // Video
        Visibility(
          visible: showVideo,
          child: Padding(
            padding: EdgeInsets.only(bottom: EzConfig.get(spacingKey)),
            child: EzVideoPlayer(
              controller: controller,
              aspectRatio: 34 / 19,
              maxWidth: widthOf(context) * 0.90,
              maxHeight: heightOf(context) * 0.80,
              backgroundColor: Colors.black,
              semantics: l10n.ouDemo,
              volumeVis: EzButtonVis.alwaysOff,
              variableVolume: false,
              autoPlay: false,
            ),
          ),
        ),

        // Show/Hide
        showVideo
            ? EzElevatedIconButton(
                onPressed: () => setState(() => showVideo = false),
                icon: Icon(PlatformIcons(context).eyeSlashSolid),
                label: l10n.psHideDemo,
              )
            : EzElevatedIconButton(
                onPressed: () => setState(() => showVideo = true),
                icon: Icon(PlatformIcons(context).eyeSolid),
                label: l10n.psShowDemo,
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
