/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class PageLinks extends StatelessWidget {
  /// [BuildContext] passthrough
  final BuildContext context;

  /// [TextStyle] for the main [EzLink]s
  final TextStyle? baseStyle;

  /// [TextStyle] for the menu [EzLink]s
  final TextStyle? menuStyle;

  /// [ColorScheme] for the [EzLink]s
  final ColorScheme colorScheme;

  /// Internal page links to put in the [AppBar]
  const PageLinks({
    super.key,
    required this.context,
    required this.baseStyle,
    required this.menuStyle,
    required this.colorScheme,
  });

  // Define custom functions //

  /// Helpful for [EzAdaptiveScaffold] calculations
  double get width {
    final Lang l10n = Lang.of(context)!;

    final double wordWidth = ezTextSize(
      l10n.msPageTitle + l10n.psPageTitle + l10n.tsPageTitle + l10n.csPageTitle,
      style: baseStyle,
      context: context,
    ).width;

    return wordWidth + EzConfig.get(spacingKey) * 5;
  }

  // Define the build //

  Widget get mission {
    return EzLink(
      Lang.of(context)!.msPageTitle,
      style: baseStyle,
      textAlign: TextAlign.center,
      url: Uri.parse(missionURL),
      hint: Lang.of(context)!.gMissionHint,
      textColor: colorScheme.onSurface,
    );
  }

  Widget get products {
    final Lang l10n = Lang.of(context)!;
    final EdgeInsets menuPadding =
        EdgeInsets.symmetric(horizontal: EzConfig.get(marginKey));

    final MenuController controller = MenuController();

    Timer? dontClose;
    Timer? autoClose;

    void setAutoClose(bool focused) {
      if (focused) {
        autoClose?.cancel();
      } else {
        autoClose = Timer(
          const Duration(milliseconds: 500),
          () => controller.close(),
        );
      }
    }

    return MouseRegion(
      onEnter: (PointerEnterEvent event) {
        autoClose?.cancel();

        dontClose?.cancel();
        dontClose = Timer(
          const Duration(milliseconds: 250),
          () => controller.close(),
        ); // Stops the UX of instinctively clicking on 'Products', having it open/close, and then having to open it again

        if (!controller.isOpen) controller.open();
      },
      onExit: (PointerExitEvent event) {
        if (!controller.isOpen) return;

        autoClose?.cancel();
        autoClose = Timer(
          const Duration(milliseconds: 500),
          () => controller.close(),
        );
      },
      child: MenuAnchor(
        controller: controller,
        builder: (_, __, ___) => EzTextButton(
          text: l10n.psPageTitle,
          textStyle: baseStyle,
          textAlign: TextAlign.center,
          onPressed: () {
            autoClose?.cancel();

            if (!controller.isOpen) {
              controller.open();
            } else {
              if (dontClose?.isActive == true) return;
              controller.close();
            }
          },
        ),
        menuChildren: <Widget>[
          // Open UI
          EzLink(
            Products.openUI.name,
            style: menuStyle,
            padding: menuPadding,
            textColor: colorScheme.onSurface,
            textAlign: TextAlign.center,
            url: Uri.parse(Products.openUI.url),
            hint: l10n.gLearn(Products.openUI.name),
            onHover: setAutoClose,
          ),

          // SOS
          EzLink(
            Products.sos.name,
            style: menuStyle,
            padding: menuPadding,
            textColor: colorScheme.onSurface,
            textAlign: TextAlign.center,
            url: Uri.parse(Products.sos.url),
            hint: l10n.gLearn(Products.sos.name),
            onHover: setAutoClose,
          ),

          // Smoke Signal
          EzLink(
            Products.smokeSignal.name,
            style: menuStyle,
            padding: menuPadding,
            textColor: colorScheme.onSurface,
            textAlign: TextAlign.center,
            url: Uri.parse(Products.smokeSignal.url),
            hint: l10n.gLearn(Products.smokeSignal.name),
            onHover: setAutoClose,
          ),
        ],
      ),
    );
  }

  Widget get team {
    return EzLink(
      Lang.of(context)!.tsPageTitle,
      style: baseStyle,
      textColor: colorScheme.onSurface,
      textAlign: TextAlign.center,
      url: Uri.parse(teamURL),
      hint: Lang.of(context)!.gTeamHint,
    );
  }

  Widget get contribute {
    return EzLink(
      Lang.of(context)!.csPageTitle,
      style: baseStyle,
      textColor: colorScheme.onSurface,
      textAlign: TextAlign.center,
      url: Uri.parse(contributeURL),
      hint: Lang.of(context)!.gContributeHint,
    );
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    const EzSpacer spacer = EzSpacer(vertical: false);

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        mission,
        spacer,
        products,
        spacer,
        team,
        spacer,
        contribute,
      ],
    );
  }
}
