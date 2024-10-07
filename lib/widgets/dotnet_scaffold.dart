/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import './export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:efui_bios/efui_bios.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class DotnetScaffold extends StatelessWidget {
  final Widget body;

  /// [FloatingActionButton]
  final Widget? fab;

  /// Standardized [Scaffold] for all of empathetech dotnet's screens
  const DotnetScaffold({
    super.key,
    required this.body,
    this.fab,
  });

  @override
  Widget build(BuildContext context) {
    // Gather the theme data //

    final bool isLefty = EzConfig.get(isLeftyKey) ?? false;

    final double margin = EzConfig.get(marginKey);

    final Lang l10n = Lang.of(context)!;

    final TextStyle appBarTextStyle =
        Theme.of(context).appBarTheme.titleTextStyle!;
    final IconThemeData appBarIconData =
        Theme.of(context).appBarTheme.iconTheme!;

    // Set appBar height to equal space above and below text links
    final double toolbarHeight = measureText(
          l10n.spsPageTitle,
          context: context,
          style: appBarTextStyle,
        ).height +
        margin * 2;

    // Define custom widgets //

    final Widget logo = EzLinkWidget(
      isImage: true,
      onTap: () => context.goNamed(homePath),
      semanticLabel: l10n.gLogoHint,
      tooltip: l10n.gHomeHint,
      child: SizedBox(
        width: toolbarHeight,
        height: toolbarHeight,
        child: EmpathetechLogo(margin: margin),
      ),
    );

    final PageLinks pageLinks = PageLinks(
      context: context,
      style: appBarTextStyle,
    );

    final IconLinks iconLinks = IconLinks(
      colorScheme: Theme.of(context).colorScheme,
      iconSize: appBarIconData.size!,
      margin: margin,
      l10n: l10n,
    );

    final Widget iconLinksMenu = MenuAnchor(
      builder: (_, MenuController controller, ___) {
        return IconButton(
          onPressed: () {
            if (controller.isOpen) {
              controller.close();
            } else {
              controller.open();
            }
          },
          tooltip: l10n.gSocials,
          icon: Icon(PlatformIcons(context).share),
        );
      },
      menuChildren: iconLinks.buttons
          .map((IconButton button) => EzMenuButton(
                onPressed: button.onPressed,
                icon: button.icon,
                label: button.tooltip!,
              ))
          .toList(),
    );

    final DotNetDrawer drawer = DotNetDrawer(
      style: appBarTextStyle,
      header: iconLinks,
    );

    final double threshold = 2 * (toolbarHeight + 2 * margin) + pageLinks.width;

    // Define the build(s) //

    final _SmallBuild smallBuild = _SmallBuild(
      toolbarHeight: toolbarHeight,
      isLefty: isLefty,
      logo: logo,
      drawer: drawer,
      body: body,
      fab: fab,
    );

    final _LargeBuild largeBuild = _LargeBuild(
      toolbarHeight: toolbarHeight,
      margin: margin,
      isLefty: isLefty,
      logo: logo,
      pageLinks: pageLinks,
      iconLinksMenu: iconLinksMenu,
      body: body,
      fab: fab,
    );

    // Return the build //

    return EzSwapScaffold(
      small: smallBuild,
      large: largeBuild,
      threshold: threshold,
    );
  }
}

class _SmallBuild extends StatelessWidget {
  final double width = double.infinity;
  final double toolbarHeight;
  final bool isLefty;
  final Widget logo;
  final DotNetDrawer drawer;
  final Widget body;
  final Widget? fab;

  /// [DotnetScaffold] for when there is limited screen space
  /// Has a mobile-like layout
  const _SmallBuild({
    required this.toolbarHeight,
    required this.isLefty,
    required this.logo,
    required this.drawer,
    required this.body,
    required this.fab,
  });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, toolbarHeight),
          child: AppBar(
            excludeHeaderSemantics: true,
            toolbarHeight: toolbarHeight,

            // Title
            title: logo,

            // Actions (aka trailing aka right)
            actions: isLefty ? const <Widget>[EzBackAction()] : null,
          ),
        ),

        // Drawer replaces leading (aka left)
        drawer: isLefty ? drawer : null,

        // End drawer replaces actions (aka trailing aka right)
        endDrawer: isLefty ? null : drawer,

        // Body
        body: body,

        // FAB
        floatingActionButton: fab,
        floatingActionButtonLocation: isLefty
            ? FloatingActionButtonLocation.startFloat
            : FloatingActionButtonLocation.endFloat,

        // Prevents the keyboard from pushing the body up
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}

class _LargeBuild extends StatelessWidget {
  final double width = double.infinity;
  final double toolbarHeight;
  final double margin;
  final bool isLefty;
  final Widget logo;
  final PageLinks pageLinks;
  final Widget iconLinksMenu;
  final Widget body;
  final Widget? fab;

  /// [DotnetScaffold] for when there is ample screen space
  /// Has a traditional footer-less web page layout
  const _LargeBuild({
    required this.toolbarHeight,
    required this.margin,
    required this.isLefty,
    required this.logo,
    required this.pageLinks,
    required this.iconLinksMenu,
    required this.body,
    required this.fab,
  });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(width, toolbarHeight),
          child: AppBar(
            excludeHeaderSemantics: true,
            toolbarHeight: toolbarHeight,

            // Leading (aka left)
            leading: isLefty ? iconLinksMenu : logo,
            leadingWidth: toolbarHeight,

            // Title
            title: pageLinks,
            centerTitle: true,
            titleSpacing: 0,

            // Action (aka trailing aka right)
            actions: isLefty ? <Widget>[logo] : <Widget>[iconLinksMenu],
          ),
        ),

        // Body
        body: body,

        // FAB
        floatingActionButton: fab,
        floatingActionButtonLocation: isLefty
            ? FloatingActionButtonLocation.startFloat
            : FloatingActionButtonLocation.endFloat,

        // Prevents the keyboard from pushing the body up
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
