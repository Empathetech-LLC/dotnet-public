/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class EFUIDemo extends StatelessWidget {
  /// 2 years of work in 3 buttons
  const EFUIDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // Gather the fixed theme data //

    const EzSwapSpacer swapSpacer = EzSwapSpacer();
    final EzSwapSpacer halfSwapSpacer =
        EzSwapSpacer(space: EzConfig.get(spacingKey) / 2);

    final EdgeInsets linkPadding = EzInsets.wrap(EzConfig.get(marginKey));

    final EFUILang el10n = ezL10n(context);
    final Lang l10n = Lang.of(context)!;

    // Define custom functions //

    ScaffoldFeatureController<SnackBar, SnackBarClosedReason> reloadSnack(
      String message,
    ) =>
        ezSnackBar(context: context, message: message);

    // Define the build data //

    late final String reloadMessage = el10n.ssRestartReminderWeb;

    late final List<Widget> demos = <Widget>[
      // Low mobility
      Tooltip(
        message: el10n.ssTryMe,
        excludeFromSemantics: true,
        child: EzTextIconButton(
          onPressed: () async {
            await EzBigButtonsConfig.onPressed();
            reloadSnack('${l10n.psRandom} $reloadMessage');
          },
          style: TextButton.styleFrom(padding: linkPadding),
          icon: EzIcon(Icons.touch_app),
          label: l10n.psAccessible,
        ),
      ),
      swapSpacer,

      // Low vision
      Tooltip(
        message: el10n.ssTryMe,
        excludeFromSemantics: true,
        child: EzTextIconButton(
          onPressed: () async {
            await EzHighVisibilityConfig.onPressed(isDarkTheme(context));
            reloadSnack('${l10n.psRandom} $reloadMessage');
          },
          style: TextButton.styleFrom(padding: linkPadding),
          icon: EzIcon(Icons.contrast),
          label: l10n.psZeroStrain,
        ),
      ),
      halfSwapSpacer,

      // and
      Text(
        '&',
        style: ezSubTitleStyle(Theme.of(context).textTheme),
        textAlign: TextAlign.center,
        semanticsLabel: el10n.gAnd,
      ),
      halfSwapSpacer,

      // Random
      Tooltip(
        message: el10n.ssTryMe,
        excludeFromSemantics: true,
        child: EzTextIconButton(
          onPressed: () async {
            await EzConfig.randomize(isDarkTheme(context));
            reloadSnack('${l10n.psRandom} $reloadMessage');
          },
          style: TextButton.styleFrom(padding: linkPadding),
          icon: EzIcon(LineIcons.diceD6),
          label: l10n.psEverything,
        ),
      ),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // Demo buttons
        EzRowCol.sym(mainAxisSize: MainAxisSize.min, children: demos),
        const EzSeparator(),

        // Reset button
        EzElevatedIconButton(
          onPressed: () async {
            // Reset
            await EzConfig.removeKeys(isMobile()
                ? empathMobileConfig.keys.toSet()
                : empathDesktopConfig.keys.toSet());

            // Notify user
            reloadSnack(reloadMessage);
          },
          icon: EzIcon(PlatformIcons(context).refresh),
          label: el10n.gReset,
        ),
      ],
    );
  }
}
