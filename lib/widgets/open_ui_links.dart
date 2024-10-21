/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

// Define shared consts //

const String android = 'Android';
const String ios = 'iOS';
const String desktop = 'Desktop';
const String web = 'Web';

const List<String> platforms = <String>[
  android,
  ios,
  desktop,
  web,
];

// Define the class //

class OpenUILinks extends StatefulWidget {
  const OpenUILinks({super.key});

  @override
  State<OpenUILinks> createState() => _OpenUILinksState();
}

class _OpenUILinksState extends State<OpenUILinks> {
  // Gather the theme data //

  final double padding = EzConfig.get(paddingKey);

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  late final TargetPlatform basePlatform = getBasePlatform(context);

  late String currPlatform = targetToString(basePlatform);
  late String currLink = getURL(currPlatform);

  // Define custom functions //

  String targetToString(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        return desktop;
    }
  }

  String getURL(String platform) {
    switch (platform) {
      case android:
        return 'https://play.google.com/store/apps/details?id=net.empathetech.open_ui';
      case ios:
        return 'https://apps.apple.com/us/app/open-ui/id6499560244';
      case desktop:
        return 'https://github.com/Empathetech-LLC/empathetech_flutter_ui/releases';
      case web:
      default:
        return 'https://www.empathetech.net/#/settings';
    }
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Icon link
        Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.textScalerOf(context).scale(imageSize),
          ),
          child: EzLinkImageProvider(
            image: openUIImage,
            url: Uri.parse(currLink),
            tooltip: l10n.psLiveHint(currPlatform),
            semanticLabel: l10n.psLiveHint(currPlatform),
          ),
        ),
        EzSpacer(space: EzConfig.get(paddingKey)),

        // Destination selector
        DropdownMenu<String>(
          enableSearch: false,
          initialSelection: currPlatform,
          dropdownMenuEntries: platforms
              .map(
                (String platform) => DropdownMenuEntry<String>(
                  value: platform,
                  label: platform,
                  style: TextButton.styleFrom(padding: EzInsets.wrap(padding)),
                ),
              )
              .toList(),
          onSelected: (String? platform) {
            if (platform == null) return;

            currPlatform = platform;
            currLink = getURL(currPlatform);
            setState(() {});
          },
        ),
      ],
    );
  }
}
