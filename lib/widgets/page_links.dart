/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class PageLinks extends StatelessWidget {
  /// [BuildContext] passthrough
  final BuildContext context;

  /// [TextStyle] for the [EzLink]s
  final TextStyle style;

  /// [ColorScheme] for the [EzLink]s
  final ColorScheme colorScheme;

  /// Internal page links to put in the [AppBar]
  const PageLinks({
    super.key,
    required this.context,
    required this.style,
    required this.colorScheme,
  });

  // Define custom functions //

  /// Helpful for [EzAdaptiveScaffold] calculations
  double get width {
    final Lang l10n = Lang.of(context)!;

    final double wordWidth = ezTextSize(
      l10n.msPageTitle + l10n.psPageTitle + l10n.tsPageTitle + l10n.csPageTitle,
      style: style,
      context: context,
    ).width;

    return wordWidth + EzConfig.get(spacingKey) * 5;
  }

  // Define the build //

  Widget get mission {
    return EzLink(
      Lang.of(context)!.msPageTitle,
      style: style,
      textAlign: TextAlign.center,
      url: Uri.parse(missionURL),
      hint: Lang.of(context)!.gMissionHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );
  }

  Widget get products {
    return MenuAnchor(
      builder: (_, MenuController controller, __) => EzLink(
        Lang.of(context)!.psPageTitle,
        style: style,
        textAlign: TextAlign.center,
        onTap: () => controller.isOpen ? controller.close() : controller.open(),
        hint: Lang.of(context)!.gProductsHint,
        textColor: colorScheme.onSurface,
        decorationColor: colorScheme.primary,
      ),
      menuChildren: <Widget>[
        // Open UI
        EzLink(
          Products.openUI.name,
          style: style,
          textAlign: TextAlign.center,
          url: Uri.parse(Products.openUI.url),
          hint: Lang.of(context)!.gLearn(Products.openUI.name),
          textColor: colorScheme.onSurface,
          decorationColor: colorScheme.primary,
        ),

        // SOS
        EzLink(
          Products.sos.name,
          style: style,
          textAlign: TextAlign.center,
          url: Uri.parse(Products.sos.url),
          hint: Lang.of(context)!.gLearn(Products.sos.name),
          textColor: colorScheme.onSurface,
          decorationColor: colorScheme.primary,
        ),

        // Smoke Signal
        EzLink(
          Products.smokeSignal.name,
          style: style,
          textAlign: TextAlign.center,
          url: Uri.parse(Products.smokeSignal.url),
          hint: Lang.of(context)!.gLearn(Products.smokeSignal.name),
          textColor: colorScheme.onSurface,
          decorationColor: colorScheme.primary,
        ),
      ],
    );
  }

  Widget get team {
    return EzLink(
      Lang.of(context)!.tsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      url: Uri.parse(teamURL),
      hint: Lang.of(context)!.gTeamHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );
  }

  Widget get contribute {
    return EzLink(
      Lang.of(context)!.csPageTitle,
      style: style,
      textAlign: TextAlign.center,
      url: Uri.parse(contributeURL),
      hint: Lang.of(context)!.gContributeHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    const EzSpacer spacer = EzSpacer(vertical: false);

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        mission,
        spacer,
        products,
        spacer,
        team,
        spacer,
        contribute,
      ],
    );
  }
}
