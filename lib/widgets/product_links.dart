/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import 'package:oui_bios/oui_bios.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:open_ui/open_ui.dart';

//* Shared *//

/// 12.0.0
const String ouiFallback = '12.0.0';

/// 3.0.2
const String sosFallback = '3.0.2';

/// https://github.com/YWT-LLC
const String _git = 'https://github.com/YWT-LLC';

/// https://play.google.com/store/apps/details?id=llc.ywt
const String _gPlay = 'https://play.google.com/store/apps/details?id=llc.ywt';

/// https://apps.apple.com/us/app
const String _appStore = 'https://apps.apple.com/us/app';

/// Download types
enum DLType { gPlay, apk, iOS, macOS, windows, deb, rpm }

extension Label on DLType {
  String get name => switch (this) {
        DLType.gPlay => 'Android (GPlay)',
        DLType.apk => 'Android (.apk)',
        DLType.iOS => 'iOS',
        DLType.macOS => 'macOS',
        DLType.windows => 'Windows',
        DLType.deb => 'Linux (.deb)',
        DLType.rpm => 'Linux (.rpm)',
      };
}

/// Get the latest [String] version of [repo]
Future<String> getLatest(String repo, String fallback) async {
  final http.Response response = await http.get(
    Uri.parse(
      'https://raw.githubusercontent.com/YWT-LLC/$repo/refs/heads/main/APP_VERSION',
    ),
  );

  return response.statusCode == 200 ? response.body.trim() : fallback;
}

//* Open UI *//

String ouRelease(String version) => '$_git/open_ui/releases/download/$version';

/// Get a [Uri] to download the latest version of Open UI
Uri openUIDownload(DLType dlType, String version) => switch (dlType) {
      DLType.gPlay => Uri.parse('$_gPlay.open_ui'),
      DLType.apk => Uri.parse('${ouRelease(version)}/open-ui-android.apk'),
      DLType.iOS => Uri.parse('$_appStore/open-ui/id6499560244'),
      DLType.macOS => Uri.parse('${ouRelease(version)}/open-ui-mac.zip'),
      DLType.windows => Uri.parse('${ouRelease(version)}/open-ui-windows.exe'),
      DLType.deb => Uri.parse('${ouRelease(version)}/open-ui-linux.deb'),
      DLType.rpm => Uri.parse('${ouRelease(version)}/open-ui-linux.rpm'),
    };

class OpenUILink extends StatefulWidget {
  final EzCP config;

  /// One link to empower them all
  const OpenUILink(this.config, {super.key});

  @override
  State<OpenUILink> createState() => _OpenUILinkState();
}

class _OpenUILinkState extends State<OpenUILink> {
  // Define the build data //

  late DLType currDL;
  late final String latest;
  Uri? url;

  // Define custom functions //

  /// Set an initial download link
  Future<void> initUrl() async {
    currDL = switch (EzCM.platform) {
      TargetPlatform.android => DLType.gPlay,
      TargetPlatform.iOS => DLType.iOS,
      TargetPlatform.macOS => DLType.macOS,
      TargetPlatform.windows => DLType.windows,
      _ => DLType.deb,
    };

    latest = await getLatest('open_ui', ouiFallback);
    url = openUIDownload(currDL, latest);
  }

  // Init //

  @override
  void initState() {
    super.initState();
    initUrl();
  }

  // Return the build //

  @override
  Widget build(BuildContext context) => EzCol(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Icon link
          Container(
            constraints: EzBox.sym(ezImageSize(widget.config, context: context)),
            child: EzLinkWidget(
              widget.config,
              onTap: () => launchUrl(url ?? Uri.parse(openUIReleases)),
              tooltip: l10n(widget.config).gDownloadHint(openUI, currDL.name),
              label: l10n(widget.config).gIconLabel(openUI) + l10n(widget.config).ouIconLabel,
              hint: l10n(widget.config).gDownloadHint(openUI, currDL.name),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(ezImageSize(widget.config, context: context)),
                child: const Image(image: openUIImage, fit: BoxFit.contain),
              ),
            ),
          ),
          widget.config.margin,

          // Destination selector
          EzDropdownMenu<DLType>(
            widget.config,
            enableSearch: false,
            initialSelection: currDL,
            widthEntry: DLType.apk.name,
            dropdownMenuEntries: DLType.values
                .map(
                  (DLType dlType) => DropdownMenuEntry<DLType>(
                    value: dlType,
                    label: dlType.name,
                  ),
                )
                .toList(),
            onSelected: (DLType? choice) {
              if (choice == null) return;

              currDL = choice;
              url = openUIDownload(currDL, latest);

              setState(() {});
            },
          ),
        ],
      );
}

//* (Insta)SOS *//

/// Get a [Uri] to download the latest version of InstaSOS
Uri sosDownload(DLType dlType, String version) => switch (dlType) {
      DLType.gPlay => Uri.parse('$_gPlay.sos'),
      DLType.apk => Uri.parse('$_git/sos/releases/download/$version/sos-android.apk'),
      _ => Uri.parse('$_appStore/instasos/id6744280817'),
    };

class SOSLink extends StatefulWidget {
  final EzCP config;

  /// One link to empower them all
  const SOSLink(this.config, {super.key});

  @override
  State<SOSLink> createState() => _SOSLinkState();
}

class _SOSLinkState extends State<SOSLink> {
  // Define the build data //

  late DLType currDL;
  late final String latest;
  Uri? url;

  // Define custom functions //

  /// Set an initial download link
  Future<void> initUrl() async {
    currDL = switch (EzCM.platform) {
      TargetPlatform.iOS || TargetPlatform.macOS => DLType.iOS,
      _ => DLType.gPlay,
    };

    latest = await getLatest('sos', sosFallback);
    url = sosDownload(currDL, latest);
  }

  // Init //

  @override
  void initState() {
    super.initState();
    initUrl();
  }

  // Return the build //

  @override
  Widget build(BuildContext context) => EzCol(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Icon link
          Container(
            constraints: EzBox.sym(ezImageSize(widget.config, context: context)),
            child: EzLinkWidget(
              widget.config,
              onTap: () => launchUrl(url ?? Uri.parse(sosReleases)),
              tooltip: l10n(widget.config).gDownloadHint(sosName, currDL.name),
              label: l10n(widget.config).gIconLabel(sosLabel) + l10n(widget.config).sosIconLabel,
              hint: l10n(widget.config).gDownloadHint(sosLabel, currDL.name),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(ezImageSize(widget.config, context: context)),
                child: const Image(image: sosImage, fit: BoxFit.contain),
              ),
            ),
          ),
          widget.config.margin,

          // Destination selector
          EzDropdownMenu<DLType>(
            widget.config,
            enableSearch: false,
            initialSelection: currDL,
            widthEntry: DLType.apk.name,
            dropdownMenuEntries: <DropdownMenuEntry<DLType>>[
              DropdownMenuEntry<DLType>(value: DLType.gPlay, label: DLType.gPlay.name),
              DropdownMenuEntry<DLType>(value: DLType.apk, label: DLType.apk.name),
              DropdownMenuEntry<DLType>(value: DLType.iOS, label: DLType.iOS.name),
            ],
            onSelected: (DLType? choice) {
              if (choice == null) return;

              currDL = choice;
              url = sosDownload(currDL, latest);

              setState(() {});
            },
          ),
        ],
      );
}
