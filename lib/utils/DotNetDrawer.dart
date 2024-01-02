import './utils.dart';
import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DotNetDrawer extends StatelessWidget {
  final Key? key;
  final BuildContext context;

  /// [TextStyle] to use on the links' text
  final TextStyle? style;

  /// How much distance should be between the links
  final double spacer;

  final IconLinks header;

  /// Universal [Drawer] for dotnet
  const DotNetDrawer({
    this.key,
    required this.context,
    required this.style,
    required this.spacer,
    required this.header,
  });

  // Define the helper functions //

  void _navigateTo(BuildContext context, String routeName) {
    popScreen(context: context, result: routeName);
    context.goNamed(routeName);
  }

  // Define the buttons //

  @override
  Widget build(BuildContext context) {
    final EzSpacer _spacer = EzSpacer(spacer);

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

    return Drawer(
      key: key,
      child: EzScrollView(
        children: [
          DrawerHeader(
            child: EzScrollView(
              children: header.children,
              scrollDirection: Axis.horizontal,
            ),
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
          ),
          _spacer,
          products,
          _spacer,
          plan,
          _spacer,
          team,
          _spacer,
          support,
          _spacer,
        ],
      ),
    );
  }
}
