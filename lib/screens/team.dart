/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
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
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class TeamScreen extends StatefulWidget {
  /// I believe
  /// I believe that...
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  // Gather the fixed theme data //

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);
  late final double imageSize = ezImageSize(context);

  late final Lang l10n = Lang.of(context)!;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, l10n.tsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle? subTitle = ezSubTitleStyle(textTheme);

    final Widget mirror = _Member(
      title: l10n.tsBoardMember,
      name: l10n.tsYou,
      l10n: l10n,
      hiring: true,
      textTheme: textTheme,
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
          style: textTheme.headlineLarge,
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
            ezRowSpacer,

            // The Founder (Mike)
            _Member(
              title: l10n.tsTheFounder,
              name: mike,
              l10n: l10n,
              textTheme: textTheme,
              imageSize: imageSize,
              child: EzImageLink(
                image: founderImage,
                fit: BoxFit.contain,
                label: l10n.tsTheFounderLabel,
                hint: l10n.tsTheFounderHint,
                url: Uri.parse(
                    'mailto:$empathFounder?subject=Becoming%20a%20contributor'),
                tooltip: l10n.tsTheFounderHint,
              ),
            ),
            ezRowSpacer,

            // Future Board Member
            mirror,
          ],
        ),
        ezDivider,

        // IRL //

        // Open Sauce 2025
        EzText(
          l10n.tsWild,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        ezMargin,
        Stack(
          children: <Widget>[
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
                padding: EdgeInsets.all(EzConfig.get(marginKey)),
                child: const Image(
                  image: openSauceLogoImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
        ezCenterLine,
        EzText(
          l10n.ts2025BoothDescription,
          semanticsLabel: l10n.ts2025BoothDescriptionFix,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        ezDivider,

        // Community //

        EzLink(
          l10n.tsCommunity,
          style: textTheme.headlineLarge,
          padding: EzInsets.wrap(EzConfig.get(marginKey)),
          textAlign: TextAlign.center,
          textColor: colorScheme.onSurface,
          decorationColor: colorScheme.primary,
          url: Uri.parse(contributeURL),
          hint: l10n.gContributeHint,
        ),

        // Folding@home
        const FaHBanner(),
        ezDivider,

        // Freelance //

        EzText(
          l10n.tsFreelance,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        ezSpacer,

        // Video production
        EzText(
          l10n.tsVideoProduction,
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            _Group(
              spacing: spacing,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  name: montanaM,
                  link: montanaMLink,
                  image: montanaImage,
                ),
              ],
            ),
          ],
        ),
        ezSpacer,

        // Translators
        EzText(
          l10n.tsTranslators,
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: <Widget>[
            // Arabic
            _Group(
              spacing: spacing,
              title: l10n.tsAr,
              titleStyle: subTitle,
              freelancers: <_Freelancer>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  name: yasminS,
                  link: yasminSLink,
                  image: yasminSProfile,
                ),
              ],
            ),

            // Spanish
            _Group(
              spacing: spacing,
              title: l10n.tsEs,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  name: saraH,
                  link: saraHLink,
                  image: saraHProfile,
                ),
              ],
            ),

            // Filipino
            _Group(
              spacing: spacing,
              title: l10n.tsFil,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  name: remalyn,
                  link: remalynLink,
                  image: remalynProfile,
                ),
              ],
            ),

            // French
            _Group(
              spacing: spacing,
              title: l10n.tsFr,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  name: alexisN,
                  link: alexisNLink,
                  image: alexisNProfile,
                ),
              ],
            ),

            // Haitian Creole
            _Group(
              spacing: spacing,
              title: l10n.tsHt,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  name: carly,
                  link: carlyLink,
                  image: carlyProfile,
                ),
              ],
            ),

            // Simplified Chinese
            _Group(
              spacing: spacing,
              title: l10n.tsZh,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  name: leah,
                  link: leahLink,
                  image: leahProfile,
                ),
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  name: hilaria,
                  link: hilariaLink,
                  image: hilariaProfile,
                ),
              ],
            ),
          ],
        ),

        ezSpacer, // Usually ezSeparator, but there's a trailing ezSpacer above
        const EzTranslationsPendingNotice(),
      ])),
      fabs: <Widget>[const SettingsFAB()],
    );
  }
}

class _Member extends StatelessWidget {
  final String title;
  final String name;
  final Lang l10n;
  final TextTheme textTheme;
  final double imageSize;
  final BoxDecoration? decoration;
  final bool hiring;
  final Widget? child;

  const _Member({
    required this.title,
    required this.name,
    required this.l10n,
    required this.textTheme,
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
                onTap: () => showPlatformDialog(
                  context: context,
                  builder: (_) => EzAlertDialog(
                    title: const Text(
                      'U & Me => 501(c)(3)',
                      textAlign: TextAlign.center,
                    ),
                    content:
                        Text(l10n.tsNonProfit, textAlign: TextAlign.center),
                    materialActions: <EzMaterialAction>[
                      EzMaterialAction(
                        text: l10n.gEmail,
                        onPressed: () => launchUrl(Uri.parse(
                            'mailto:$empathFounder?subject=Becoming%20a%20member')),
                        isDefaultAction: true,
                      )
                    ],
                    cupertinoActions: <EzCupertinoAction>[
                      EzCupertinoAction(
                        text: l10n.gEmail,
                        onPressed: () => launchUrl(Uri.parse(
                            'mailto:$empathFounder?subject=Becoming%20a%20member')),
                        isDefaultAction: true,
                      )
                    ],
                  ),
                ),
                tooltip: l10n.tsMirrorTip,
                hint: l10n.tsMirrorHint,
                child: Shimmer.fromColors(
                  baseColor: Colors.black,
                  highlightColor: Colors.white,
                  direction: Directionality.of(context) == TextDirection.ltr
                      ? ShimmerDirection.ltr
                      : ShimmerDirection.rtl,
                  period: ezAnimDuration(mod: 2),
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
        ezMargin,
        MergeSemantics(
          child: EzTextBackground(Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                name,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          )),
        ),
      ]);
}

class _Freelancer extends StatelessWidget {
  final Lang l10n;
  final TextTheme textTheme;
  final double imageSize;
  final String name;
  final String link;
  final ImageProvider image;

  const _Freelancer({
    required this.l10n,
    required this.textTheme,
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
          ezMargin,

          // Name
          EzText(
            name,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      );
}

class _Group extends StatelessWidget {
  final List<Widget> freelancers;
  final double spacing;
  final String? title;
  final TextStyle? titleStyle;

  const _Group({
    required this.freelancers,
    required this.spacing,
    this.title,
    required this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return (freelancers.length > 1)
        ? Padding(
            padding: EdgeInsets.all(spacing),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (title != null)
                  EzText(
                    title!,
                    style: titleStyle,
                    textAlign: TextAlign.center,
                  ),
                Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: freelancers
                      .map((Widget freelancer) => Padding(
                            padding: EdgeInsets.only(
                              left: spacing / 2,
                              right: spacing / 2,
                              bottom: spacing,
                            ),
                            child: freelancer,
                          ))
                      .toList(),
                ),
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.all(spacing),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (title != null)
                  EzText(
                    title!,
                    style: titleStyle,
                    textAlign: TextAlign.center,
                  ),
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
}
