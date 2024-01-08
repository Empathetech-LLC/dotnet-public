import 'utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class DotNetScaffold extends StatelessWidget {
  final Key? key;

  /// Optional [TabBar] widget for pages with sub-pages
  final TabBar? tabBar;

  final Widget body;

  /// [FloatingActionButton]
  final Widget fab;

  const DotNetScaffold({
    this.key,
    this.tabBar,
    required this.body,
    required this.fab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Gather the theme data //

    final bool isRighty = EzConfig.get(isRightHandKey) ?? true;
    final bool isLight = !PlatformTheme.of(context)!.isDark;

    // Reverse the colors of the app bar to highlight it
    final Color appBarColor = Theme.of(context).colorScheme.onBackground;
    final Color appBarTextColor = Theme.of(context).colorScheme.background;

    final TextStyle appBarTextStyle = Theme.of(context)
        .appBarTheme
        .titleTextStyle!
        .copyWith(color: appBarTextColor);

    final IconThemeData appBarIconData =
        Theme.of(context).appBarTheme.iconTheme!.copyWith(
              color: appBarTextColor,
            );

    final AppBarTheme appBarTheme = AppBarTheme(
      color: appBarColor,
      iconTheme: appBarIconData,
      actionsIconTheme: appBarIconData,
      titleTextStyle: appBarTextStyle,
    );
    final TabBarTheme tabBarTheme = TabBarTheme(
      labelStyle: Theme.of(context)
          .tabBarTheme
          .labelStyle!
          .copyWith(color: appBarTextColor),
    );

    final double margin = EzConfig.get(marginKey);
    final double buttonSpace = EzConfig.get(buttonSpacingKey);

    // Set appBar height to equal space above and below text links
    final double toolbarHeight =
        MediaQuery.textScalerOf(context).scale(appBarTextStyle.fontSize!) * 3;

    final double tabBarHeight = (tabBar == null) ? 0 : toolbarHeight * (2 / 3);

    // Define shared widgets //

    final Widget logo = Container(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: EzLinkImage(
        image: AssetImage(isLight ? darkLogoPath : lightLogoPath),
        height: toolbarHeight,
        width: toolbarHeight,
        onTap: () => context.goNamed(homeRoute),
        semanticLabel: Lang.of(context)!.gLogoHint,
        tooltip: Lang.of(context)!.gHomeHint,
      ),
    );

    final PageLinks pageLinks = PageLinks(
      context: context,
      style: appBarTextStyle,
      spacer: buttonSpace,
    );

    final IconLinks iconLinks = IconLinks(
      context: context,
      iconSize: appBarIconData.size!,
      spacer: buttonSpace,
      margin: margin,
      color: Theme.of(context).colorScheme.onSurface,
    );

    final Widget iconLinksMenu = PopupMenuButton(
      icon: Icon(PlatformIcons(context).share),
      itemBuilder: (BuildContext context) => iconLinks.buttons
          .map((IconButton button) => PopupMenuItem(
                child: TextButton.icon(
                  icon: button.icon,
                  label: Text(button.tooltip!),
                  onPressed: button.onPressed,
                  style: Theme.of(context).textButtonTheme.style!.copyWith(
                        foregroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: buttonSpace / 2,
                  horizontal: buttonSpace,
                ),
                onTap: button.onPressed,
              ))
          .toList(),
      tooltip: Lang.of(context)!.gSocials,
      padding: EdgeInsets.symmetric(horizontal: margin),
    );

    final DotNetDrawer drawer = DotNetDrawer(
      context: context,
      style: appBarTextStyle,
      spacer: buttonSpace,
      header: iconLinks,
    );

    double threshold = 2 * (toolbarHeight + 2 * margin) + pageLinks.width;

    // Define the build(s) //

    final _SmallBuild smallBuild = _SmallBuild(
      appBarTheme: appBarTheme,
      tabBarTheme: tabBarTheme,
      toolbarHeight: toolbarHeight,
      tabBarHeight: tabBarHeight,
      tabBar: tabBar,
      logo: logo,
      drawer: drawer,
      isRighty: isRighty,
      body: body,
      fab: fab,
    );

    final _LargeBuild largeBuild = _LargeBuild(
      appBarTheme: appBarTheme,
      tabBarTheme: tabBarTheme,
      toolbarHeight: toolbarHeight,
      tabBarHeight: tabBarHeight,
      margin: margin,
      tabBar: tabBar,
      logo: logo,
      pageLinks: pageLinks,
      iconLinksMenu: iconLinksMenu,
      isRighty: isRighty,
      body: body,
      fab: fab,
    );

    // Return the build //

    return SelectionArea(
      child: EzSwapScaffold(
        small: smallBuild,
        large: largeBuild,
        threshold: threshold,
      ),
    );
  }
}

class _SmallBuild extends StatelessWidget {
  final double width = double.infinity;
  final AppBarTheme appBarTheme;
  final TabBarTheme tabBarTheme;
  final double toolbarHeight;
  final double tabBarHeight;
  final TabBar? tabBar;
  final Widget logo;
  final DotNetDrawer drawer;
  final bool isRighty;
  final Widget body;
  final Widget fab;

  /// [DotNetScaffold] for when there is limited screen space
  /// Has a mobile-like layout
  const _SmallBuild({
    required this.appBarTheme,
    required this.tabBarTheme,
    required this.toolbarHeight,
    required this.tabBarHeight,
    required this.tabBar,
    required this.logo,
    required this.drawer,
    required this.isRighty,
    required this.body,
    required this.fab,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, toolbarHeight + tabBarHeight),
        child: Theme(
          data: Theme.of(context).copyWith(
            appBarTheme: appBarTheme,
            tabBarTheme: tabBarTheme,
          ),
          child: AppBar(
            excludeHeaderSemantics: true,
            toolbarHeight: toolbarHeight,

            // Leading
            automaticallyImplyLeading: isRighty,

            // Title
            title: logo,
            titleSpacing: 0,
            centerTitle: true,

            // Actions (aka trailing)
            actions: isRighty ? null : [EzBackAction()],

            // Bottom (aka tab bar)
            bottom: (tabBar != null)
                ? PreferredSize(
                    child: tabBar!,
                    preferredSize: Size(width, tabBarHeight),
                  )
                : null,
          ),
        ),
      ),

      // Drawer replaces leading
      drawer: isRighty ? null : drawer,

      // End drawer replaces actions
      endDrawer: isRighty ? drawer : null,

      // Body
      body: body,

      // FAB
      floatingActionButton: fab,
      floatingActionButtonLocation: isRighty
          ? FloatingActionButtonLocation.endFloat
          : FloatingActionButtonLocation.startFloat,
    );
  }
}

class _LargeBuild extends StatelessWidget {
  final double width = double.infinity;
  final AppBarTheme appBarTheme;
  final TabBarTheme tabBarTheme;
  final double toolbarHeight;
  final double tabBarHeight;
  final double margin;
  final TabBar? tabBar;
  final Widget logo;
  final PageLinks pageLinks;
  final Widget iconLinksMenu;
  final bool isRighty;
  final Widget body;
  final Widget fab;

  /// [DotNetScaffold] for when there is ample screen space
  /// Has a traditional footer-less web page layout
  const _LargeBuild({
    required this.appBarTheme,
    required this.tabBarTheme,
    required this.toolbarHeight,
    required this.tabBarHeight,
    required this.margin,
    required this.tabBar,
    required this.logo,
    required this.pageLinks,
    required this.iconLinksMenu,
    required this.isRighty,
    required this.body,
    required this.fab,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, toolbarHeight + tabBarHeight),
        child: Theme(
          data: Theme.of(context).copyWith(
            appBarTheme: appBarTheme,
            tabBarTheme: tabBarTheme,
          ),
          child: AppBar(
            excludeHeaderSemantics: true,
            toolbarHeight: toolbarHeight,

            // Leading
            automaticallyImplyLeading: false,
            leading: isRighty ? logo : iconLinksMenu,
            leadingWidth: toolbarHeight + margin * 2,

            // Title
            title: pageLinks,
            titleSpacing: 0,
            centerTitle: true,

            // Action (aka trailing)
            actions: isRighty ? [iconLinksMenu] : [logo],

            // Bottom (aka tab bar)
            bottom: (tabBar != null)
                ? PreferredSize(
                    child: tabBar!,
                    preferredSize: Size(width, tabBarHeight),
                  )
                : null,
          ),
        ),
      ),
      drawer: null,
      endDrawer: null,

      // Body
      body: body,

      // FAB
      floatingActionButton: fab,
      floatingActionButtonLocation: isRighty
          ? FloatingActionButtonLocation.endFloat
          : FloatingActionButtonLocation.startFloat,
    );
  }
}
