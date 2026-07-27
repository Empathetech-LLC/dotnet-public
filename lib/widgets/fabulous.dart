/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';

EzUpdaterFAB updater(EzCP config) => EzUpdaterFAB(
      config,
      appVersion: '8.0.2',
      versionSource:
          'https://raw.githubusercontent.com/YWT-LLC/web-mirror/refs/heads/main/APP_VERSION',
      isWeb: true,
    );

class SettingsFAB extends StatelessWidget {
  final EzCP config;

  const SettingsFAB(this.config, {super.key});

  @override
  Widget build(BuildContext context) => EzFABLink(
        uri: Uri.parse(settingsURL),
        tooltip: config.ezL10n.ssNavHint,
        child: EzIcon(config, Icons.settings),
      );
}
