/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

const Widget updater = EzUpdaterFAB(
  appVersion: '6.0.1',
  versionSource:
      'https://raw.githubusercontent.com/Empathetech-LLC/dotnet-public/refs/heads/main/APP_VERSION',
  isWeb: true,
);

class SettingsFAB extends StatelessWidget {
  const SettingsFAB({super.key});

  @override
  Widget build(BuildContext context) => EzFABLink(
        uri: Uri.parse(settingsURL),
        tooltip: EzConfig.l10n.ssNavHint,
        child: EzIcon(Icons.settings),
      );
}
