/* website
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class SOSScreen extends StatelessWidget {
  const SOSScreen({super.key});

  @override
  Widget build(BuildContext context) => Consumer<EzCP>(builder: (_, EzCP config, __) {
        final TextStyle? subTitle = ezSubTitleStyle(config.styles);

        return WebsiteScaffold(
          config,
          body: EzScreen(
            config,
            child: EzScrollView(config, children: <Widget>[
              // Headline
              EzText(
                config,
                text: sosName,
                semanticsLabel: sosLabel,
                style: config.displayStyle,
                textAlign: TextAlign.center,
              ),
              config.margin,

              // Language selector
              EzLocaleSetting(
                config,
                skip: <Locale>{arabic, english, chinese}, // dupes
              ),
              config.spacer,

              // Description
              EzText(
                config,
                text: l10n(config).sosDescription,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // Safe to use
              EzRichText(
                config,
                children: <InlineSpan>[
                  EzPlainText(text: l10n(config).sosPrivate, style: config.bodyStyle),
                  EzPlainText(text: l10n(config).sosFree, style: config.bodyStyle),
                  EzInlineLink(
                    config,
                    text: l10n(config).sosOpenSource,
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                    url: Uri.parse(sosSource),
                    hint: l10n(config).gRepoHint,
                  ),
                  EzPlainText(text: '.', style: config.bodyStyle),
                ],
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // Contribution call-out
              EzRichText(
                config,
                children: <InlineSpan>[
                  EzPlainText(text: l10n(config).sosConsider, style: config.bodyStyle),
                  EzInlineLink(
                    config,
                    text: l10n(config).sosContributing,
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                    url: Uri.parse(contributeURL),
                    hint: l10n(config).gContributeHint,
                  ),
                  EzPlainText(text: l10n(config).sosSAPS, style: config.bodyStyle),
                ],
                textAlign: TextAlign.center,
              ),

              // Promo video
              _PromoVideo(config),

              // Download link(s)
              EzText(
                config,
                text: l10n(config).psDownloadNow,
                style: ezSubTitleStyle(config.styles),
                textAlign: TextAlign.center,
              ),
              config.margin,
              SOSLink(config),

              // SOS web
              config.separator,
              EzText(
                config,
                text: l10n(config).sosWeb,
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.divider,

              // Translators
              EzText(
                config,
                text: l10n(config).sosTranslators,
                style: config.titleStyle,
                textAlign: TextAlign.center,
              ),
              EzWrap(children: <Widget>[
                // ar
                Group(
                  config,
                  title: ezLocaleName(arabic, context),
                  titleStyle: subTitle,
                  members: <FreelancerCoin>[FreelancerCoin(config, yasminS)],
                ),

                // de
                Group(
                  config,
                  title: ezLocaleName(german, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, patrickKarban)],
                ),

                // es
                Group(
                  config,
                  title: ezLocaleName(spanish, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, saraH)],
                ),

                // fil
                Group(
                  config,
                  title: ezLocaleName(filipino, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, remalyn)],
                ),

                // fr
                Group(
                  config,
                  title: ezLocaleName(french, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, alexisN)],
                ),

                // hi
                Group(
                  config,
                  title: ezLocaleName(hindi, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, priyankaS)],
                ),

                // ht
                Group(
                  config,
                  title: ezLocaleName(creole, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, carly)],
                ),

                // ja
                Group(
                  config,
                  title: ezLocaleName(japanese, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, hikaru)],
                ),

                // ko
                Group(
                  config,
                  title: ezLocaleName(korean, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, superT)],
                ),

                // ru
                Group(
                  config,
                  title: ezLocaleName(russian, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, anastasia)],
                ),

                // sw
                Group(
                  config,
                  title: ezLocaleName(swahili, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, marieP)],
                ),

                // uk
                Group(
                  config,
                  title: ezLocaleName(ukrainian, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, anastasia)],
                ),

                // zh
                Group(
                  config,
                  title: ezLocaleName(chinese, context),
                  titleStyle: subTitle,
                  members: <Widget>[FreelancerCoin(config, leah)],
                ),
              ]),
              EzFooter(config),
            ]),
          ),
          fabs: <Widget>[config.spacer, SettingsFAB(config)],
        );
      });
}

class _PromoVideo extends StatefulWidget {
  final EzCP config;

  const _PromoVideo(this.config);

  @override
  State<_PromoVideo> createState() => _PromoVideoState();
}

class _PromoVideoState extends State<_PromoVideo> {
  // Define the build data //

  late final VideoPlayerController normControl = VideoPlayerController.asset(
    sosPromoPath,
    closedCaptionFile: sosCaptions(widget.config),
  );
  late final VideoPlayerController vertControl = VideoPlayerController.asset(
    sosVerticalPromoPath,
    closedCaptionFile: sosCaptions(widget.config),
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
        widget.config.divider,

        // Video
        EzAnimVis(
          widget.config,
          mod: 0.75,
          visible: showVideo,
          forceType: EzTransitionType.zoom,
          forceFade: false,
          kid: Padding(
            padding: EdgeInsets.only(bottom: widget.config.spacing),
            child: EzSwapWidget(
              restricted: EzVideoPlayer(
                widget.config,
                key: const ValueKey<String>('vertical'),
                controller: vertControl,
                aspectRatio: 9 / 16,
                maxWidth: widthOf(context) * 0.90,
                maxHeight: heightOf(context) * 0.80,
                semantics: l10n(widget.config).sosPromoLabel,
                hasCaptions: true,
                autoPlay: false,
                startingVolume: 0.50,
              ),
              expanded: EzVideoPlayer(
                widget.config,
                key: const ValueKey<String>('standard'),
                controller: normControl,
                aspectRatio: 16 / 9,
                maxWidth: widthOf(context) * 0.90,
                maxHeight: heightOf(context) * 0.80,
                semantics: l10n(widget.config).sosPromoLabel,
                hasCaptions: true,
                autoPlay: false,
                startingVolume: 0.50,
              ),
            ),
          ),
        ),

        // Hide/Show
        ...showVideo
            ? <Widget>[
                EzElevatedIconButton(
                  widget.config,
                  onPressed: () => setState(() => showVideo = false),
                  icon: EzIcon(widget.config, Icons.visibility_off),
                  label: l10n(widget.config).psHidePromo,
                ),
                widget.config.divider,
              ]
            : <Widget>[
                EzElevatedIconButton(
                  widget.config,
                  onPressed: () => setState(() => showVideo = true),
                  icon: EzIcon(widget.config, Icons.visibility),
                  label: l10n(widget.config).psShowPromo,
                ),
                widget.config.spacer,
              ],
      ]);

  @override
  void dispose() {
    normControl.dispose();
    vertControl.dispose();

    super.dispose();
  }
}
