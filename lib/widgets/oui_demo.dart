/* website
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class OUIDemo extends StatelessWidget {
  final EzCP config;

  /// 2 years of work in 3 buttons
  const OUIDemo(this.config, {super.key});

  @override
  Widget build(BuildContext context) {
    final EzSwapSpacer halfSwapSpacer = EzSwapSpacer(config.spacing / 2);

    return EzCol(children: <Widget>[
      // 3 demo buttons
      EzRowCol.sym(config, children: <Widget>[
        // Low mobility
        Tooltip(
          message: config.ezL10n.ssTryMe,
          excludeFromSemantics: true,
          child: EzTextIconButton(
            config,
            onPressed: () => config.rebuildUI(
                changes: () async => await EzBigButtonsConfig.onPressed(config, false)),
            icon: EzIcon(config, Icons.touch_app),
            label: l10n(config).ouAccessible,
          ),
        ),
        config.swapSpacer,

        // Low vision
        Tooltip(
          message: config.ezL10n.ssTryMe,
          excludeFromSemantics: true,
          child: EzTextIconButton(
            config,
            onPressed: () => config.rebuildUI(
                changes: () async =>
                    await EzHighVisibilityConfig.onPressed(config, false, monoChrome: true)),
            icon: EzIcon(config, Icons.contrast),
            label: l10n(config).ouZeroStrain,
          ),
        ),
        halfSwapSpacer,

        // and
        Text(
          '&',
          style: ezSubTitleStyle(config.styles),
          textAlign: TextAlign.center,
          semanticsLabel: config.ezL10n.gAnd,
        ),
        halfSwapSpacer,

        // Random
        Tooltip(
          message: config.ezL10n.ssTryMe,
          excludeFromSemantics: true,
          child: EzTextIconButton(
            config,
            onPressed: () =>
                config.rebuildUI(changes: () async => await EzCM.randomize(config.isDark)),
            icon: EzIcon(config, LineIcons.diceD6),
            label: l10n(config).ouEverything,
          ),
        ),
      ]),
      // Reset button
      config.spacer,
      EzElevatedIconButton(
        config,
        onPressed: () =>
            config.rebuildUI(changes: () async => await EzCM.reset(config.isDark, forceOne: true)),
        icon: EzIcon(config, Icons.refresh),
        label: config.ezL10n.gReset,
      ),
    ]);
  }
}
