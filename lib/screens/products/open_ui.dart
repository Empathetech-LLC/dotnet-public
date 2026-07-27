/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:oui_bios/oui_bios.dart';

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class OpenUIScreen extends StatefulWidget {
  const OpenUIScreen({super.key});

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
  Future<void> initUrl() async {
    dlType = switch (EzCM.platform) {
      TargetPlatform.android => DLType.gPlay,
      TargetPlatform.iOS => DLType.iOS,
      TargetPlatform.macOS => DLType.macOS,
      TargetPlatform.windows => DLType.windows,
      _ => DLType.deb,
    };

    latest = await getLatest('open_ui', ouiFallback);
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
  Widget build(BuildContext context) {
    return Consumer<EzCP>(
      builder: (_, EzCP config, __) => DotnetScaffold(
        config,
        body: EzScreen(
          config,
          child: EzScrollView(
            config,
            children: <Widget>[
              // Headline && slogan (link)
              EzText(
                config,
                text: openUI,
                style: config.displayStyle,
                textAlign: TextAlign.center,
              ),
              EzLink(
                config,
                text: l10n(config).ouSlogan,
                style: config.headlineStyle!,
                textAlign: TextAlign.center,
                url: url,
                hint: l10n(config).gDownloadHint(openUI, dlType.name),
              ),
              config.spacer,

              // Demo
              EzText(
                config,
                text: l10n(config).ouLike,
                style: ezSubTitleStyle(config.styles),
                textAlign: TextAlign.center,
              ),
              config.margin,
              OUIDemo(config),
              config.divider,

              // Use it in a sentence
              EzText(
                config,
                text: l10n(config).ouIs,
                style: ezSubTitleStyle(config.styles),
                textAlign: TextAlign.center,
              ),

              // Video
              _DemoVideo(config),
              config.spacer,

              // Description
              EzText(
                config,
                text: l10n(config).ouFoundation,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              EzText(
                config,
                text: l10n(config).ouLocal,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              EzText(
                config,
                text: l10n(config).ouRequirements,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,
              EzText(
                config,
                text: l10n(config).ouFlutterToo,
                style: config.labelStyle,
                textAlign: TextAlign.center,
              ),
              config.divider,

              // The pillars //
              // Platform availability
              EzText(
                config,
                text: l10n(config).ouPlatform,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),
              EzText(
                config,
                text: l10n(config).ouPlatformContent,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // Responsive design
              EzText(
                config,
                text: l10n(config).ouResponsive,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),
              EzText(
                config,
                text: l10n(config).ouResponsiveContent,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // Screen reader support
              EzText(
                config,
                text: l10n(config).ouScreen,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),
              EzRichText(config,
                  children: <InlineSpan>[
                    EzPlainText(
                      text: l10n(config).ouScreenContent,
                      style: config.bodyStyle,
                    ),
                    EzInlineLink(
                      config,
                      text: 'TalkBack',
                      style: config.bodyStyle,
                      textAlign: TextAlign.center,
                      url: Uri.parse(
                        'https://support.google.com/accessibility/android/answer/6006598?hl=en',
                      ),
                      hint: l10n(config).ouTalkBackHint,
                    ),
                    EzPlainText(text: l10n(config).ouAnd, style: config.bodyStyle),
                    EzInlineLink(
                      config,
                      text: 'VoiceOver',
                      style: config.bodyStyle,
                      textAlign: TextAlign.center,
                      url: Uri.parse(
                        'https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios',
                      ),
                      hint: l10n(config).ouVoiceOverHint,
                    ),
                    EzPlainText(text: '.', style: config.bodyStyle),
                  ],
                  textAlign: TextAlign.center),
              config.centerLine,

              // User customization
              EzText(
                config,
                text: l10n(config).ouCustom,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),
              EzText(
                config,
                text: l10n(config).ouCustomContent,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // Internationalization
              EzText(
                config,
                text: l10n(config).ouInternational,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),
              EzText(
                config,
                text: l10n(config).ouInternationalContent,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // Reliability
              EzText(
                config,
                text: l10n(config).ouReliability,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),
              EzText(
                config,
                text: l10n(config).ouReliabilityContent,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,
              config.centerLine,

              // Tag line && call-out
              EzRichText(config,
                  children: <InlineSpan>[
                    EzPlainText(text: l10n(config).ouTagLine, style: config.bodyStyle),
                    EzInlineLink(
                      config,
                      text: l10n(config).gReachOut,
                      style: config.bodyStyle,
                      textAlign: TextAlign.center,
                      url: Uri.parse(contributeURL),
                      hint: l10n(config).gTeamHint,
                    )
                  ],
                  textAlign: TextAlign.center),
              config.divider,

              // Download Open UI (again) //
              EzText(
                config,
                text: l10n(config).ouGetStarted,
                style: ezSubTitleStyle(config.styles),
                textAlign: TextAlign.center,
              ),
              config.margin,
              OpenUILink(config),
              EzFooter(config),
            ],
          ),
        ),
        fabs: <Widget>[
          config.spacer,
          EzConfigFAB(config),
          config.spacer,
          SettingsFAB(config),
        ],
      ),
    );
  }
}

class _DemoVideo extends StatefulWidget {
  final EzCP config;

  const _DemoVideo(this.config);

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
        widget.config.spacer,

        // Video
        EzAnimVis(
          widget.config,
          mod: 0.75,
          visible: showVideo,
          forceType: EzTransitionType.zoom,
          forceFade: false,
          kid: Padding(
            padding: EdgeInsets.only(bottom: widget.config.spacing),
            child: EzVideoPlayer(
              widget.config,
              controller: controller,
              aspectRatio: 1300 / 1046,
              maxWidth: widthOf(context) * 0.90,
              maxHeight: heightOf(context) * 0.80,
              semantics: l10n(widget.config).ouDemo,
              hasAudio: false,
              autoPlay: false,
            ),
          ),
        ),

        // Show/Hide
        showVideo
            ? EzElevatedIconButton(
                widget.config,
                onPressed: () => setState(() => showVideo = false),
                icon: EzIcon(widget.config, Icons.visibility_off),
                label: l10n(widget.config).psHideDemo,
              )
            : EzElevatedIconButton(
                widget.config,
                onPressed: () => setState(() => showVideo = true),
                icon: EzIcon(widget.config, Icons.visibility),
                label: l10n(widget.config).psShowDemo,
              ),
      ]);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
