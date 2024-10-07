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
      l10n.psPageTitle +
          l10n.plsPageTitle +
          l10n.tsPageTitle +
          l10n.spsPageTitle,
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

    final EzLink products = EzLink(
      Lang.of(context)!.psPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(productsPath),
      semanticsLabel: Lang.of(context)!.gProductsHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink plan = EzLink(
      Lang.of(context)!.plsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(planPath),
      semanticsLabel: Lang.of(context)!.gPlanHint,
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

    final EzLink support = EzLink(
      Lang.of(context)!.spsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(supportPath),
      semanticsLabel: Lang.of(context)!.gSupportHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    // Return the build //

    return Row(
      key: key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        products,
        spacer,
        plan,
        spacer,
        team,
        spacer,
        support,
      ],
    );
  }
}
