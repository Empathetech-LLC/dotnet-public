import '../screens/screens.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class InternalLinks extends StatelessWidget {
  final GlobalKey? key;

  /// [TextStyle] to use on the links' text
  final TextStyle? style;

  /// Pass in the value from MediaQuery.of(context).textScaleFactor
  final double scalar;

  /// How much distance should be between the links
  final double spacer;

  /// Should the return type be a [Drawer] widget
  final bool isDrawer;

  /// Internal page links to put in the [AppBar]
  /// Builds either a [Row] or [Drawer] depending on [isDrawer]
  const InternalLinks({
    this.key,
    required this.style,
    required this.scalar,
    required this.spacer,
    this.isDrawer = false,
  }) : super(key: key);

  double get width {
    double total = 0;

    total += measureText(
      text: 'Products',
      scalar: scalar,
      style: style,
    ).width;
    total += spacer;

    total += measureText(
      text: 'The Team',
      scalar: scalar,
      style: style,
    ).width;
    total += spacer;

    total += measureText(
      text: 'The Plan',
      scalar: scalar,
      style: style,
    ).width;
    total += spacer;

    total += measureText(
      text: 'Contribute',
      scalar: scalar,
      style: style,
    ).width;

    return total;
  }

  @override
  Widget build(BuildContext context) {
    final EzSelectableText products = EzSelectableText.rich(EzLink(
      text: 'Products',
      style: style,
      recognizer: EzLink.onTap(
        action: () => pushScreen(
          context: context,
          screen: const ProductsScreen(),
        ),
      ),
    ));

    EzSelectableText team = EzSelectableText.rich(EzLink(
      text: 'The Team',
      style: style,
      recognizer: EzLink.onTap(
        action: () => pushScreen(
          context: context,
          screen: const TeamScreen(),
        ),
      ),
    ));

    final EzSelectableText plan = EzSelectableText.rich(EzLink(
      text: 'The Plan',
      style: style,
      recognizer: EzLink.onTap(
        action: () => pushScreen(
          context: context,
          screen: const PlanScreen(),
        ),
      ),
    ));

    final EzSelectableText contribute = EzSelectableText.rich(EzLink(
      text: 'Contribute',
      style: style,
      recognizer: EzLink.onTap(
        action: () => pushScreen(
          context: context,
          screen: const ContributeScreen(),
        ),
      ),
    ));

    // Return build //

    return isDrawer
        ? Drawer(
            child: EzScrollView(
              children: [
                DrawerHeader(child: Container()),
                products,
                EzSpacer(spacer),
                team,
                EzSpacer(spacer),
                plan,
                EzSpacer(spacer),
                contribute,
              ],
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              products,
              EzSpacer.row(spacer),
              team,
              EzSpacer.row(spacer),
              plan,
              EzSpacer.row(spacer),
              contribute,
            ],
          );
  }
}
