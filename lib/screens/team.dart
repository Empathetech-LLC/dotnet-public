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
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();
  static const EzDivider divider = EzDivider();
  final EzSpacer margin = EzMargin();

  late final double imageSize = ezImageSize(context);
  final double spacing = EzConfig.get(spacingKey);

  late final Lang l10n = Lang.of(context)!;
  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final TextStyle? subTitle = ezSubTitleStyle(textTheme);

  late final ColorScheme colorScheme = Theme.of(context).colorScheme;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, l10n.tsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        EzScrollView(children: <Widget>[
          // Core //

          Text(
            l10n.tsCore,
            style: textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          spacer,

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
                child: Column(
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
                ),
              ),
            ],
          ),
          divider,

          // Community //

          EzLink(
            l10n.tsCommunity,
            style: textTheme.headlineLarge,
            textAlign: TextAlign.center,
            textColor: colorScheme.onSurface,
            decorationColor: colorScheme.primary,
            url: Uri.parse(contributeURL),
            hint: l10n.gContributeHint,
          ),
          spacer,

          // Folding@home
          const FaHBanner(),
          divider,

          // Freelance //

          Text(
            l10n.tsFreelance,
            style: textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          spacer,

          // Translators
          Text(
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
              _TranslatorGroup(
                margin: margin,
                spacing: spacing,
                title: l10n.tsAr,
                titleStyle: subTitle,
                freelancers: <Widget>[
                  _Freelancer(
                    l10n: l10n,
                    textTheme: textTheme,
                    imageSize: imageSize,
                    margin: margin,
                    name: yasminS,
                    link: yasminSLink,
                    image: yasminSProfile,
                  ),
                ],
              ),

              // Spanish
              _TranslatorGroup(
                margin: margin,
                spacing: spacing,
                title: l10n.tsEs,
                titleStyle: subTitle,
                freelancers: <Widget>[
                  _Freelancer(
                    l10n: l10n,
                    textTheme: textTheme,
                    imageSize: imageSize,
                    margin: margin,
                    name: saraH,
                    link: saraHLink,
                    image: saraHProfile,
                  ),
                ],
              ),

              // Filipino
              _TranslatorGroup(
                margin: margin,
                spacing: spacing,
                title: l10n.tsFil,
                titleStyle: subTitle,
                freelancers: <Widget>[
                  _Freelancer(
                    l10n: l10n,
                    textTheme: textTheme,
                    imageSize: imageSize,
                    margin: margin,
                    name: remalyn,
                    link: remalynLink,
                    image: remalynProfile,
                  ),
                ],
              ),

              // French
              _TranslatorGroup(
                margin: margin,
                spacing: spacing,
                title: l10n.tsFr,
                titleStyle: subTitle,
                freelancers: <Widget>[
                  _Freelancer(
                    l10n: l10n,
                    textTheme: textTheme,
                    imageSize: imageSize,
                    margin: margin,
                    name: alexisN,
                    link: alexisNLink,
                    image: alexisNProfile,
                  ),
                ],
              ),

              // Haitian Creole
              _TranslatorGroup(
                margin: margin,
                spacing: spacing,
                title: l10n.tsHt,
                titleStyle: subTitle,
                freelancers: <Widget>[
                  _Freelancer(
                    l10n: l10n,
                    textTheme: textTheme,
                    imageSize: imageSize,
                    margin: margin,
                    name: carly,
                    link: carlyLink,
                    image: carlyProfile,
                  ),
                ],
              ),

              // Simplified Chinese
              _TranslatorGroup(
                margin: margin,
                spacing: spacing,
                title: l10n.tsZh,
                titleStyle: subTitle,
                freelancers: <Widget>[
                  _Freelancer(
                    l10n: l10n,
                    textTheme: textTheme,
                    imageSize: imageSize,
                    margin: margin,
                    name: leah,
                    link: leahLink,
                    image: leahProfile,
                  ),
                  _Freelancer(
                    l10n: l10n,
                    textTheme: textTheme,
                    imageSize: imageSize,
                    margin: margin,
                    name: hilaria,
                    link: hilariaLink,
                    image: hilariaProfile,
                  ),
                ],
              ),
            ],
          ),
          separator,
        ]),
        useImageDecoration: false,
      ),
      fab: SettingsFAB(context),
    );
  }
}

class _TranslatorGroup extends StatelessWidget {
  final EzSpacer margin;
  final double spacing;
  final String title;
  final TextStyle? titleStyle;
  final List<Widget> freelancers;

  const _TranslatorGroup({
    required this.margin,
    required this.spacing,
    required this.title,
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
                Text(title, style: titleStyle, textAlign: TextAlign.center),
                margin,
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
                Text(title, style: titleStyle, textAlign: TextAlign.center),
                margin,
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
          Text(
            name,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ],
      );
}
