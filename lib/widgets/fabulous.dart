/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../screens/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsFAB extends StatelessWidget {
  const SettingsFAB({super.key});

  @override
  Widget build(BuildContext context) => EzFABLink(
        uri: Uri.parse(settingsURL),
        tooltip: ezL10n(context).ssNavHint,
        child: EzIcon(PlatformIcons(context).settings),
      );
}
