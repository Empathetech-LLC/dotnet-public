/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
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

    final EzLink mission = EzLink(
      Lang.of(context)!.msPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => navigateTo(context, missionPath),
      hint: Lang.of(context)!.gMissionHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink products = EzLink(
      Lang.of(context)!.psPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => navigateTo(context, productsPath),
      hint: Lang.of(context)!.gProductsHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink team = EzLink(
      Lang.of(context)!.tsPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => navigateTo(context, teamPath),
      hint: Lang.of(context)!.gTeamHint,
      textColor: colorScheme.onSurface,
      decorationColor: colorScheme.primary,
    );

    final EzLink contribute = EzLink(
      Lang.of(context)!.csPageTitle,
      style: style,
      textAlign: TextAlign.center,
      onTap: () => navigateTo(context, contributePath),
      hint: Lang.of(context)!.gContributeHint,
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
              children: header.children.map((Widget child) {
                switch (child.runtimeType) {
                  case const (EzIconButton):
                    child as EzIconButton;
                    return EzIconButton(
                      style: child.style,
                      onPressed: () {
                        Navigator.of(context).pop();
                        child.onPressed!();
                      },
                      tooltip: child.tooltip,
                      icon: child.icon,
                    );
                  default:
                    return child;
                }
              }).toList(),
            ),
          ),
        ),
        spacer,
        mission,
        spacer,
        products,
        spacer,
        team,
        spacer,
        contribute,
        spacer,
      ],
    );
  }
}
