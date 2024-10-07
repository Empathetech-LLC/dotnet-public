/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';
import './export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class DotNetDrawer extends StatelessWidget {
  /// [TextStyle] to use on the links' text
  final TextStyle style;

  /// [IconLinks] to be displayed in the [DrawerHeader]
  final IconLinks header;

  /// Universal [NavigationDrawer] for dotnet
  const DotNetDrawer({
    super.key,
    required this.style,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    // Gather theme data //

    const EzSpacer spacer = EzSpacer();

    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    // Define custom functions //

    void navigateTo(BuildContext context, String routeName) {
      Navigator.of(context).pop();
      context.goNamed(routeName);
    }

    // Define the buttons //

    final EzLink products = EzLink(
      Lang.of(context)!.psPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => navigateTo(context, productsPath),
      semanticsLabel: Lang.of(context)!.gProductsHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink plan = EzLink(
      Lang.of(context)!.plsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => navigateTo(context, planPath),
      semanticsLabel: Lang.of(context)!.gPlanHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink team = EzLink(
      Lang.of(context)!.tsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => navigateTo(context, teamPath),
      semanticsLabel: Lang.of(context)!.gTeamHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink support = EzLink(
      Lang.of(context)!.spsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => navigateTo(context, supportPath),
      semanticsLabel: Lang.of(context)!.gSupportHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    // Return the build //

    return NavigationDrawer(
      tilePadding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: Center(
            child: EzScrollView(
              scrollDirection: Axis.horizontal,
              mainAxisSize: MainAxisSize.min,
              children: header.children,
            ),
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
