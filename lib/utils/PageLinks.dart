import './utils.dart';
import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageLinks extends StatelessWidget {
  final GlobalKey? key;
  final BuildContext context;
  final TextStyle? style;

  /// Pass in the value from MediaQuery.of(context).textScaleFactor
  final double scalar;

  /// How much distance should be between the links
  final double spacer;

  /// Internal page links to put in the [AppBar]
  const PageLinks({
    this.key,
    required this.context,
    required this.style,
    required this.scalar,
    required this.spacer,
  });

  /// Helpful for [EzSwapScaffold] calculations
  double get width {
    double wordWidth = measureText(
      Lang.of(context)!.psPageTitle +
          Lang.of(context)!.plsPageTitle +
          Lang.of(context)!.tsPageTitle +
          Lang.of(context)!.spsPageTitle,
      scalar: scalar,
      style: style,
    ).width;

    return wordWidth + spacer * 4;
  }

  @override
  Widget build(BuildContext context) {
    final EzLink products = EzLink(
      Lang.of(context)!.psPageTitle,
      style: style,
      semanticsLabel: Lang.of(context)!.hsProductsHint,
      onTap: () => context.goNamed(productsRoute),
    );

    final EzLink plan = EzLink(
      Lang.of(context)!.plsPageTitle,
      style: style,
      semanticsLabel: Lang.of(context)!.hsPlanHint,
      onTap: () => context.goNamed(planRoute),
    );

    final EzLink team = EzLink(
      Lang.of(context)!.tsPageTitle,
      style: style,
      semanticsLabel: Lang.of(context)!.hsTeamHint,
      onTap: () => context.goNamed(teamRoute),
    );

    final EzLink support = EzLink(
      Lang.of(context)!.spsPageTitle,
      style: style,
      semanticsLabel: Lang.of(context)!.hsSupportHint,
      onTap: () => context.goNamed(supportRoute),
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
