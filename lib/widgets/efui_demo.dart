/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class EFUIDemo extends StatelessWidget {
  /// setState((){})
  final void Function() stateCallback;

  /// 2 years of work in 3 buttons
  const EFUIDemo(this.stateCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    // Gather the contextual theme data //

    final EzSwapSpacer halfSwapSpacer =
        EzSwapSpacer(space: EzConfig.spacing / 2);
    final EdgeInsets linkPadding = EzInsets.wrap(EzConfig.marginVal);

    // Define custom functions //

    Future<void> redraw() => EzConfig.rebuildUI(stateCallback);

    // Return the build //

    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      // 3 demo buttons
      EzRowCol.sym(mainAxisSize: MainAxisSize.min, children: <Widget>[
        // Low mobility
        Tooltip(
          message: EzConfig.l10n.ssTryMe,
          excludeFromSemantics: true,
          child: EzTextIconButton(
            onPressed: () async {
              await EzBigButtonsConfig.onPressed(EzConfig.isDark);
              await redraw();
            },
            style: TextButton.styleFrom(padding: linkPadding),
            icon: const Icon(Icons.touch_app),
            label: l10n.ouAccessible,
          ),
        ),
        const EzSwapSpacer(),

        // Low vision
        Tooltip(
          message: EzConfig.l10n.ssTryMe,
          excludeFromSemantics: true,
          child: EzTextIconButton(
            onPressed: () async {
              await EzHighVisibilityConfig.onPressed(EzConfig.isDark);
              await redraw();
            },
            style: TextButton.styleFrom(padding: linkPadding),
            icon: const Icon(Icons.contrast),
            label: l10n.ouZeroStrain,
          ),
        ),
        halfSwapSpacer,

        // and
        Text(
          '&',
          style: ezSubTitleStyle(),
          textAlign: TextAlign.center,
          semanticsLabel: EzConfig.l10n.gAnd,
        ),
        halfSwapSpacer,

        // Random
        Tooltip(
          message: EzConfig.l10n.ssTryMe,
          excludeFromSemantics: true,
          child: EzTextIconButton(
            onPressed: () async {
              await EzConfig.randomize();
              await redraw();
            },
            style: TextButton.styleFrom(padding: linkPadding),
            icon: const Icon(LineIcons.diceD6),
            label: l10n.ouEverything,
          ),
        ),
      ]),
      // Reset button
      EzConfig.spacer,
      EzElevatedIconButton(
        onPressed: () async {
          await EzConfig.reset(false);
          await redraw();
        },
        icon: const Icon(Icons.refresh),
        label: EzConfig.l10n.gReset,
      ),
    ]);
  }
}
