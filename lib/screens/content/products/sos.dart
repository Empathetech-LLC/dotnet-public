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
import 'package:line_icons/line_icons.dart';
import 'package:video_player/video_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SOSScreen extends StatelessWidget {
  SOSScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  Widget build(BuildContext context) => Consumer<EzConfigProvider>(
        builder: (_, EzConfigProvider config, __) => DotnetScaffold(
          EzScreen(
            EzScrollView(children: <Widget>[
              // Headline
              EzText(
                sosName,
                semanticsLabel: sosLabel,
                style: config.theme.textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              config.layout.margin,

              // Language selector
              EzLocaleSetting(
                skip: <Locale>{arabic, english, chinese}, // dupes
              ),
              config.layout.spacer,

              // Description
              EzText(
                l10n.sosDescription,
                style: config.theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              config.layout.centerLine,

              // Safe to use
              EzRichText(<InlineSpan>[
                EzPlainText(
                  text: l10n.sosPrivate,
                  semanticsLabel: l10n.sosPrivateFix,
                  style: config.theme.textTheme.bodyLarge,
                ),
                EzPlainText(
                  text: l10n.sosFree,
                  style: config.theme.textTheme.bodyLarge,
                ),
                EzInlineLink(
                  l10n.sosOpenSource,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                  url: Uri.parse(sosSource),
                  hint: l10n.gRepoHint,
                ),
                EzPlainText(
                  text: '.',
                  style: config.theme.textTheme.bodyLarge,
                ),
              ], textAlign: TextAlign.center),
              config.layout.centerLine,

              // Contribution call-out
              EzRichText(<InlineSpan>[
                EzPlainText(
                  text: l10n.sosConsider,
                  style: config.theme.textTheme.bodyLarge,
                ),
                EzInlineLink(
                  l10n.sosContributing,
                  style: config.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                  url: Uri.parse(contributeURL),
                  hint: l10n.gContributeHint,
                ),
                EzPlainText(
                  text: l10n.sosSAPS,
                  style: config.theme.textTheme.bodyLarge,
                ),
              ], textAlign: TextAlign.center),

              // Promo video
              const _PromoVideo(),

              // Download link(s)
              EzText(
                l10n.psDownloadNow,
                style: ezSubTitleStyle(),
                textAlign: TextAlign.center,
              ),
              config.layout.margin,
              const SOSLink(),

              // SOS web
              config.layout.separator,
              EzText(
                l10n.sosWeb,
                style: config.theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const EzFooter(),
            ]),
          ),
          fabs: <Widget>[config.layout.spacer, const SettingsFAB()],
        ),
      );
}

class _PromoVideo extends StatefulWidget {
  const _PromoVideo();

  @override
  State<_PromoVideo> createState() => _PromoVideoState();
}

class _PromoVideoState extends State<_PromoVideo> {
  // Define the build data //

  late final VideoPlayerController normControl = VideoPlayerController.asset(
    sosPromoPath,
    closedCaptionFile: sosCaptions,
  );
  late final VideoPlayerController vertControl = VideoPlayerController.asset(
    sosVerticalPromoPath,
    closedCaptionFile: sosCaptions,
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
  Widget build(BuildContext context) => EzCol(children: <Widget>[
        EzConfig.divider,

        // Video
        EzAnimVis(
          mod: 0.75,
          visible: showVideo,
          forceType: EzTransitionType.zoom,
          forceFade: false,
          kid: Padding(
            padding: EdgeInsets.only(bottom: EzConfig.spacing),
            child: EzSwapWidget(
              restricted: EzVideoPlayer(
                key: const ValueKey<String>('vertical'),
                controller: vertControl,
                aspectRatio: 9 / 16,
                maxWidth: widthOf(context) * 0.90,
                maxHeight: heightOf(context) * 0.80,
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
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            // Hide/show
            showVideo
                ? EzElevatedIconButton(
                    onPressed: () => setState(() => showVideo = false),
                    icon: EzIcon(Icons.visibility_off),
                    label: l10n.psHidePromo,
                  )
                : EzElevatedIconButton(
                    onPressed: () => setState(() => showVideo = true),
                    icon: EzIcon(Icons.visibility),
                    label: l10n.psShowPromo,
                  ),
            EzConfig.rowSpacer,

            // Share
            MenuAnchor(
              builder: (_, MenuController controller, __) => EzIconButton(
                onPressed: () => controller.isOpen ? controller.close() : controller.open(),
                tooltip: l10n.gShare,
                icon: Icon(Icons.share, size: EzConfig.styles.titleLarge!.fontSize),
              ),
              menuChildren: <Widget>[
                EzMenuLink(
                  uri: Uri.parse('$empathBluesky/post/3lz55bkyouc27'),
                  icon: FaIcon(
                    FontAwesomeIcons.bluesky,
                    size: EzConfig.iconSize,
                  ),
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
                  icon: FaIcon(
                    FontAwesomeIcons.threads,
                    size: EzConfig.iconSize,
                  ),
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

        showVideo ? EzConfig.divider : EzConfig.spacer,
      ]);

  @override
  void dispose() {
    normControl.dispose();
    vertControl.dispose();

    super.dispose();
  }
}
