/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';
import '../utils/export.dart';
import '../screens/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class DotnetScaffold extends StatelessWidget {
  /// Large screen:
  ///   default: [logo] is [AppBar] top left
  ///   EzConfig.isLefty: [logo] is [AppBar] top right
  /// Small screen:
  ///   [logo] is [AppBar] center
  final Widget? logo;

  /// [Scaffold.body] passthrough
  final Widget body;

  /// [FloatingActionButton]s to add on top of the [EzUpdaterFAB]
  /// BYO spacing widgets
  final List<Widget>? fabs;

  /// Standardized [Scaffold] for all of empathetech dotnet's screens
  const DotnetScaffold(this.body, {super.key, this.logo, this.fabs});

  // Define custom functions //

  double pageLinksWidth(BuildContext context) =>
      ezTextSize(
        l10n.msPageTitle +
            l10n.psPageTitle +
            l10n.tsPageTitle +
            l10n.csPageTitle,
        style: EzConfig.styles.headlineLarge,
        context: context,
      ).width +
      EzConfig.spacing * 5;

  @override
  Widget build(BuildContext context) {
    // Gather the contextual theme data //

    final double toolbarHeight =
        ezToolbarHeight(context: context, title: l10n.csPageTitle);

    // Define custom widgets //

    final Widget brandLogo = logo ??
        EzLinkWidget(
          isImage: true,
          url: Uri.parse(homeURL),
          label: l10n.gLogoLabel(empatheticLLC),
          hint: l10n.gEmpathLogoHint,
          tooltip: l10n.gHomeHint,
          child: SizedBox(
            width: toolbarHeight,
            height: toolbarHeight,
            child: Logo(margin: EzConfig.marginVal),
          ),
        );

    final IconLinks iconLinks = IconLinks();

    final Widget iconLinksMenu = MenuAnchor(
      builder: (_, MenuController controller, ___) => IconButton(
        onPressed: () =>
            controller.isOpen ? controller.close() : controller.open(),
        tooltip: l10n.gShare,
        icon: const Icon(Icons.share),
      ),
      menuChildren: iconLinks.buttons.map((Widget button) {
        switch (button.runtimeType) {
          case const (IconLink):
            button as IconLink;

            return EzMenuLink(
              uri: button.url,
              icon: button.icon,
              label: button.tooltip,
            );
          case const (EzIconButton):
            button as EzIconButton;

            return EzMenuButton(
              onPressed: button.onPressed,
              icon: button.icon,
              label: button.tooltip!,
            );
          default:
            throw Exception(
              'Unsupported iconLinksMenu button type: ${button.runtimeType}',
            );
        }
      }).toList(),
    );

    // Define the build(s) //

    final _RestrictedScaffold restricted = _RestrictedScaffold(
      toolbarHeight: toolbarHeight,
      logo: brandLogo,
      drawer: DotNetDrawer(header: iconLinks),
      body: body,
      fabs: <Widget>[updater, if (fabs != null) ...fabs!],
    );

    final _ExpandedScaffold expanded = _ExpandedScaffold(
      toolbarHeight: toolbarHeight,
      logo: brandLogo,
      iconLinksMenu: iconLinksMenu,
      body: body,
      fabs: <Widget>[updater, if (fabs != null) ...fabs!],
    );

    // Return the build //

    final double newSmall =
        2 * (toolbarHeight + 2 * EzConfig.marginVal) + pageLinksWidth(context);

    return EzAdaptiveParent(
      small: restricted,
      medium: expanded,
      offset: (newSmall - ScreenSize.small.size),
    );
  }
}

class _RestrictedScaffold extends Consumer<EzConfigProvider> {
  final double toolbarHeight;
  final Widget logo;
  final DotNetDrawer drawer;
  final Widget body;
  final List<Widget> fabs;

  /// [DotnetScaffold] for when there is limited screen space
  /// Has a mobile-like layout
  _RestrictedScaffold({
    required this.toolbarHeight,
    required this.logo,
    required this.drawer,
    required this.body,
    required this.fabs,
  }) : super(
          builder: (_, EzConfigProvider config, __) => Scaffold(
            key: ValueKey<int>(config.seed),
            appBar: PreferredSize(
              preferredSize: Size(double.infinity, toolbarHeight),
              child: AppBar(
                excludeHeaderSemantics: true,
                toolbarHeight: toolbarHeight,

                // Title
                title: logo,
                centerTitle: true,
                titleSpacing: 0,

                // Actions (aka trailing aka right)
                actions:
                    EzConfig.isLefty ? const <Widget>[EzBackAction()] : null,
              ),
            ),
            drawer: EzConfig.isLefty ? drawer : null,
            endDrawer: EzConfig.isLefty ? null : drawer,
            body: body,
            floatingActionButton:
                Column(mainAxisSize: MainAxisSize.min, children: fabs),
            floatingActionButtonLocation: EzConfig.isLefty
                ? FloatingActionButtonLocation.startFloat
                : FloatingActionButtonLocation.endFloat,
            resizeToAvoidBottomInset: false,
          ),
        );
}

class _ExpandedScaffold extends Consumer<EzConfigProvider> {
  final double toolbarHeight;
  final Widget logo;

  final Widget iconLinksMenu;
  final Widget body;
  final List<Widget> fabs;

  /// [DotnetScaffold] for when there is ample screen space
  /// Has a traditional footer-less web page layout
  _ExpandedScaffold({
    required this.toolbarHeight,
    required this.logo,
    required this.iconLinksMenu,
    required this.body,
    required this.fabs,
  }) : super(
          builder: (_, EzConfigProvider config, __) => Scaffold(
            key: ValueKey<int>(config.seed),
            appBar: PreferredSize(
              preferredSize: Size(double.infinity, toolbarHeight),
              child: AppBar(
                excludeHeaderSemantics: true,
                toolbarHeight: toolbarHeight,

                // Leading (aka left)
                leading: EzConfig.isLefty ? iconLinksMenu : logo,
                leadingWidth: toolbarHeight,

                // Title
                title: const PageLinks(),
                centerTitle: true,
                titleSpacing: 0,

                // Action (aka trailing aka right)
                actions:
                    EzConfig.isLefty ? <Widget>[logo] : <Widget>[iconLinksMenu],
              ),
            ),
            body: body,
            floatingActionButton:
                Column(mainAxisSize: MainAxisSize.min, children: fabs),
            floatingActionButtonLocation: EzConfig.isLefty
                ? FloatingActionButtonLocation.startFloat
                : FloatingActionButtonLocation.endFloat,
            resizeToAvoidBottomInset: false,
          ),
        );
}

class DotNetDrawer extends StatelessWidget {
  /// [IconLinks] to be displayed in the [DrawerHeader]
  final IconLinks header;

  /// [PageLinks] to be displayed in the [NavigationDrawer]
  final PageLinks _pageLinks;

  /// Universal [NavigationDrawer] for dotnet
  const DotNetDrawer({super.key, required this.header})
      : _pageLinks = const PageLinks();

  @override
  Widget build(BuildContext context) => NavigationDrawer(
        tilePadding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Center(
              child: EzScrollView(
                mainAxisSize: MainAxisSize.min,
                scrollDirection: Axis.horizontal,
                showScrollHint: true,
                children: header.children.map((Widget child) {
                  switch (child.runtimeType) {
                    case const (EzIconButton):
                      child as EzIconButton;

                      return EzIconButton(
                        style: child.style,
                        onPressed: () {
                          Navigator.of(context).pop();
                          child.onPressed?.call();
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
          EzConfig.spacer,
          _pageLinks.mission,
          EzConfig.spacer,
          _pageLinks.products,
          EzConfig.spacer,
          _pageLinks.team,
          EzConfig.spacer,
          _pageLinks.contribute,
        ],
      );
}
