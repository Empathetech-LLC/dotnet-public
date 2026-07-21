/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';
import '../utils/export.dart';
import '../screens/export.dart';
import 'package:oui_bios/oui_bios.dart';

import 'package:flutter/material.dart';
import 'package:open_ui/open_ui.dart';

class DotnetScaffold extends StatelessWidget {
  final EzCP config;
  final Widget? logo;
  final Widget body;
  final List<Widget>? fabs;
  final bool isHome;

  /// Standardized [Scaffold] for Open UI screens
  const DotnetScaffold(
    this.config, {
    super.key,
    this.logo,
    required this.body,
    this.fabs,
    this.isHome = false,
  });

  // Define custom functions //

  double pageLinksWidth(BuildContext context) =>
      ezTextSize(
        l10n(config).psPageTitle + l10n(config).csPageTitle,
        style: config.headlineStyle,
        context: context,
      ).width +
      config.spacing * 3;

  @override
  Widget build(BuildContext context) {
    // Gather the contextual theme data //

    final double toolbarHeight =
        ezToolbarHeight(config, context: context, title: l10n(config).csPageTitle);

    // Define custom widgets //

    final Widget linkLogo = EzLinkWidget(
      config,
      isImage: true,
      url: Uri.parse(homeURL),
      label: l10n(config).gLogoLabel(ywt),
      hint: l10n(config).gYWTLogoHint,
      tooltip: l10n(config).gHomeHint,
      child: SizedBox(
        width: toolbarHeight,
        height: toolbarHeight,
        child: Logo(margin: config.marginVal, colorScheme: config.colors),
      ),
    );

    final IconLinks iconLinks = IconLinks(config);

    // Define the build(s) //

    final List<Widget> finalFabs = <Widget>[
      updater(config),
      if (fabs != null) ...fabs!,
      ...config.backFABs(isHome),
    ];

    final _RestrictedScaffold restricted = _RestrictedScaffold(
      config,
      toolbarHeight: toolbarHeight,
      linkLogo: linkLogo,
      swapDrawer: DotNetDrawer(config, header: iconLinks),
      body: body,
      fabs: finalFabs,
      isHome: isHome,
    );

    final _ExpandedScaffold expanded = _ExpandedScaffold(
      config,
      toolbarHeight: toolbarHeight,
      linkLogo: linkLogo,
      iconLinksMenu: iconLinks.noSpacers,
      body: body,
      fabs: finalFabs,
      isHome: isHome,
    );

    // Return the build //

    final double newSmall = 2 * (toolbarHeight + 2 * config.marginVal) + pageLinksWidth(context);

    return EzAdaptiveParent(
      small: restricted,
      medium: expanded,
      offset: (newSmall - ScreenSize.small.size),
    );
  }
}

class _RestrictedScaffold extends EzScaffold {
  final double toolbarHeight;
  final Widget linkLogo;
  final DotNetDrawer swapDrawer;
  final bool isHome;

  /// [DotnetScaffold] for when there is limited screen space
  /// Has a mobile-like layout
  _RestrictedScaffold(
    super.config, {
    required this.toolbarHeight,
    required this.linkLogo,
    required this.swapDrawer,
    required super.body,
    required super.fabs,
    required this.isHome,
  }) : super(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, toolbarHeight),
            child: EzAppBar(
              config,
              height: toolbarHeight,
              title: isHome ? const SizedBox.shrink() : linkLogo,
              actions: config.isLefty ? <Widget>[EzBackAction(config)] : null,
            ),
          ),
          drawer: config.isLefty ? swapDrawer : null,
          endDrawer: config.isLefty ? null : swapDrawer,
        );
}

class _ExpandedScaffold extends EzScaffold {
  final double toolbarHeight;
  final Widget linkLogo;
  final Widget iconLinksMenu;
  final bool isHome;

  /// [DotnetScaffold] for when there is ample screen space
  /// Has a traditional footer-less web page layout
  _ExpandedScaffold(
    super.config, {
    required this.toolbarHeight,
    required this.linkLogo,
    required this.iconLinksMenu,
    required super.body,
    required super.fabs,
    required this.isHome,
  }) : super(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, toolbarHeight),
            child: EzAppBar(
              config,
              height: toolbarHeight,
              leading: config.isLefty ? iconLinksMenu : (isHome ? null : linkLogo),
              leadingWidth: isHome ? null : toolbarHeight,
              title: PageLinks(config),
              actions:
                  config.isLefty ? (isHome ? null : <Widget>[linkLogo]) : <Widget>[iconLinksMenu],
            ),
          ),
        );
}

class DotNetDrawer extends StatelessWidget {
  final EzCP config;
  final IconLinks header;
  late final PageLinks _pageLinks;

  DotNetDrawer(this.config, {super.key, required this.header}) {
    _pageLinks = PageLinks(config);
  }

  @override
  Widget build(BuildContext context) => NavigationDrawer(
        tilePadding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Center(
              child: EzScrollView(
                config,
                scrollDirection: Axis.horizontal,
                showScrollHint: true,
                thumbVisibility: false,
                children: header.yesSpacers
                    .map((Widget child) => switch (child.runtimeType) {
                          const (EzIconButton) => EzIconButton(
                              config,
                              style: (child as EzIconButton).style,
                              onPressed: () {
                                Navigator.of(context).pop();
                                child.onPressed?.call();
                              },
                              tooltip: child.tooltip,
                              icon: child.icon,
                            ),
                          _ => child,
                        })
                    .toList(),
              ),
            ),
          ),
          config.spacer,
          ..._pageLinks.products(config),
          config.spacer,
          _pageLinks.contribute,
        ],
      );
}
