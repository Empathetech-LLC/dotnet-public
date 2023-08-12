import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    final EzSelectableText products = EzSelectableText.rich(
      EzLink(
        text: 'Products',
        style: style,
        action: () => context.goNamed('products'),
        semanticsLabel: 'Go to the products page',
      ),
    );

    EzSelectableText team = EzSelectableText.rich(EzLink(
      text: 'The Team',
      style: style,
      action: () => context.goNamed('team'),
      semanticsLabel: 'Go to the Empathetech team page',
    ));

    final EzSelectableText plan = EzSelectableText.rich(
      EzLink(
        text: 'The Plan',
        style: style,
        action: () => context.goNamed('plan'),
        semanticsLabel: 'Go to the Empathetech business plan page',
      ),
    );

    final EzSelectableText contribute = EzSelectableText.rich(
      EzLink(
        text: 'Contribute',
        style: style,
        action: () => context.goNamed('contribute'),
        semanticsLabel: 'Go to the contributions page',
      ),
    );

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
