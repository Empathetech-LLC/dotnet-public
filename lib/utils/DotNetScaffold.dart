import 'utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
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
    // Gather theme data //

    final bool leftHandedUser = EzConfig.instance.dominantHand == Hand.left;
    final bool isLight = !PlatformTheme.of(context)!.isDark;

    // Reverse the colors of the app bar to highlight it
    final Color appBarColor = Theme.of(context).colorScheme.onBackground;
    final Color appBarTextColor = Theme.of(context).colorScheme.background;

    final TextStyle appBarTextStyle = buildHeadlineSmall(appBarTextColor);
    final TextStyle drawerTextStyle = buildHeadlineSmall(appBarColor);

    final double textScalar = MediaQuery.of(context).textScaleFactor;
    final double iconSize = appBarTextStyle.fontSize!;

    final IconThemeData appBarIconData = IconThemeData(
      color: appBarTextColor,
      size: iconSize,
    );

    final AppBarTheme appBarTheme = AppBarTheme(
      color: appBarColor,
      iconTheme: appBarIconData,
      actionsIconTheme: appBarIconData,
      titleTextStyle: appBarTextStyle,
    );

    final double margin = EzConfig.instance.prefs[marginKey];
    final double buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];

    // Set toolbar height to equal space above and below text links
    final double toolbarHeight =
        appBarTextStyle.fontSize! * MediaQuery.of(context).textScaleFactor * 3;

    final double tabBarHeight = (tabBar == null) ? 0 : toolbarHeight * (2 / 3);

    // Define shared widgets //

    final EmpathetechLogo logo = EmpathetechLogo(
      isLight: isLight,
      width: toolbarHeight,
      height: toolbarHeight,
    );

    final IconLinks drawerIcons = IconLinks(
      context: context,
      iconSize: iconSize,
      color: drawerTextStyle.color,
      spacer: buttonSpacer,
      margin: margin,
    );

    final DotNetDrawer drawer = DotNetDrawer(
      context: context,
      style: drawerTextStyle,
      scalar: textScalar,
      spacer: buttonSpacer,
      header: drawerIcons,
    );

    final IconLinks pageIcons = IconLinks(
      context: context,
      iconSize: iconSize,
      spacer: buttonSpacer,
      margin: margin,
    );

    final PageLinks pageLinks = PageLinks(
      context: context,
      style: appBarTextStyle,
      scalar: textScalar,
      spacer: buttonSpacer,
    );

    final double threshold = logo.width +
        buttonSpacer +
        pageLinks.width +
        buttonSpacer +
        pageIcons.width;

    // Define the build(s) //

    final _SmallBuild smallBuild = _SmallBuild(
      appBarTheme: appBarTheme,
      leftHandedUser: leftHandedUser,
      toolbarHeight: toolbarHeight,
      logo: logo,
      drawer: drawer,
      tabBar: tabBar,
      tabBarHeight: tabBarHeight,
      body: body,
      fab: fab,
    );

    final _LargeBuild largeBuild = _LargeBuild(
      appBarTheme: appBarTheme,
      leftHandedUser: leftHandedUser,
      toolbarHeight: toolbarHeight,
      logo: logo,
      pageLinks: pageLinks,
      pageIcons: pageIcons,
      tabBar: tabBar,
      tabBarHeight: tabBarHeight,
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
  final AppBarTheme appBarTheme;
  final DotNetDrawer drawer;
  final EmpathetechLogo logo;
  final TabBar? tabBar;
  final double width = double.infinity;
  final double toolbarHeight;
  final double tabBarHeight;
  final bool leftHandedUser;
  final Widget body;
  final Widget fab;

  /// [DotNetScaffold] for when there is limited screen space
  /// Has a mobile-like layout
  const _SmallBuild({
    required this.appBarTheme,
    required this.drawer,
    required this.logo,
    required this.tabBar,
    required this.toolbarHeight,
    required this.tabBarHeight,
    required this.leftHandedUser,
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
            tabBarTheme: Theme.of(context)
                .tabBarTheme
                .copyWith(labelColor: appBarTheme.titleTextStyle?.color),
          ),
          child: AppBar(
            excludeHeaderSemantics: true,
            toolbarHeight: toolbarHeight,

            // Leading
            automaticallyImplyLeading: (leftHandedUser) ? true : false,

            // Title
            title: logo,
            titleSpacing: 0,
            centerTitle: true,

            // Actions (aka trailing)
            actions: (leftHandedUser) ? [EzBackAction()] : null,

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
      drawer: (leftHandedUser) ? drawer : null,

      // End drawer replaces actions
      endDrawer: (leftHandedUser) ? null : drawer,

      // Body
      body: body,

      // FAB
      floatingActionButton: fab,
      floatingActionButtonLocation: (leftHandedUser)
          ? FloatingActionButtonLocation.startFloat
          : FloatingActionButtonLocation.endFloat,
    );
  }
}

class _LargeBuild extends StatelessWidget {
  final AppBarTheme appBarTheme;
  final IconLinks pageIcons;
  final PageLinks pageLinks;
  final EmpathetechLogo logo;
  final TabBar? tabBar;
  final double width = double.infinity;
  final double toolbarHeight;
  final double tabBarHeight;
  final bool leftHandedUser;
  final Widget body;
  final Widget fab;

  /// [DotNetScaffold] for when there is ample screen space
  /// Has a traditional footer-less web page layout
  const _LargeBuild({
    required this.appBarTheme,
    required this.pageIcons,
    required this.pageLinks,
    required this.logo,
    required this.tabBar,
    required this.toolbarHeight,
    required this.tabBarHeight,
    required this.leftHandedUser,
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
            tabBarTheme: Theme.of(context)
                .tabBarTheme
                .copyWith(labelColor: appBarTheme.titleTextStyle?.color),
          ),
          child: AppBar(
            excludeHeaderSemantics: true,
            toolbarHeight: toolbarHeight,

            // Leading
            automaticallyImplyLeading: false,
            leading: (leftHandedUser) ? pageIcons : logo,
            leadingWidth: (leftHandedUser)
                ? pageIcons.width // IconLinks
                : toolbarHeight, // Logo

            // Title
            title: pageLinks,
            titleSpacing: 0,
            centerTitle: true,

            // Action (aka trailing)
            actions: (leftHandedUser) ? [logo] : pageIcons.rowChildren,

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
      floatingActionButtonLocation: (leftHandedUser)
          ? FloatingActionButtonLocation.startFloat
          : FloatingActionButtonLocation.endFloat,
    );
  }
}
