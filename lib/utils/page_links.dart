import './utils.dart';
import '../screens/screens.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class PageLinks extends StatelessWidget {
  final BuildContext context;
  final TextStyle? style;

  /// How much distance should be between the links
  final double spacing;

  /// Internal page links to put in the [AppBar]
  const PageLinks({
    super.key,
    required this.context,
    required this.style,
    required this.spacing,
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

    return wordWidth + spacing * 5;
  }

  // Define the buttons //

  @override
  Widget build(BuildContext context) {
    final EzSpacer spacer = EzSpacer.row(spacing);

    final EzLink products = EzLink(
      Lang.of(context)!.psPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.go(productsRoute),
      semanticsLabel: Lang.of(context)!.gProductsHint,
      color: Theme.of(context).colorScheme.surface,
    );

    final EzLink plan = EzLink(
      Lang.of(context)!.plsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.go(planRoute),
      semanticsLabel: Lang.of(context)!.gPlanHint,
      color: Theme.of(context).colorScheme.surface,
    );

    final EzLink team = EzLink(
      Lang.of(context)!.tsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.go(teamRoute),
      semanticsLabel: Lang.of(context)!.gTeamHint,
      color: Theme.of(context).colorScheme.surface,
    );

    final EzLink support = EzLink(
      Lang.of(context)!.spsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.go(supportRoute),
      semanticsLabel: Lang.of(context)!.gSupportHint,
      color: Theme.of(context).colorScheme.surface,
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
