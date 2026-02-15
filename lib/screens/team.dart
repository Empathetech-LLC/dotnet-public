/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class TeamScreen extends StatefulWidget {
  /// I believe
  /// I believe that
  /// I believe that we...
  TeamScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  // Set the page title //

  @override
  void initState() {
    super.initState();
    ezWindowNamer(l10n.tsPageTitle);
  }

  @override
  Widget build(BuildContext context) {
    // Gather the contextual theme data //

    final double imageSize = ezImageSize(context);
    final TextStyle? subTitle = ezSubTitleStyle();

    // Return the build //

    final Widget mirror = _Member(
      title: l10n.tsBoardMember,
      name: l10n.tsYou,
      l10n: l10n,
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
          mainAxisSize: MainAxisSize.min,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            // Future Board Member
            mirror,
            EzConfig.rowSpacer,

            // The Founder (Mike)
            _Member(
              title: l10n.tsTheFounder,
              name: mike,
              l10n: l10n,
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
          padding: EzInsets.wrap(EzConfig.marginVal),
          textAlign: TextAlign.center,
          textColor: EzConfig.colors.onSurface,
          decorationColor: EzConfig.colors.primary,
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
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            _Group(
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  imageSize: imageSize,
                  name: montanaM,
                  link: montanaMLink,
                  image: montanaImage,
                ),
              ],
            ),
          ],
        ),
        EzConfig.spacer,

        // Translators
        EzText(
          l10n.tsTranslators,
          style: EzConfig.styles.titleLarge,
          textAlign: TextAlign.center,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            // Arabic
            _Group(
              title: l10n.tsAr,
              titleStyle: subTitle,
              freelancers: <_Freelancer>[
                _Freelancer(
                  l10n: l10n,
                  imageSize: imageSize,
                  name: yasminS,
                  link: yasminSLink,
                  image: yasminSProfile,
                ),
              ],
            ),

            // Spanish
            _Group(
              title: l10n.tsEs,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  imageSize: imageSize,
                  name: saraH,
                  link: saraHLink,
                  image: saraHProfile,
                ),
              ],
            ),

            // Filipino
            _Group(
              title: l10n.tsFil,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  imageSize: imageSize,
                  name: remalyn,
                  link: remalynLink,
                  image: remalynProfile,
                ),
              ],
            ),

            // French
            _Group(
              title: l10n.tsFr,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  imageSize: imageSize,
                  name: alexisN,
                  link: alexisNLink,
                  image: alexisNProfile,
                ),
              ],
            ),

            // Haitian Creole
            _Group(
              title: l10n.tsHt,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  imageSize: imageSize,
                  name: carly,
                  link: carlyLink,
                  image: carlyProfile,
                ),
              ],
            ),

            // Simplified Chinese
            _Group(
              title: l10n.tsZh,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  imageSize: imageSize,
                  name: leah,
                  link: leahLink,
                  image: leahProfile,
                ),
                _Freelancer(
                  l10n: l10n,
                  imageSize: imageSize,
                  name: hilaria,
                  link: hilariaLink,
                  image: hilariaProfile,
                ),
              ],
            ),
          ],
        ),

        EzConfig.spacer,
        const EzTranslationsPendingNotice(),
      ])),
      fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
    );
  }
}

class _Member extends StatelessWidget {
  final String title;
  final String name;
  final Lang l10n;
  final double imageSize;
  final BoxDecoration? decoration;
  final bool hiring;
  final Widget? child;

  const _Member({
    required this.title,
    required this.name,
    required this.l10n,
    required this.imageSize,
    this.hiring = false,
    this.decoration,
    this.child,
  });

  @override
  Widget build(BuildContext context) =>
      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
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
                    content:
                        Text(l10n.tsNonProfit, textAlign: TextAlign.center),
                    actions: <EzMaterialAction>[
                      EzMaterialAction(
                        text: l10n.gEmail,
                        onPressed: () => launchUrl(Uri.parse(
                            'mailto:$empathFounder?subject=Becoming%20a%20member')),
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
                  direction: EzConfig.isLTR
                      ? ShimmerDirection.ltr
                      : ShimmerDirection.rtl,
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
          child: EzTextBackground(Column(
            mainAxisSize: MainAxisSize.min,
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

class _Freelancer extends StatelessWidget {
  final Lang l10n;
  final double imageSize;
  final String name;
  final String link;
  final ImageProvider image;

  const _Freelancer({
    required this.l10n,
    required this.imageSize,
    required this.name,
    required this.link,
    required this.image,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Avatar
          Container(
            constraints: EzBox.sym(imageSize),
            child: EzLinkWidget(
              isImage: true,
              url: Uri.parse(link),
              tooltip: link,
              label: l10n.tsProfile(name),
              hint: l10n.gFiverrPage(name),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(imageSize),
                child: Image(image: image, fit: BoxFit.contain),
              ),
            ),
          ),
          EzConfig.margin,

          // Name
          EzText(
            name,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (title != null)
                EzText(title!, style: titleStyle, textAlign: TextAlign.center),
              Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (title != null)
                EzText(title!, style: titleStyle, textAlign: TextAlign.center),
              Wrap(
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: freelancers,
              ),
            ],
          ),
        );
}
