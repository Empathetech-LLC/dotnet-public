/* dotnet
 * Copyright (c) 2022-2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

// Define the class //

class OpenUILink extends StatefulWidget {
  /// One link to empower them all
  const OpenUILink({super.key});

  @override
  State<OpenUILink> createState() => _OpenUILinkState();
}

// Define share-ables //

Future<String> getLatest() async {
  final http.Response response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/Empathetech-LLC/empathetech_flutter_ui/refs/heads/main/APP_VERSION'));

  return response.statusCode == 200 ? response.body.trim() : '8.0.0';
}

/// Get the Open UI download link for the given platform
Future<Uri?> openUIDownload(
  BuildContext context,
  TargetPlatform platform,
  String version, {
  bool rpm = false,
}) async {
  switch (platform) {
    case TargetPlatform.android:
      return await confirmAndroid(context, version);
    case TargetPlatform.iOS:
      return Uri.parse('https://apps.apple.com/us/app/open-ui/id6499560244');
    case TargetPlatform.macOS:
      return Uri.parse(
          'https://github.com/Empathetech-LLC/empathetech_flutter_ui/releases/download/$version/open-ui-mac.zip');
    case TargetPlatform.windows:
      return Uri.parse(
          'https://github.com/Empathetech-LLC/empathetech_flutter_ui/releases/download/$version/open-ui-windows.exe');
    default:
      return await confirmLinux(context, version);
  }
}

/// Confirm whether the user is on .deb or .rpm based linux
Future<Uri?> confirmAndroid(
  BuildContext context,
  String version,
) =>
    showPlatformDialog<Uri?>(
      context: context,
      builder: (BuildContext dialogContext) {
        final (
          List<EzMaterialAction> materialActions,
          List<EzCupertinoAction> cupertinoActions
        ) = ezActionPairs(
          context: context,
          onConfirm: () => Navigator.of(dialogContext).pop(Uri.parse(
              'https://play.google.com/store/apps/details?id=net.empathetech.open_ui')),
          confirmIsDefault: true,
          onDeny: () => Navigator.of(dialogContext).pop(Uri.parse(
              'https://github.com/Empathetech-LLC/empathetech_flutter_ui/download/$version/open-ui-android.apk')),
          denyMsg: '.apk',
        );

        return EzAlertDialog(
          title: const Text('Google Play?', textAlign: TextAlign.center),
          materialActions: materialActions,
          cupertinoActions: cupertinoActions,
        );
      },
    );

/// Confirm whether the user is on .deb or .rpm based linux
Future<Uri?> confirmLinux(
  BuildContext context,
  String version,
) =>
    showPlatformDialog<Uri?>(
      context: context,
      builder: (BuildContext dialogContext) {
        final (
          List<EzMaterialAction> materialActions,
          List<EzCupertinoAction> cupertinoActions
        ) = ezActionPairs(
          context: context,
          onConfirm: () => Navigator.of(dialogContext).pop(Uri.parse(
              'https://github.com/Empathetech-LLC/empathetech_flutter_ui/download/$version/open-ui-linux.deb')),
          confirmIsDefault: true,
          onDeny: () => Navigator.of(dialogContext).pop(Uri.parse(
              'https://github.com/Empathetech-LLC/empathetech_flutter_ui/download/$version/open-ui-linux.rpm')),
          denyMsg: '.rpm',
        );

        return EzAlertDialog(
          title: const Text('.deb?', textAlign: TextAlign.center),
          materialActions: materialActions,
          cupertinoActions: cupertinoActions,
        );
      },
    );

// Define the private state //

class _OpenUILinkState extends State<OpenUILink> {
  // Gather the theme data //

  final double padding = EzConfig.get(paddingKey);

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  late TargetPlatform currPlatform = getBasePlatform(context);

  // Define custom functions //

  // Get a human readable (English) name for the platform
  String getName(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return 'Android';
      case TargetPlatform.iOS:
        return 'iOS';
      case TargetPlatform.macOS:
        return 'macOS';
      case TargetPlatform.windows:
        return 'Windows';
      default:
        return 'Linux';
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
          constraints: EzBox.sym(ezImageSize(context) * 1.1),
          child: EzLinkImageProvider(
            image: openUIImage,
            fit: BoxFit.contain,
            onTap: () async {
              final String latest = await getLatest();
              if (context.mounted) {
                final Uri? url = await openUIDownload(
                  context,
                  currPlatform,
                  latest,
                );
                url == null ? doNothing : launchUrl(url);
              }
            },
            tooltip: l10n.psStartHint(getName(currPlatform)),
            label: l10n.psStartLabel,
            hint: l10n.psStartHint(getName(currPlatform)),
          ),
        ),
        EzMargin(),

        // Destination selector
        EzDropdownMenu<TargetPlatform>(
          enableSearch: false,
          initialSelection: currPlatform,
          dropdownMenuEntries: <TargetPlatform>[
            TargetPlatform.android,
            TargetPlatform.iOS,
            TargetPlatform.linux,
            TargetPlatform.macOS,
            TargetPlatform.windows,
          ]
              .map(
                (TargetPlatform platform) => DropdownMenuEntry<TargetPlatform>(
                  value: platform,
                  label: getName(platform),
                  style: TextButton.styleFrom(padding: EzInsets.wrap(padding)),
                ),
              )
              .toList(),
          onSelected: (TargetPlatform? platform) {
            if (platform == null) return;
            setState(() => currPlatform = platform);
          },
        ),
      ],
    );
  }
}
