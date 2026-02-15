/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SettingsHomeScreen extends StatelessWidget {
  SettingsHomeScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  Widget build(BuildContext context) => DotnetScaffold(
        EzScreen(EzSettingsHome(
          protest: true,
          colorSettingsPath: colorSettingsURL,
          designSettingsPath: designSettingsURL,
          layoutSettingsPath: layoutSettingsURL,
          textSettingsPath: textSettingsURL,
          appName: appName,
          footer: <Widget>[EzConfig.separator, const EFUIShoutOut()],
        )),
        fabs: <Widget>[
          EzConfig.spacer,
          EzConfigFAB(context, appName: appName, androidPackage: null),
        ],
      );
}
