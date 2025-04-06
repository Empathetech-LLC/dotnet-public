/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SettingsHomeScreen extends StatelessWidget {
  const SettingsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) => const DotnetScaffold(
        body: EzSettingsHome(
          useImageDecoration: false,
          textSettingsPath: textSettingsPath,
          layoutSettingsPath: layoutSettingsPath,
          colorSettingsPath: colorSettingsPath,
          imageSettingsPath: null,
          footer: <Widget>[EFUIShoutOut()],
        ),
      );
}
