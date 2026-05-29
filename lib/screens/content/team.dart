/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class TeamScreen extends StatelessWidget {
  /// I believe
  /// I believe that
  /// I believe that we...
  TeamScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  Widget build(BuildContext context) {
    // Gather the contextual theme data //

    final double imageSize = ezImageSize(context);
    final TextStyle? subTitle = ezSubTitleStyle();

    // Return the build //

    final Widget mirror = _Member(
      title: l10n.tsBoardMember,
      name: l10n.tsYou,
      hiring: true,
      imageSize: imageSize,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );

    return DotnetScaffold(
      EzScreen(EzScrollView(children: <Widget>[
        // Core //

        EzText(
          l10n.tsCore,
          style: EzConfig.styles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        EzScrollView(
          startCentered: true,
          showScrollHint: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            // Future Board Member
            mirror,
            EzConfig.rowSpacer,

            // The Founder (Mike)
            _Member(
              title: l10n.tsTheFounder,
              name: mike,
              imageSize: imageSize,
              child: EzImageLink(
                image: founderImage,
                fit: BoxFit.contain,
                label: l10n.tsTheFounderLabel,
                hint: l10n.tsTheFounderHint,
                url: Uri.parse(
                  'mailto:$empathFounder?subject=Becoming%20a%20contributor',
                ),
                tooltip: l10n.tsTheFounderHint,
              ),
            ),
            EzConfig.rowSpacer,

            // Future Board Member
            mirror,
          ],
        ),
        EzConfig.divider,

        // IRL //

        // Open Sauce 2025
        EzText(
          l10n.tsWild,
          style: EzConfig.styles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.margin,
        Stack(children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxWidth: widthOf(context) * 0.90,
              maxHeight: heightOf(context) * 0.80,
            ),
            child: EzImageLink(
              image: openSauce2025Image,
              fit: BoxFit.contain,
              label: l10n.ts2025BoothLabel,
              hint: l10n.ts2025BoothHint,
              url: Uri.parse('https://opensauce.com/exhibits/'),
              tooltip: 'https://opensauce.com/exhibits/',
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: widthOf(context) * 0.125,
                maxHeight: heightOf(context) * 0.150,
              ),
              padding: EdgeInsets.all(EzConfig.marginVal),
              child: const Image(
                image: openSauceLogoImage,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ]),
        EzConfig.centerLine,
        EzText(
          l10n.ts2025BoothDescription,
          semanticsLabel: l10n.ts2025BoothDescriptionFix,
          style: EzConfig.styles.bodyLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.divider,

        // Community //

        EzLink(
          l10n.tsCommunity,
          style: EzConfig.styles.headlineLarge,
          textAlign: TextAlign.center,
          textColor: EzConfig.colors.onSurface,
          url: Uri.parse(contributeURL),
          hint: l10n.gContributeHint,
        ),

        // Folding@home
        const FaHBanner(),
        EzConfig.divider,

        // Freelance //

        EzText(
          l10n.tsFreelance,
          style: EzConfig.styles.headlineLarge,
          textAlign: TextAlign.center,
        ),
        EzConfig.spacer,

        // Video production
        EzText(
          l10n.tsVideoProduction,
          style: EzConfig.styles.titleLarge,
          textAlign: TextAlign.center,
        ),
        EzWrap(children: <Widget>[
          _Group(
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(montanaM),
            ],
          ),
        ]),
        EzConfig.spacer,

        // Translators
        EzText(
          l10n.tsTranslators,
          style: EzConfig.styles.titleLarge,
          textAlign: TextAlign.center,
        ),
        EzWrap(children: <Widget>[
          // ar
          _Group(
            title: ezLocaleName(arabic, context),
            titleStyle: subTitle,
            freelancers: <_FreelancerCoin>[
              const _FreelancerCoin(yasminS),
            ],
          ),

          // de
          _Group(
            title: ezLocaleName(german, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(patrickKarban),
            ],
          ),

          // es
          _Group(
            title: ezLocaleName(spanish, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(saraH),
            ],
          ),

          // fil
          _Group(
            title: ezLocaleName(filipino, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(remalyn),
            ],
          ),

          // fr
          _Group(
            title: ezLocaleName(french, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(alexisN),
            ],
          ),

          // hi
          _Group(
            title: ezLocaleName(hindi, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(priyankaS),
            ],
          ),

          // ht
          _Group(
            title: ezLocaleName(creole, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(carly),
            ],
          ),

          // ja
          _Group(
            title: ezLocaleName(japanese, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(hikaru),
            ],
          ),

          // ko
          _Group(
            title: ezLocaleName(korean, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(superT),
            ],
          ),

          // ru
          _Group(
            title: ezLocaleName(russian, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(anastasia),
            ],
          ),

          // sw
          _Group(
            title: ezLocaleName(swahili, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(marieP),
            ],
          ),

          // uk
          _Group(
            title: ezLocaleName(ukrainian, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(anastasia),
            ],
          ),

          // zh
          _Group(
            title: ezLocaleName(chinese, context),
            titleStyle: subTitle,
            freelancers: <Widget>[
              const _FreelancerCoin(leah),
              const _FreelancerCoin(hilaria),
            ],
          ),
        ]),
        EzFooter(spacing: EzConfig.spacing),
      ])),
      fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
    );
  }
}

class _Member extends StatelessWidget {
  final String title;
  final String name;
  final double imageSize;
  final BoxDecoration? decoration;
  final bool hiring;
  final Widget? child;

  const _Member({
    required this.title,
    required this.name,
    required this.imageSize,
    this.hiring = false,
    this.decoration,
    this.child,
  });

  @override
  Widget build(BuildContext context) => EzCol(children: <Widget>[
        hiring
            ? EzLinkWidget(
                label: l10n.tsMirrorLabel,
                onTap: () => showDialog(
                  context: context,
                  builder: (_) => EzAlertDialog(
                    title: const Text(
                      'U & Me => 501(c)(3)',
                      textAlign: TextAlign.center,
                    ),
                    content: Text(l10n.tsNonProfit, textAlign: TextAlign.center),
                    actions: <EzMaterialAction>[
                      EzMaterialAction(
                        text: l10n.gEmail,
                        onPressed: () => launchUrl(
                            Uri.parse('mailto:$empathFounder?subject=Becoming%20a%20member')),
                        isDefaultAction: true,
                      ),
                    ],
                  ),
                ),
                tooltip: l10n.tsMirrorTip,
                hint: l10n.tsMirrorHint,
                child: Shimmer.fromColors(
                  baseColor: Colors.black,
                  highlightColor: Colors.white,
                  direction: EzConfig.isLTR ? ShimmerDirection.ltr : ShimmerDirection.rtl,
                  period: ezAnimDuration(mod: 2.0),
                  delay: const Duration(seconds: 4),
                  child: Container(
                    constraints: EzBox.sym(imageSize),
                    decoration: decoration,
                    child: child,
                  ),
                ),
              )
            : Container(
                constraints: EzBox.sym(imageSize * 1.333),
                decoration: decoration,
                child: child,
              ),
        EzConfig.margin,
        MergeSemantics(
          child: EzTextBackground(EzCol(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: EzConfig.styles.titleLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                name,
                style: EzConfig.styles.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          )),
        ),
      ]);
}

class _FreelancerCoin extends StatelessWidget {
  final Freelancer who;

  const _FreelancerCoin(this.who);

  @override
  Widget build(BuildContext context) => EzCol(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Avatar
          Container(
            constraints: EzBox.sym(ezImageSize(context)),
            child: EzLinkWidget(
              isImage: true,
              url: Uri.parse(who.link),
              tooltip: who.link,
              label: l10n.tsProfile(who.name),
              hint: l10n.gFiverrPage(who.name),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(ezImageSize(context)),
                child: Image(image: who.image, fit: BoxFit.contain),
              ),
            ),
          ),
          EzConfig.margin,

          // Name
          EzText(
            who.name,
            style: EzConfig.styles.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      );
}

class _Group extends StatelessWidget {
  final List<Widget> freelancers;
  final String? title;
  final TextStyle? titleStyle;

  const _Group({
    required this.freelancers,
    this.title,
    required this.titleStyle,
  });

  @override
  Widget build(BuildContext context) => (freelancers.length > 1)
      ? Padding(
          padding: EdgeInsets.all(EzConfig.spacing),
          child: EzCol(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (title != null) EzText(title!, style: titleStyle, textAlign: TextAlign.center),
              EzWrap(
                children: freelancers
                    .map((Widget freelancer) => Padding(
                          padding: EdgeInsets.only(
                            left: EzConfig.spacing / 2,
                            right: EzConfig.spacing / 2,
                            bottom: EzConfig.spacing,
                          ),
                          child: freelancer,
                        ))
                    .toList(),
              ),
            ],
          ),
        )
      : Padding(
          padding: EdgeInsets.all(EzConfig.spacing),
          child: EzCol(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (title != null) EzText(title!, style: titleStyle, textAlign: TextAlign.center),
              EzWrap(children: freelancers),
            ],
          ),
        );
}
