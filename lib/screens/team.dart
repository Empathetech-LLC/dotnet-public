/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class TeamScreen extends StatefulWidget {
  /// I believe
  /// I believe that...
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  // Gather the fixed theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzDivider divider = EzDivider();

  final double margin = EzConfig.get(marginKey);
  final double spacing = EzConfig.get(spacingKey);
  late final double imageSize = ezImageSize(context);

  late final EzSpacer hMargin = EzSpacer(space: margin / 2);

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

    return DotnetScaffold(
      EzScreen(EzScrollView(children: <Widget>[
        // Core //

        EzText(
          l10n.tsCore,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),

        // Founder
        EzRowCol.sym(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Avatar of Mike
            Container(
              // Not an ego thing I swear
              // The image gets super pixelated if it's too small
              constraints: EzBox.sym(imageSize * 1.333),
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
            EzSwapMargin(),

            // Information
            MergeSemantics(
              child: EzTextBackground(Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    l10n.tsTheFounder,
                    style: textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    mike,
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
            ),
          ],
        ),
        divider,

        // IRL //

        EzText(
          l10n.tsWild,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),

        // Open Sauce 2025
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
        spacer,
        EzText(
          l10n.ts2025BoothDescription,
          semanticsLabel: l10n.ts2025BoothDescriptionFix,
          style: textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        divider,

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
        divider,

        // Freelance //

        EzText(
          l10n.tsFreelance,
          style: textTheme.headlineLarge,
          textAlign: TextAlign.center,
        ),
        spacer,

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
              margin: hMargin,
              spacing: spacing,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  margin: hMargin,
                  name: montanaM,
                  link: montanaMLink,
                  image: montanaImage,
                ),
              ],
            ),
          ],
        ),
        spacer,

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
              margin: hMargin,
              spacing: spacing,
              title: l10n.tsAr,
              titleStyle: subTitle,
              freelancers: <_Freelancer>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  margin: hMargin,
                  name: yasminS,
                  link: yasminSLink,
                  image: yasminSProfile,
                ),
              ],
            ),

            // Spanish
            _Group(
              margin: hMargin,
              spacing: spacing,
              title: l10n.tsEs,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  margin: hMargin,
                  name: saraH,
                  link: saraHLink,
                  image: saraHProfile,
                ),
              ],
            ),

            // Filipino
            _Group(
              margin: hMargin,
              spacing: spacing,
              title: l10n.tsFil,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  margin: hMargin,
                  name: remalyn,
                  link: remalynLink,
                  image: remalynProfile,
                ),
              ],
            ),

            // French
            _Group(
              margin: hMargin,
              spacing: spacing,
              title: l10n.tsFr,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  margin: hMargin,
                  name: alexisN,
                  link: alexisNLink,
                  image: alexisNProfile,
                ),
              ],
            ),

            // Haitian Creole
            _Group(
              margin: hMargin,
              spacing: spacing,
              title: l10n.tsHt,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  margin: hMargin,
                  name: carly,
                  link: carlyLink,
                  image: carlyProfile,
                ),
              ],
            ),

            // Simplified Chinese
            _Group(
              margin: hMargin,
              spacing: spacing,
              title: l10n.tsZh,
              titleStyle: subTitle,
              freelancers: <Widget>[
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  margin: hMargin,
                  name: leah,
                  link: leahLink,
                  image: leahProfile,
                ),
                _Freelancer(
                  l10n: l10n,
                  textTheme: textTheme,
                  imageSize: imageSize,
                  margin: hMargin,
                  name: hilaria,
                  link: hilariaLink,
                  image: hilariaProfile,
                ),
              ],
            ),
          ],
        ),

        spacer, // Usually separator, but there's a trailing spacer above
        const EzTranslationsPendingNotice(),
      ])),
      fab: const SettingsFAB(),
    );
  }
}

class _Group extends StatelessWidget {
  final EzSpacer margin;
  final double spacing;
  final String? title;
  final TextStyle? titleStyle;
  final List<Widget> freelancers;

  const _Group({
    required this.margin,
    required this.spacing,
    this.title,
    required this.titleStyle,
    required this.freelancers,
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

class _Freelancer extends StatelessWidget {
  final Lang l10n;
  final TextTheme textTheme;
  final double imageSize;
  final EzSpacer margin;
  final String name;
  final String link;
  final ImageProvider image;

  const _Freelancer({
    required this.l10n,
    required this.textTheme,
    required this.imageSize,
    required this.margin,
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
          margin,

          // Name
          EzText(
            name,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      );
}
