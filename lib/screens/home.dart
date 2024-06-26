import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Gather the theme data //

  late bool isDark = PlatformTheme.of(context)!.isDark;

  late final ThemeData theme = Theme.of(context);
  late final Lang l10n = Lang.of(context)!;

  // Define custom Widgets //

  late final Widget animation = Semantics(
    image: true,
    link: false,
    label: l10n.hsVideoHint,
    child: const EmpathetechLogoAnimation(),
  );

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(empathetech);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        margin: EdgeInsets.zero,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            // Video
            Positioned.fill(child: animation),

            // Slogan overlay
            Positioned(
              top: EzConfig.get(marginKey),
              child: Text(
                l10n.hsSlogan,
                style: theme.textTheme.headlineLarge?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
                semanticsLabel: l10n.hsSloganFix,
              ),
            ),
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
