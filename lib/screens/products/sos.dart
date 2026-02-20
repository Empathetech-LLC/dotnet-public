/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SOSScreen extends StatefulWidget {
  SOSScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  State<SOSScreen> createState() => _SOSScreenState();
}

class _SOSScreenState extends State<SOSScreen> {
  @override
  Widget build(BuildContext context) => DotnetScaffold(
        EzScreen(
          EzScrollView(mainAxisSize: MainAxisSize.min, children: <Widget>[
            // Headline
            EzText(
              sosName,
              semanticsLabel: sosLabel,
              style: EzConfig.styles.displayLarge,
              textAlign: TextAlign.center,
            ),
            EzConfig.margin,

            // Language selector
            EzLocaleSetting(
              () => setState(() {}),
              locales: Lang.supportedLocales,
              skip: <Locale>{arabic, english, chinese}, // Dupes
              protest: true,
            ),
            EzConfig.spacer,

            // Description
            EzText(
              l10n.sosDescription,
              style: EzConfig.styles.bodyLarge,
              textAlign: TextAlign.center,
            ),
            EzConfig.centerLine,

            // Donation call-out
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.sosPrivate,
                style: EzConfig.styles.bodyLarge,
              ),
              EzPlainText(
                text: l10n.sosFree,
                style: EzConfig.styles.bodyLarge,
              ),
              EzInlineLink(
                l10n.sosOpenSource,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(sosSource),
                hint: l10n.gRepoHint,
              ),
              EzPlainText(
                text: '.',
                style: EzConfig.styles.bodyLarge,
              ),
            ], textAlign: TextAlign.center),
            EzConfig.centerLine,

            // README link
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.sosWeAlso,
                style: EzConfig.styles.bodyLarge,
              ),
              EzInlineLink(
                l10n.sosSetupGuide,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'https://github.com/Empathetech-LLC/sos/blob/main/README.md#using',
                ),
                hint: l10n.sosSetupGuideHint,
              ),
              EzPlainText(text: '.', style: EzConfig.styles.bodyLarge),
            ], textAlign: TextAlign.center),
            EzConfig.centerLine,

            // Contribution call-out
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.sosConsider,
                style: EzConfig.styles.bodyLarge,
              ),
              EzInlineLink(
                l10n.sosContributing,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(contributeURL),
                hint: l10n.gContributeHint,
              ),
              EzPlainText(
                text: l10n.sosSAPS,
                style: EzConfig.styles.bodyLarge,
              ),
            ], textAlign: TextAlign.center),

            // Promo video
            _PromoVideo(sosCaptions),

            // Download link(s)
            EzText(
              l10n.psDownloadNow,
              style: ezSubTitleStyle(),
              textAlign: TextAlign.center,
            ),
            EzConfig.margin,
            const SOSLink(),

            EzConfig.separator,
            const EzTranslationsPendingNotice(),
          ]),
        ),
        fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
      );
}

class _PromoVideo extends StatefulWidget {
  final Future<ClosedCaptionFile>? captions;

  const _PromoVideo(this.captions);

  @override
  State<_PromoVideo> createState() => _PromoVideoState();
}

class _PromoVideoState extends State<_PromoVideo> {
  // Define the build data //

  late final VideoPlayerController normControl = VideoPlayerController.asset(
    sosPromoPath,
    closedCaptionFile: widget.captions,
  );
  late final VideoPlayerController vertControl = VideoPlayerController.asset(
    sosVerticalPromoPath,
    closedCaptionFile: widget.captions,
  );

  bool showVideo = true;

  // Init //

  @override
  void initState() {
    super.initState();

    normControl.initialize().then((_) => setState(() {}));
    vertControl.initialize().then((_) => setState(() {}));
  }

  // Return the build //

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          EzConfig.divider,

          // Video
          Visibility(
            visible: showVideo,
            maintainState: true,
            child: Padding(
              padding: EdgeInsets.only(bottom: EzConfig.spacing),
              child: EzSwapWidget(
                restricted: EzVideoPlayer(
                  key: const ValueKey<String>('vertical'),
                  controller: vertControl,
                  aspectRatio: 9 / 16,
                  maxWidth: widthOf(context) * 0.90,
                  maxHeight: heightOf(context) * 0.80,
                  backgroundColor: Colors.black,
                  semantics: l10n.sosPromoLabel,
                  hasCaptions: true,
                  autoPlay: false,
                  startingVolume: 0.50,
                ),
                expanded: EzVideoPlayer(
                  key: const ValueKey<String>('standard'),
                  controller: normControl,
                  aspectRatio: 16 / 9,
                  maxWidth: widthOf(context) * 0.90,
                  maxHeight: heightOf(context) * 0.80,
                  backgroundColor: Colors.black,
                  semantics: l10n.sosPromoLabel,
                  hasCaptions: true,
                  autoPlay: false,
                  startingVolume: 0.50,
                ),
              ),
            ),
          ),

          // Hide/Show && share
          EzScrollView(
            reverseHands: true,
            mainAxisSize: MainAxisSize.min,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              // Hide/show
              showVideo
                  ? EzElevatedIconButton(
                      onPressed: () => setState(() => showVideo = false),
                      icon: const Icon(Icons.visibility_off),
                      label: l10n.psHidePromo,
                    )
                  : EzElevatedIconButton(
                      onPressed: () => setState(() => showVideo = true),
                      icon: const Icon(Icons.visibility),
                      label: l10n.psShowPromo,
                    ),
              EzConfig.rowSpacer,

              // Share
              MenuAnchor(
                builder: (_, MenuController controller, __) => EzIconButton(
                  onPressed: () => controller.isOpen
                      ? controller.close()
                      : controller.open(),
                  tooltip: l10n.gShare,
                  icon: const Icon(Icons.share),
                ),
                menuChildren: <Widget>[
                  EzMenuLink(
                    uri: Uri.parse('$empathBluesky/post/3lz55bkyouc27'),
                    icon: EzIcon(FontAwesomeIcons.bluesky),
                    label: 'Bluesky',
                  ),
                  EzMenuLink(
                    uri: Uri.parse('https://www.instagram.com/p/DOxB0n-gCwx/'),
                    icon: EzIcon(LineIcons.instagram),
                    label: 'Instagram',
                  ),
                  EzMenuLink(
                    uri: Uri.parse('$empathMastodon/115228477790173478'),
                    icon: EzIcon(LineIcons.mastodon),
                    label: 'Mastodon',
                  ),
                  EzMenuLink(
                    uri: Uri.parse('$empathThreads/post/DO5AYJcD7Qd'),
                    icon: EzIcon(FontAwesomeIcons.threads),
                    label: 'Threads',
                  ),
                  EzMenuLink(
                    uri: Uri.parse('$empathTikTok/video/7551616465720315149'),
                    icon: EzIcon(Icons.tiktok),
                    label: 'TikTok',
                  ),
                  EzMenuLink(
                    uri: Uri.parse(
                        'https://www.youtube.com/watch?v=OeCHFy8_v9Q'),
                    icon: EzIcon(LineIcons.youtube),
                    label: 'YouTube',
                  ),
                ],
              ),
            ],
          ),

          showVideo ? EzConfig.divider : EzConfig.spacer,
        ],
      );

  @override
  void dispose() {
    normControl.dispose();
    vertControl.dispose();

    super.dispose();
  }
}
