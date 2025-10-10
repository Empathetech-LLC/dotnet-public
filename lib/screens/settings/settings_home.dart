/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SettingsHomeScreen extends StatelessWidget {
  const SettingsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) => DotnetScaffold(
        const EzScreen(EzSettingsHome(
          protest: true,
          colorSettingsPath: colorSettingsURL,
          designSettingsPath: designSettingsURL,
          layoutSettingsPath: layoutSettingsURL,
          textSettingsPath: textSettingsURL,
          footer: <Widget>[EzSeparator(), EFUIShoutOut()],
        )),
        fabs: <Widget>[
          EzConfigFAB(context, appName: appName, androidPackage: null),
          ezSpacer,
          EzBackFAB(context),
        ],
      );
}
