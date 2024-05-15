import '../screens/export.dart';
import '../utils/export.dart';
import './export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class DotNetDrawer extends StatelessWidget {
  final BuildContext context;

  /// [TextStyle] to use on the links' text
  final TextStyle? style;

  /// How much distance should be between the links
  final double spacing;

  final IconLinks header;

  /// Universal [NavigationDrawer] for dotnet
  const DotNetDrawer({
    super.key,
    required this.context,
    required this.style,
    required this.spacing,
    required this.header,
  });

  // Define the helper functions //

  void _navigateTo(BuildContext context, String routeName) {
    Navigator.of(context).pop(routeName);
    context.go(routeName);
  }

  // Define the buttons //

  @override
  Widget build(BuildContext context) {
    final EzSpacer spacer = EzSpacer(spacing);

    final EzLink products = EzLink(
      Lang.of(context)!.psPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => _navigateTo(context, productsRoute),
      semanticsLabel: Lang.of(context)!.gProductsHint,
      color: Theme.of(context).colorScheme.onSurface,
    );

    final EzLink plan = EzLink(
      Lang.of(context)!.plsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => _navigateTo(context, planRoute),
      semanticsLabel: Lang.of(context)!.gPlanHint,
      color: Theme.of(context).colorScheme.onSurface,
    );

    final EzLink team = EzLink(
      Lang.of(context)!.tsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => _navigateTo(context, teamRoute),
      semanticsLabel: Lang.of(context)!.gTeamHint,
      color: Theme.of(context).colorScheme.onSurface,
    );

    final EzLink support = EzLink(
      Lang.of(context)!.spsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => _navigateTo(context, supportRoute),
      semanticsLabel: Lang.of(context)!.gSupportHint,
      color: Theme.of(context).colorScheme.onSurface,
    );

    // Return the build //

    return NavigationDrawer(
      key: key,
      children: <Widget>[
        DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: EzScrollView(
            scrollDirection: Axis.horizontal,
            children: header.children,
          ),
        ),
        spacer,
        products,
        spacer,
        plan,
        spacer,
        team,
        spacer,
        support,
        spacer,
      ],
    );
  }
}
