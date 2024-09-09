/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();

  late final ThemeData theme = Theme.of(context);
  late final EFUILang l10n = EFUILang.of(context)!;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.ssPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: <Widget>[
            // Functionality disclaimer
            EzWarning(
              body: kIsWeb ? l10n.ssSettingsGuideWeb : l10n.ssSettingsGuide,
            ),
            separator,

            // Global settings
            const EzDominantHandSwitch(),
            spacer,

            const EzThemeModeSwitch(),
            spacer,

            const EzLocaleSetting(),
            spacer,

            // Text settings
            ElevatedButton(
              onPressed: () => context.go(textSettingsRoute),
              child: Text(l10n.tsPageTitle),
            ),
            spacer,

            // Layout settings
            ElevatedButton(
              onPressed: () => context.go(layoutSettingsRoute),
              child: Text(l10n.lsPageTitle),
            ),
            spacer,

            // Color settings
            ElevatedButton(
              onPressed: () => context.go(colorSettingsRoute),
              child: Text(l10n.csPageTitle),
            ),
            separator,

            // Reset button
            const EzResetButton(),
            separator,

            EFUIShoutOut(
              style: theme.textTheme.labelLarge,
              sourceLink: settingsSource,
            ),
            spacer,
          ],
        ),
      ),
    );
  }
}
