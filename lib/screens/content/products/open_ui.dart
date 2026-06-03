/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../../export.dart';
import '../../../utils/export.dart';
import '../../../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

  /// Set the download link
  void initUrl() async {
    dlType = switch (EzConfig.platform) {
      TargetPlatform.android => DLType.gPlay,
      TargetPlatform.iOS => DLType.iOS,
      TargetPlatform.macOS => DLType.macOS,
      TargetPlatform.windows => DLType.windows,
      _ => DLType.deb,
    };

    latest = await getLatest('empathetech_flutter_ui', efuiFallback);
    url = openUIDownload(dlType, latest);
    setState(() {});
  }

  // Init //

  @override
  void initState() {
    super.initState();
    initUrl();
  }

  @override
  Widget build(BuildContext context) => Consumer<EzConfigProvider>(
        builder: (_, EzConfigProvider config, __) => DotnetScaffold(
          EzScreen(
            EzScrollView(
              children: <Widget>[
                // Headline && slogan (link)
                EzText(
                  openUI,
                  style: config.theme.textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
                EzLink(
                  l10n.ouSlogan,
                  style: config.theme.textTheme.headlineLarge!,
                  textAlign: TextAlign.center,
                  url: url,
                  hint: l10n.gDownloadHint(openUI, dlType.name),
                ),
                config.layout.spacer,

                // Demo
                EzText(
                  l10n.ouLike,
                  style: ezSubTitleStyle(),
                  textAlign: TextAlign.center,
                ),
                config.layout.margin,
                const EFUIDemo(),
                config.layout.divider,

                // Use it in a sentence
                EzText(
                  l10n.ouIs,
                  style: ezSubTitleStyle(),
                  textAlign: TextAlign.center,
                ),

                // Video
                const _DemoVideo(),
                config.layout.spacer,

                // Description
                EzText(
                  l10n.ouFoundation,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                EzText(
                  l10n.ouLocal,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                EzText(
                  l10n.ouRequirements,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                config.layout.centerLine,
                EzText(
                  l10n.ouFlutterToo,
                  style: config.theme.textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                config.layout.divider,

                // EFUI //

                // How it works
                EzText(
                  l10n.ouHow,
                  style: config.theme.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
                EzRichText(<InlineSpan>[
                  EzPlainText(text: l10n.ouEFUIsHow, style: config.theme.textTheme.bodyLarge),
                  EzInlineLink(
                    efuiL,
                    richLabel: efuiLFix,
                    style: config.theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                    url: Uri.parse(efuiGitHub),
                    hint: config.l10n.gEFUISourceHint,
                  ),
                  EzPlainText(text: '.\n', style: config.theme.textTheme.bodyLarge),
                  EzPlainText(text: l10n.ouSimplifies, style: config.theme.textTheme.bodyLarge),
                ], textAlign: TextAlign.center),
                config.layout.centerLine,
                config.layout.centerLine,

                // Platform availability
                EzText(
                  l10n.ouPlatform,
                  style: config.theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                EzText(
                  l10n.ouPlatformContent,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                config.layout.centerLine,

                // Responsive design
                EzText(
                  l10n.ouResponsive,
                  style: config.theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                EzText(
                  l10n.ouResponsiveContent,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                config.layout.centerLine,

                // Screen reader support
                EzText(
                  l10n.ouScreen,
                  style: config.theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                EzRichText(<InlineSpan>[
                  EzPlainText(
                    text: l10n.ouScreenContent,
                    semanticsLabel: l10n.ouScreenContentFix,
                    style: config.theme.textTheme.bodyLarge,
                  ),
                  EzInlineLink(
                    'TalkBack',
                    style: config.theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                    url: Uri.parse(
                      'https://support.google.com/accessibility/android/answer/6006598?hl=en',
                    ),
                    hint: l10n.ouTalkBackHint,
                  ),
                  EzPlainText(text: l10n.ouAnd, style: config.theme.textTheme.bodyLarge),
                  EzInlineLink(
                    'VoiceOver',
                    style: config.theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                    url: Uri.parse(
                      'https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios',
                    ),
                    hint: l10n.ouVoiceOverHint,
                  ),
                  EzPlainText(text: '.', style: config.theme.textTheme.bodyLarge),
                ], textAlign: TextAlign.center),
                config.layout.centerLine,

                // User customization
                EzText(
                  l10n.ouCustom,
                  style: config.theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                EzText(
                  l10n.ouCustomContent,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                config.layout.centerLine,

                // Internationalization
                EzText(
                  l10n.ouInternational,
                  style: config.theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                EzText(
                  l10n.ouInternationalContent,
                  semanticsLabel: l10n.ouInternationalContentFix,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                config.layout.centerLine,

                // Reliability
                EzText(
                  l10n.ouReliability,
                  style: config.theme.textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                EzText(
                  l10n.ouReliabilityContent,
                  semanticsLabel: l10n.ouReliabilityContentFix,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                config.layout.centerLine,
                config.layout.centerLine,

                // Tag line && consultation call-out
                EzRichText(<InlineSpan>[
                  EzPlainText(text: l10n.ouEFUITagLine, style: config.theme.textTheme.bodyLarge),
                  EzInlineLink(
                    l10n.gReachOut,
                    style: config.theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                    url: Uri.parse(teamURL),
                    hint: l10n.gTeamHint,
                  )
                ], textAlign: TextAlign.center),
                config.layout.divider,

                // Download Open UI (again) //
                EzText(
                  l10n.ouGetStarted,
                  style: ezSubTitleStyle(),
                  textAlign: TextAlign.center,
                ),
                config.layout.margin,
                const OpenUILink(),
                const EzFooter(),
              ],
            ),
          ),
          fabs: <Widget>[
            config.layout.spacer,
            const EzConfigFAB(),
            config.layout.spacer,
            const SettingsFAB(),
          ],
        ),
      );
}

class _DemoVideo extends StatefulWidget {
  const _DemoVideo();

  @override
  State<_DemoVideo> createState() => _DemoVideoState();
}

class _DemoVideoState extends State<_DemoVideo> {
  // Define the build data //

  final VideoPlayerController controller = VideoPlayerController.asset(openUIDemoPath);

  bool showVideo = false;

  // Init //

  @override
  void initState() {
    super.initState();
    controller.initialize().then((_) => setState(() {}));
  }

  // Return the build //

  @override
  Widget build(BuildContext context) => EzCol(children: <Widget>[
        EzConfig.spacer,

        // Video
        EzAnimVis(
          mod: 0.75,
          visible: showVideo,
          forceType: EzTransitionType.zoom,
          forceFade: false,
          kid: Padding(
            padding: EdgeInsets.only(bottom: EzConfig.spacing),
            child: EzVideoPlayer(
              controller: controller,
              aspectRatio: 1300 / 1046,
              maxWidth: widthOf(context) * 0.90,
              maxHeight: heightOf(context) * 0.80,
              semantics: l10n.ouDemo,
              hasAudio: false,
              autoPlay: false,
            ),
          ),
        ),

        // Show/Hide
        showVideo
            ? EzElevatedIconButton(
                onPressed: () => setState(() => showVideo = false),
                icon: EzIcon(Icons.visibility_off),
                label: l10n.psHideDemo,
              )
            : EzElevatedIconButton(
                onPressed: () => setState(() => showVideo = true),
                icon: EzIcon(Icons.visibility),
                label: l10n.psShowDemo,
              ),
      ]);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
