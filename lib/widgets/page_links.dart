/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';
import '../utils/export.dart';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class PageLinks extends StatelessWidget {
  /// Internal page links to put in the [AppBar]
  const PageLinks({super.key});

  // Define the build(s) //

  Widget get mission => EzLink(
        l10n.msPageTitle,
        style: EzConfig.styles.headlineLarge,
        textAlign: TextAlign.center,
        url: Uri.parse(missionURL),
        hint: l10n.gMissionHint,
        textColor: EzConfig.colors.onSurface,
      );

  Widget get products {
    final EdgeInsets linkPadding =
        EdgeInsets.symmetric(horizontal: EzConfig.marginVal);

    final MenuController controller = MenuController();

    Timer? dontClose;
    Timer? autoClose;

    void setAutoClose(bool focused) {
      if (focused) {
        autoClose?.cancel();
      } else {
        autoClose = Timer(
          const Duration(milliseconds: 750),
          () => controller.close(),
        );
      }
    }

    return MouseRegion(
      onEnter: (PointerEnterEvent event) {
        autoClose?.cancel();

        dontClose?.cancel();
        dontClose = Timer(
          const Duration(milliseconds: 500),
          doNothing, // Stops the UX of instinctively clicking on 'Products', having it open/close, and then having to open it again
        );

        if (!controller.isOpen) controller.open();
      },
      onExit: (PointerExitEvent event) {
        if (!controller.isOpen) return;

        autoClose?.cancel();
        autoClose = Timer(
          const Duration(milliseconds: 750),
          () => controller.close(),
        );
      },
      child: MenuAnchor(
        controller: controller,
        builder: (_, __, ___) => EzTextButton(
          text: l10n.psPageTitle,
          textStyle: EzConfig.styles.headlineLarge,
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
            style: EzConfig.styles.titleLarge,
            padding: linkPadding,
            textColor: EzConfig.colors.onSurface,
            textAlign: TextAlign.center,
            url: Uri.parse(Products.openUI.url),
            hint: l10n.gLearn(Products.openUI.name),
            onHover: setAutoClose,
          ),

          // SOS
          EzLink(
            Products.sos.name,
            style: EzConfig.styles.titleLarge,
            padding: linkPadding,
            textColor: EzConfig.colors.onSurface,
            textAlign: TextAlign.center,
            url: Uri.parse(Products.sos.url),
            hint: l10n.gLearn(Products.sos.name),
            onHover: setAutoClose,
          ),

          // Liminal
          EzLink(
            Products.liminal.name,
            style: EzConfig.styles.titleLarge,
            padding: linkPadding,
            textColor: EzConfig.colors.onSurface,
            textAlign: TextAlign.center,
            url: Uri.parse(Products.liminal.url),
            hint: l10n.gLearn(Products.liminal.name),
            onHover: setAutoClose,
          ),

          // Smoke Signal
          EzLink(
            Products.smokeSignal.name,
            style: EzConfig.styles.titleLarge,
            padding: linkPadding,
            textColor: EzConfig.colors.onSurface,
            textAlign: TextAlign.center,
            url: Uri.parse(Products.smokeSignal.url),
            hint: l10n.gLearn(Products.smokeSignal.name),
            onHover: setAutoClose,
          ),

          // Verified
          EzLink(
            Products.verified.name,
            style: EzConfig.styles.titleLarge,
            padding: linkPadding,
            textColor: EzConfig.colors.onSurface,
            textAlign: TextAlign.center,
            url: Uri.parse(Products.verified.url),
            hint: l10n.gLearn(Products.verified.name),
            onHover: setAutoClose,
          ),
        ],
      ),
    );
  }

  Widget get team => EzLink(
        l10n.tsPageTitle,
        style: EzConfig.styles.headlineLarge,
        textColor: EzConfig.colors.onSurface,
        textAlign: TextAlign.center,
        url: Uri.parse(teamURL),
        hint: l10n.gTeamHint,
      );

  Widget get contribute => EzLink(
        l10n.csPageTitle,
        style: EzConfig.styles.headlineLarge,
        textColor: EzConfig.colors.onSurface,
        textAlign: TextAlign.center,
        url: Uri.parse(contributeURL),
        hint: l10n.gContributeHint,
      );

  // Return the build //

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          mission,
          EzConfig.rowSpacer,
          products,
          EzConfig.rowSpacer,
          team,
          EzConfig.rowSpacer,
          contribute,
        ],
      );
}
