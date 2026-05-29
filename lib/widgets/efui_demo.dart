/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class EFUIDemo extends StatelessWidget {
  /// 2 years of work in 3 buttons
  const EFUIDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final EzSwapSpacer halfSwapSpacer = EzSwapSpacer(space: EzConfig.spacing / 2);

    return EzCol(children: <Widget>[
      // 3 demo buttons
      EzRowCol.sym(children: <Widget>[
        // Low mobility
        Tooltip(
          message: EzConfig.l10n.ssTryMe,
          excludeFromSemantics: true,
          child: EzTextIconButton(
            onPressed: () => EzConfig.rebuildUI(changes: () => EzBigButtonsConfig.onPressed(false)),
            icon: EzIcon(Icons.touch_app),
            label: l10n.ouAccessible,
          ),
        ),
        const EzSwapSpacer(),

        // Low vision
        Tooltip(
          message: EzConfig.l10n.ssTryMe,
          excludeFromSemantics: true,
          child: EzTextIconButton(
            onPressed: () => EzConfig.rebuildUI(
                changes: () => EzHighVisibilityConfig.onPressed(
                      updateBoth: false,
                      monoChrome: true,
                    )),
            icon: EzIcon(Icons.contrast),
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
            onPressed: () => EzConfig.rebuildUI(changes: () => EzConfig.randomize()),
            icon: EzIcon(LineIcons.diceD6),
            label: l10n.ouEverything,
          ),
        ),
      ]),
      // Reset button
      EzConfig.spacer,
      EzElevatedIconButton(
        onPressed: () => EzConfig.rebuildUI(changes: () => EzConfig.reset(forceOne: true)),
        icon: EzIcon(Icons.refresh),
        label: EzConfig.l10n.gReset,
      ),
    ]);
  }
}
