/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SOSScreen extends StatefulWidget {
  const SOSScreen({super.key});

  @override
  State<SOSScreen> createState() => _SOSScreenState();
}

class _SOSScreenState extends State<SOSScreen> {
  // Gather the fixed theme data //

  final double spacing = EzConfig.get(spacingKey);
  static const Widget newLine = EzNewLine(textAlign: TextAlign.center);

  late final Lang l10n = Lang.of(context)!;

  // Return the build //

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return DotnetScaffold(
      EzScreen(EzScrollView(mainAxisSize: MainAxisSize.min, children: <Widget>[
        // Headline
        EzText(
          sosName,
          semanticsLabel: sosLabel,
          style: textTheme.displayLarge,
          textAlign: TextAlign.center,
        ),

        // Video
        const _PromoVideo(),

        // Description
        EzText(
          l10n.psSOSDescription,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        newLine,

        // Donation call-out
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psSafeSOS,
            style: textTheme.bodyLarge,
          ),
          EzPlainText(
            text: l10n.psFreeSOS,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            l10n.psOpenSource,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(sosSource),
            hint: l10n.gRepoHint,
          ),
          EzPlainText(
            text: '.',
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        newLine,

        // README link
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psWeAlso,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            l10n.psSetupGuide,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(
                'https://github.com/Empathetech-LLC/sos/blob/main/README.md#using'),
            hint: l10n.psSetupGuideHint,
          ),
          EzPlainText(
            text: '.',
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        newLine,

        // Contribution call-out
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.psConsider,
            style: textTheme.bodyLarge,
          ),
          EzInlineLink(
            l10n.psContributing,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
            url: Uri.parse(contributeURL),
            hint: l10n.gContributeHint,
          ),
          EzPlainText(
            text: l10n.psSAPS,
            style: textTheme.bodyLarge,
          ),
        ], textAlign: TextAlign.center),
        EzDivider(height: spacing * 2),

        // Download link(s)
        EzText(
          l10n.psDownloadNow,
          style: ezSubTitleStyle(textTheme),
          textAlign: TextAlign.center,
        ),
        EzMargin(),
        const SOSLink(),

        const EzSeparator(),
        const EzTranslationsPendingNotice(),
      ])),
      fab: const SettingsFAB(),
    );
  }
}

class _PromoVideo extends StatefulWidget {
  const _PromoVideo();

  @override
  State<_PromoVideo> createState() => _PromoVideoState();
}

class _PromoVideoState extends State<_PromoVideo> {
  // Gather the fixed theme data //

  static const EzSpacer spacer = EzSpacer();

  final double spacing = EzConfig.get(spacingKey);

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  final Future<ClosedCaptionFile>? cc = rootBundle
      .loadString(sosPromoCaptionsPath)
      .then((String cc) => SubRipCaptionFile(cc));

  late final VideoPlayerController normCon = VideoPlayerController.asset(
    sosPromoPath,
    closedCaptionFile: cc,
  );

  late final VideoPlayerController vertCon = VideoPlayerController.asset(
    sosVerticalPromoPath,
    closedCaptionFile: cc,
  );

  bool showVideo = true;

  // Init //

  @override
  void initState() {
    super.initState();
    normCon.initialize();
    vertCon.initialize();
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        EzMargin(),

        // Video
        Visibility(
          visible: showVideo,
          child: EzSwapWidget(
            restricted: EzVideoPlayer(
              key: const ValueKey<String>('vertical'),
              controller: vertCon,
              aspectRatio: 9 / 16,
              maxWidth: widthOf(context) * 0.90,
              maxHeight: heightOf(context) * 0.80,
              backgroundColor: Colors.black,
              semantics: l10n.psPromoLabel,
              hasCaptions: true,
              autoPlay: false,
              startingVolume: 0.50,
            ),
            expanded: EzVideoPlayer(
              key: const ValueKey<String>('standard'),
              controller: normCon,
              aspectRatio: 16 / 9,
              maxWidth: widthOf(context) * 0.90,
              maxHeight: heightOf(context) * 0.80,
              backgroundColor: Colors.black,
              semantics: l10n.psPromoLabel,
              hasCaptions: true,
              autoPlay: false,
              startingVolume: 0.50,
            ),
          ),
        ),
        if (showVideo) spacer,

        // Hide/Show && share
        EzScrollView(
          mainAxisSize: MainAxisSize.min,
          scrollDirection: Axis.horizontal,
          reverseHands: true,
          children: <Widget>[
            // Hide/show
            showVideo
                ? EzElevatedIconButton(
                    onPressed: () => setState(() => showVideo = false),
                    icon: Icon(PlatformIcons(context).eyeSlashSolid),
                    label: l10n.psHidePromo,
                  )
                : EzElevatedIconButton(
                    onPressed: () => setState(() => showVideo = true),
                    icon: Icon(PlatformIcons(context).eyeSolid),
                    label: l10n.psShowPromo,
                  ),
            spacer,

            // Share
            MenuAnchor(
              builder: (_, MenuController controller, __) => EzIconButton(
                onPressed: () =>
                    controller.isOpen ? controller.close() : controller.open(),
                tooltip: l10n.gShare,
                icon: Icon(PlatformIcons(context).share),
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
                  uri: Uri.parse(
                      '$empathReddit/comments/1nkr32b/spread_the_word_melt_the_ice/'),
                  icon: EzIcon(LineIcons.redditAlien),
                  label: 'Reddit',
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
                  uri: Uri.parse('https://www.youtube.com/watch?v=OeCHFy8_v9Q'),
                  icon: EzIcon(LineIcons.youtube),
                  label: 'YouTube',
                ),
              ],
            ),
          ],
        ),

        EzDivider(height: spacing * 2),
      ],
    );
  }

  @override
  void dispose() {
    normCon.dispose();
    vertCon.dispose();
    super.dispose();
  }
}
