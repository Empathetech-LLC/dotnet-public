/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';
import '../utils/export.dart';
import '../screens/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class DotnetScaffold extends StatelessWidget {
  /// Large screen:
  ///   default: [logo] is [AppBar] top left
  ///   isLefty: [logo] is [AppBar] top right
  /// Small screen:
  ///   [logo] is [AppBar] center
  final Widget? logo;

  /// [Scaffold.body] passthrough
  final Widget body;

  /// [FloatingActionButton]
  final Widget? fab;

  /// Standardized [Scaffold] for all of empathetech dotnet's screens
  const DotnetScaffold({
    super.key,
    this.logo,
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
    final double toolbarHeight = ezToolbarHeight(context, l10n.csPageTitle);

    // Define custom widgets //

    final Widget brandLogo = logo ??
        EzLinkWidget(
          isImage: true,
          onTap: () => context.goNamed(homePath),
          label: l10n.gLogoLabel(empatheticLLC),
          hint: l10n.gEmpathLogoHint,
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
      context: context,
      colorScheme: Theme.of(context).colorScheme,
      margin: margin,
    );

    final Widget iconLinksMenu = MenuAnchor(
      builder: (_, MenuController controller, ___) {
        return IconButton(
          onPressed: () =>
              controller.isOpen ? controller.close() : controller.open(),
          tooltip: l10n.gShare,
          icon: Icon(PlatformIcons(context).share),
        );
      },
      menuChildren: iconLinks.buttons
          .map((EzIconButton button) => EzMenuButton(
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
      logo: brandLogo,
      drawer: drawer,
      body: body,
      fab: fab,
    );

    final _LargeBuild largeBuild = _LargeBuild(
      toolbarHeight: toolbarHeight,
      margin: margin,
      isLefty: isLefty,
      logo: brandLogo,
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
            centerTitle: true,
            titleSpacing: 0,

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
