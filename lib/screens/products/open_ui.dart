/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class OpenUIScreen extends StatefulWidget {
  OpenUIScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  State<OpenUIScreen> createState() => _OpenUIScreenState();
}

class _OpenUIScreenState extends State<OpenUIScreen> {
  // Define the build data //

  late final DLType dlType;
  late final String latest;
  Uri url = Uri.parse(openUIReleases);

  // Define custom functions //

  void redraw() => setState(() {});

  /// Set the download link
  void initUrl() async {
    switch (EzConfig.platform) {
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
    url = openUIDownload(dlType, latest);
    redraw();
  }

  // Init //

  @override
  void initState() {
    super.initState();
    initUrl();
  }

  @override
  Widget build(BuildContext context) => DotnetScaffold(
        EzScreen(
          EzScrollView(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Headline && slogan (link)
              EzText(
                openUI,
                style: EzConfig.styles.displayLarge,
                textAlign: TextAlign.center,
              ),
              EzLink(
                l10n.ouSlogan,
                style: EzConfig.styles.headlineLarge!,
                padding: EzInsets.wrap(EzConfig.marginVal),
                textAlign: TextAlign.center,
                url: url,
                hint: l10n.gDownloadHint(openUI, dlType.name),
              ),
              EzConfig.spacer,

              // Demo
              EzText(
                l10n.ouLike,
                style: ezSubTitleStyle(),
                textAlign: TextAlign.center,
              ),
              EzConfig.margin,
              EFUIDemo(redraw),
              EzConfig.divider,

              // Use it in a sentence
              EzText(
                l10n.ouIs,
                style: ezSubTitleStyle(),
                textAlign: TextAlign.center,
              ),

              // Video
              const _DemoVideo(),
              EzConfig.spacer,

              // Description
              EzText(
                l10n.ouFoundation,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzText(
                l10n.ouLocal,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzText(
                l10n.ouRequirements,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzConfig.centerLine,
              EzText(
                l10n.ouFlutterToo,
                style: EzConfig.styles.labelLarge,
                textAlign: TextAlign.center,
              ),
              EzConfig.divider,

              // EFUI //

              // How it works
              EzText(
                l10n.ouHow,
                style: EzConfig.styles.headlineLarge,
                textAlign: TextAlign.center,
              ),
              EzRichText(<InlineSpan>[
                EzPlainText(
                    text: l10n.ouEFUIsHow, style: EzConfig.styles.bodyLarge),
                EzInlineLink(
                  efuiL,
                  richLabel: efuiLFix,
                  style: EzConfig.styles.bodyLarge,
                  textAlign: TextAlign.center,
                  url: Uri.parse(efuiGitHub),
                  hint: EzConfig.l10n.gEFUISourceHint,
                ),
                EzPlainText(text: '.\n', style: EzConfig.styles.bodyLarge),
                EzPlainText(
                    text: l10n.ouSimplifies, style: EzConfig.styles.bodyLarge),
              ], textAlign: TextAlign.center),
              EzConfig.centerLine,
              EzConfig.centerLine,

              // Platform availability
              EzText(
                l10n.ouPlatform,
                style: EzConfig.styles.titleLarge,
                textAlign: TextAlign.center,
              ),
              EzText(
                l10n.ouPlatformContent,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzConfig.centerLine,

              // Responsive design
              EzText(
                l10n.ouResponsive,
                style: EzConfig.styles.titleLarge,
                textAlign: TextAlign.center,
              ),
              EzText(
                l10n.ouResponsiveContent,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzConfig.centerLine,

              // Screen reader support
              EzText(
                l10n.ouScreen,
                style: EzConfig.styles.titleLarge,
                textAlign: TextAlign.center,
              ),
              EzRichText(<InlineSpan>[
                EzPlainText(
                  text: l10n.ouScreenContent,
                  semanticsLabel: l10n.ouScreenContentFix,
                  style: EzConfig.styles.bodyLarge,
                ),
                EzInlineLink(
                  'TalkBack',
                  style: EzConfig.styles.bodyLarge,
                  textAlign: TextAlign.center,
                  url: Uri.parse(
                    'https://support.google.com/accessibility/android/answer/6006598?hl=en',
                  ),
                  hint: l10n.ouTalkBackHint,
                ),
                EzPlainText(text: l10n.ouAnd, style: EzConfig.styles.bodyLarge),
                EzInlineLink(
                  'VoiceOver',
                  style: EzConfig.styles.bodyLarge,
                  textAlign: TextAlign.center,
                  url: Uri.parse(
                    'https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios',
                  ),
                  hint: l10n.ouVoiceOverHint,
                ),
                EzPlainText(text: '.', style: EzConfig.styles.bodyLarge),
              ], textAlign: TextAlign.center),
              EzConfig.centerLine,

              // User customization
              EzText(
                l10n.ouCustom,
                style: EzConfig.styles.titleLarge,
                textAlign: TextAlign.center,
              ),
              EzText(
                l10n.ouCustomContent,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzConfig.centerLine,

              // Internationalization
              EzText(
                l10n.ouInternational,
                style: EzConfig.styles.titleLarge,
                textAlign: TextAlign.center,
              ),
              EzText(
                l10n.ouInternationalContent,
                semanticsLabel: l10n.ouInternationalContentFix,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzConfig.centerLine,

              // Reliability
              EzText(
                l10n.ouReliability,
                style: EzConfig.styles.titleLarge,
                textAlign: TextAlign.center,
              ),
              EzText(
                l10n.ouReliabilityContent,
                semanticsLabel: l10n.ouReliabilityContentFix,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              EzConfig.centerLine,
              EzConfig.centerLine,

              // Tag line && consultation call-out
              EzRichText(<InlineSpan>[
                EzPlainText(
                    text: l10n.ouEFUITagLine, style: EzConfig.styles.bodyLarge),
                EzInlineLink(
                  l10n.gReachOut,
                  style: EzConfig.styles.bodyLarge,
                  textAlign: TextAlign.center,
                  url: Uri.parse(teamURL),
                  hint: l10n.gTeamHint,
                ),
                EzPlainText(
                    text: l10n.ouConsult, style: EzConfig.styles.bodyLarge),
              ], textAlign: TextAlign.center),
              EzConfig.divider,

              // Download Open UI (again) //
              EzText(
                l10n.ouGetStarted,
                style: ezSubTitleStyle(),
                textAlign: TextAlign.center,
              ),
              EzConfig.margin,
              const OpenUILink(),

              EzConfig.separator,
              const EzTranslationsPendingNotice(),
            ],
          ),
        ),
        fabs: <Widget>[
          EzConfig.spacer,
          EzConfigFAB(context, appName: appName, androidPackage: null),
          EzConfig.spacer,
          const SettingsFAB(),
        ],
      );
}

class _DemoVideo extends StatefulWidget {
  const _DemoVideo();

  @override
  State<_DemoVideo> createState() => _DemoVideoState();
}

class _DemoVideoState extends State<_DemoVideo> {
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
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          EzConfig.spacer,

          // Video
          Visibility(
            visible: showVideo,
            maintainState: true,
            child: Padding(
              padding: EdgeInsets.only(bottom: EzConfig.spacing),
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
                  icon: const Icon(Icons.visibility_off),
                  label: l10n.psHideDemo,
                )
              : EzElevatedIconButton(
                  onPressed: () => setState(() => showVideo = true),
                  icon: const Icon(Icons.visibility),
                  label: l10n.psShowDemo,
                ),
        ],
      );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
