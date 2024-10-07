/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:efui_bios/efui_bios.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Gather the theme data //

  late final ThemeData theme = Theme.of(context);
  late bool isDark = isDarkTheme(context);
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
    setPageTitle(empathetech, theme.colorScheme.primary);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        useImageDecoration: false,
        margin: EdgeInsets.zero,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            // Video
            Positioned.fill(child: animation),

            // Slogan overlay
            Positioned(
              top: EzConfig.get(marginKey),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: widthOf(context),
                  maxHeight: heightOf(context),
                ),
                child: Text(
                  l10n.hsSlogan,
                  style: theme.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                  semanticsLabel: l10n.hsSloganFix,
                ),
              ),
            ),
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
