import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Gather the theme data //

  late bool isDark = PlatformTheme.of(context)!.isDark;

  final double spacing = EzConfig.get(spacingKey);

  late final EzSpacer spacer = EzSpacer(spacing);
  late final EzSpacer separator = EzSpacer(2 * spacing);

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
            const EzDominantHandSwitch(key: dhSwitchKey),
            spacer,

            const EzThemeModeSwitch(key: tmSwitchKey),
            spacer,

            const EzLocaleSetting(key: localeSettingKey),
            spacer,

            // Text settings
            ElevatedButton(
              key: toTextSettingsKey,
              onPressed: () => context.go(textSettingsRoute),
              child: Text(l10n.tsPageTitle),
            ),
            spacer,

            // Layout settings
            ElevatedButton(
              key: toLayoutSettingsKey,
              onPressed: () => context.go(layoutSettingsRoute),
              child: Text(l10n.lsPageTitle),
            ),
            spacer,

            // Color settings
            ElevatedButton(
              key: toColorSettingsKey,
              onPressed: () => context.go(colorSettingsRoute),
              child: Text(l10n.csPageTitle),
            ),
            separator,

            // Reset button
            const EzResetButton(key: resetAllKey),
            separator,

            EFUIShoutOut(
              key: efuiShoutOutKey,
              style: Theme.of(context).textTheme.labelLarge,
              sourceLink: settingsSource,
            ),
            spacer,
          ],
        ),
      ),
      fab: BackFAB(key: backButtonKey, context: context),
    );
  }
}
