/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class PageLinks extends StatelessWidget {
  final BuildContext context;
  final TextStyle style;

  /// Internal page links to put in the [AppBar]
  const PageLinks({
    super.key,
    required this.context,
    required this.style,
  });

  // Define the helper functions //

  /// Helpful for [EzSwapScaffold] calculations
  double get width {
    final Lang l10n = Lang.of(context)!;

    final double wordWidth = measureText(
      l10n.msPageTitle + l10n.psPageTitle + l10n.tsPageTitle + l10n.csPageTitle,
      style: style,
      context: context,
    ).width;

    return wordWidth + EzConfig.get(spacingKey) * 5;
  }

  // Define the buttons //

  @override
  Widget build(BuildContext context) {
    const EzSpacer spacer = EzSpacer(vertical: false);
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final EzLink mission = EzLink(
      Lang.of(context)!.msPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(missionPath),
      semanticsLabel: Lang.of(context)!.gMissionHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink products = EzLink(
      Lang.of(context)!.psPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(productsPath),
      semanticsLabel: Lang.of(context)!.gProductsHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink team = EzLink(
      Lang.of(context)!.tsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(teamPath),
      semanticsLabel: Lang.of(context)!.gTeamHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink contribute = EzLink(
      Lang.of(context)!.csPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(contributePath),
      semanticsLabel: Lang.of(context)!.gContributeHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    // Return the build //

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
