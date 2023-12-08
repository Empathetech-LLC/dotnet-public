import './utils.dart';
import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageLinks extends StatelessWidget {
  final GlobalKey? key;
  final BuildContext context;
  final TextStyle? style;

  /// How much distance should be between the links
  final double spacer;

  /// Internal page links to put in the [AppBar]
  const PageLinks({
    this.key,
    required this.context,
    required this.style,
    required this.spacer,
  });

  /// Helpful for [EzSwapScaffold] calculations
  double get width {
    double wordWidth = measureText(
      Lang.of(context)!.psPageTitle +
          Lang.of(context)!.plsPageTitle +
          Lang.of(context)!.tsPageTitle +
          Lang.of(context)!.spsPageTitle,
      scaler: MediaQuery.textScalerOf(context),
      style: style,
    ).width;

    return wordWidth + spacer * 4;
  }

  @override
  Widget build(BuildContext context) {
    final EzLink products = EzLink(
      Lang.of(context)!.psPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(productsRoute),
      semanticsLabel: Lang.of(context)!.gProductsHint,
      color: Theme.of(context).colorScheme.surface,
    );

    final EzLink plan = EzLink(
      Lang.of(context)!.plsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(planRoute),
      semanticsLabel: Lang.of(context)!.gPlanHint,
      color: Theme.of(context).colorScheme.surface,
    );

    final EzLink team = EzLink(
      Lang.of(context)!.tsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(teamRoute),
      semanticsLabel: Lang.of(context)!.gTeamHint,
      color: Theme.of(context).colorScheme.surface,
    );

    final EzLink support = EzLink(
      Lang.of(context)!.spsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => context.goNamed(supportRoute),
      semanticsLabel: Lang.of(context)!.gSupportHint,
      color: Theme.of(context).colorScheme.surface,
    );

    // Return build //

    return Row(
      key: key,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        products,
        EzSpacer.row(spacer),
        plan,
        EzSpacer.row(spacer),
        team,
        EzSpacer.row(spacer),
        support,
      ],
    );
  }
}
