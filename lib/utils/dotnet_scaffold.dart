import 'utils.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class DotnetScaffold extends StatelessWidget {
  /// Optional [TabBar] widget for pages with sub-pages
  final TabBar? tabBar;

  final Widget body;

  /// [FloatingActionButton]
  final Widget fab;

  const DotnetScaffold({
    super.key,
    this.tabBar,
    required this.body,
    required this.fab,
  });

  @override
  Widget build(BuildContext context) {
    // Gather the theme data //

    final bool isLefty = EzConfig.get(isLeftyKey) ?? false;
    final bool isDark = PlatformTheme.of(context)!.isDark;

    // Reverse the colors of the app bar to highlight it
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color appBarColor = colorScheme.onBackground;
    final Color appBarTextColor = colorScheme.background;

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
    final double padding = EzConfig.get(paddingKey);
    final double space = EzConfig.get(spacingKey);

    // Set appBar height to equal space above and below text links
    final double toolbarHeight = appBarTextStyle.fontSize! + padding * 2;

    final double tabBarHeight = (tabBar == null) ? 0 : toolbarHeight * (2 / 3);

    // Define shared widgets //

    final Widget logo = Container(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: EzLinkImage(
        // reverse, reverse!
        image: AssetImage(isDark ? lightLogoPath : darkLogoPath),
        height: toolbarHeight,
        width: toolbarHeight,
        onTap: () => context.go(homePath),
        semanticLabel: Lang.of(context)!.gLogoHint,
        tooltip: Lang.of(context)!.gHomeHint,
      ),
    );

    final PageLinks pageLinks = PageLinks(
      context: context,
      style: appBarTextStyle,
      spacing: space,
    );

    final IconLinks iconLinks = IconLinks(
      context: context,
      iconSize: appBarIconData.size!,
      spacer: space,
      margin: margin,
      color: colorScheme.onSurface,
    );

    final Widget iconLinksMenu = PopupMenuButton<dynamic>(
      icon: Icon(PlatformIcons(context).share),
      itemBuilder: (BuildContext context) => iconLinks.buttons
          .map((IconButton button) => PopupMenuItem<TextButton>(
                padding: EdgeInsets.symmetric(
                  vertical: space / 2,
                  horizontal: space,
                ),
                onTap: button.onPressed,
                child: TextButton.icon(
                  icon: button.icon,
                  label: Text(button.tooltip!),
                  onPressed: button.onPressed,
                  style: Theme.of(context).textButtonTheme.style!.copyWith(
                        foregroundColor: MaterialStatePropertyAll<Color>(
                          colorScheme.onSurface,
                        ),
                      ),
                ),
              ))
          .toList(),
      tooltip: Lang.of(context)!.gSocials,
      padding: EdgeInsets.symmetric(horizontal: margin),
    );

    final DotNetDrawer drawer = DotNetDrawer(
      context: context,
      style: appBarTextStyle,
      spacing: space,
      header: iconLinks,
    );

    final double threshold = 2 * (toolbarHeight + 2 * margin) + pageLinks.width;

    // Define the build(s) //

    final _SmallBuild smallBuild = _SmallBuild(
      appBarTheme: appBarTheme,
      tabBarTheme: tabBarTheme,
      toolbarHeight: toolbarHeight,
      tabBarHeight: tabBarHeight,
      tabBar: tabBar,
      logo: logo,
      drawer: drawer,
      isLefty: isLefty,
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
      isLefty: isLefty,
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
  final bool isLefty;
  final Widget body;
  final Widget fab;

  /// [DotnetScaffold] for when there is limited screen space
  /// Has a mobile-like layout
  const _SmallBuild({
    required this.appBarTheme,
    required this.tabBarTheme,
    required this.toolbarHeight,
    required this.tabBarHeight,
    required this.tabBar,
    required this.logo,
    required this.drawer,
    required this.isLefty,
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
            automaticallyImplyLeading: !isLefty,

            // Title
            title: logo,
            titleSpacing: 0,
            centerTitle: true,

            // Actions (aka trailing)
            actions: isLefty ? <Widget>[const EzBackAction()] : null,

            // Bottom (aka tab bar)
            bottom: (tabBar != null)
                ? PreferredSize(
                    preferredSize: Size(width, tabBarHeight),
                    child: tabBar!,
                  )
                : null,
          ),
        ),
      ),

      // Drawer replaces leading
      drawer: isLefty ? drawer : null,

      // End drawer replaces actions
      endDrawer: isLefty ? null : drawer,

      // Body
      body: body,

      // FAB
      floatingActionButton: fab,
      floatingActionButtonLocation: isLefty
          ? FloatingActionButtonLocation.startFloat
          : FloatingActionButtonLocation.endFloat,
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
  final bool isLefty;
  final Widget body;
  final Widget fab;

  /// [DotnetScaffold] for when there is ample screen space
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
    required this.isLefty,
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
            leading: isLefty ? iconLinksMenu : logo,
            leadingWidth: toolbarHeight + margin * 2,

            // Title
            title: pageLinks,
            titleSpacing: 0,
            centerTitle: true,

            // Action (aka trailing)
            actions: isLefty ? <Widget>[logo] : <Widget>[iconLinksMenu],

            // Bottom (aka tab bar)
            bottom: (tabBar != null)
                ? PreferredSize(
                    preferredSize: Size(width, tabBarHeight),
                    child: tabBar!,
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
      floatingActionButtonLocation: isLefty
          ? FloatingActionButtonLocation.startFloat
          : FloatingActionButtonLocation.endFloat,
    );
  }
}
