/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

//* Shared *//

/// 11.0.0
const String efuiFallback = '11.0.0';

/// 1.5.2
const String sosFallback = '1.5.2';

/// https://github.com/Empathetech-LLC
const String _git = 'https://github.com/Empathetech-LLC';

/// https://play.google.com/store/apps/details?id=net.empathetech
const String _gPlay =
    'https://play.google.com/store/apps/details?id=net.empathetech';

/// https://apps.apple.com/us/app
const String _appStore = 'https://apps.apple.com/us/app';

/// Download types
enum DLType { gPlay, apk, iOS, macOS, windows, deb, rpm }

extension Label on DLType {
  String get name {
    switch (this) {
      case DLType.gPlay:
        return 'Android (GPlay)';
      case DLType.apk:
        return 'Android (.apk)';
      case DLType.iOS:
        return 'iOS';
      case DLType.macOS:
        return 'macOS';
      case DLType.windows:
        return 'Windows';
      case DLType.deb:
        return 'Linux (.deb)';
      case DLType.rpm:
        return 'Linux (.rpm)';
    }
  }
}

/// Get the latest [String] version of [repo]
Future<String> getLatest(String repo, String fallback) async {
  final http.Response response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/Empathetech-LLC/$repo/refs/heads/main/APP_VERSION'));

  return response.statusCode == 200 ? response.body.trim() : fallback;
}

//* EFUI *//

class EFUIShoutOut extends StatelessWidget {
  /// Don't Cha Wish...
  const EFUIShoutOut({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          EzRichText(<InlineSpan>[
            EzPlainText(
              text: l10n.gDontChaWish,
              style: EzConfig.styles.labelLarge,
            ),
            EzInlineLink(
              l10n.gMeQ,
              style: EzConfig.styles.labelLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(settingsSource),
              hint: EzConfig.l10n.gEFUISourceHint,
              tooltip: settingsSource,
            ),
          ], textAlign: TextAlign.center),
          EzLink(
            l10n.gDontCha,
            style: EzConfig.styles.labelLarge,
            padding: EzInsets.wrap(EzConfig.marginVal),
            textAlign: TextAlign.center,
            url: Uri.parse(efuiSource),
            hint: l10n.gDontChaHint,
            tooltip: efuiSource,
          ),
        ],
      );
}

//* Open UI *//

/// Get a [Uri] to download the latest version of Open UI
Uri openUIDownload(DLType dlType, String version) {
  late final String releases =
      '$_git/empathetech_flutter_ui/releases/download/$version';

  switch (dlType) {
    case DLType.gPlay:
      return Uri.parse('$_gPlay.open_ui');
    case DLType.apk:
      return Uri.parse('$releases/open-ui-android.apk');
    case DLType.iOS:
      return Uri.parse('$_appStore/open-ui/id6499560244');
    case DLType.macOS:
      return Uri.parse('$releases/open-ui-mac.zip');
    case DLType.windows:
      return Uri.parse('$releases/open-ui-windows.exe');
    case DLType.deb:
      return Uri.parse('$releases/open-ui-linux.deb');
    case DLType.rpm:
      return Uri.parse('$releases/open-ui-linux.rpm');
  }
}

class OpenUILink extends StatefulWidget {
  /// One link to empower them all
  const OpenUILink({super.key});

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
  void initUrl() async {
    switch (EzConfig.platform) {
      case TargetPlatform.android:
        currDL = DLType.gPlay;
        break;
      case TargetPlatform.iOS:
        currDL = DLType.iOS;
        break;
      case TargetPlatform.macOS:
        currDL = DLType.macOS;
        break;
      case TargetPlatform.windows:
        currDL = DLType.windows;
        break;
      default:
        currDL = DLType.deb;
        break;
    }

    latest = await getLatest('empathetech_flutter_ui', efuiFallback);
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
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Icon link
          Container(
            constraints: EzBox.sym(ezImageSize(context)),
            child: EzLinkWidget(
              onTap: () => launchUrl(url ?? Uri.parse(openUIReleases)),
              tooltip: l10n.gDownloadHint(openUI, currDL.name),
              label: l10n.gIconLabel(openUI) + l10n.ouOpenUIIconLabel,
              hint: l10n.gDownloadHint(openUI, currDL.name),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(ezImageSize(context)),
                child: const Image(image: openUIImage, fit: BoxFit.contain),
              ),
            ),
          ),
          EzConfig.margin,

          // Destination selector
          EzDropdownMenu<DLType>(
            enableSearch: false,
            initialSelection: currDL,
            dropdownMenuEntries: DLType.values
                .map((DLType dlType) => DropdownMenuEntry<DLType>(
                      value: dlType,
                      label: dlType.name,
                    ))
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
Uri sosDownload(DLType dlType, String version) {
  late final String releases = '$_git/sos/releases/download/$version';

  switch (dlType) {
    case DLType.gPlay:
      return Uri.parse('$_gPlay.sos');
    case DLType.apk:
      return Uri.parse('$releases/sos-android.apk');
    default:
      return Uri.parse('$_appStore/instasos/id6744280817');
  }
}

class SOSLink extends StatefulWidget {
  /// One link to empower them all
  const SOSLink({super.key});

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
  void initUrl() async {
    switch (EzConfig.platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        currDL = DLType.iOS;
        break;

      default:
        currDL = DLType.gPlay;
        break;
    }

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
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Icon link
          Container(
            constraints: EzBox.sym(ezImageSize(context)),
            child: EzLinkWidget(
              onTap: () => launchUrl(url ?? Uri.parse(sosReleases)),
              tooltip: l10n.gDownloadHint(sosName, currDL.name),
              label: l10n.gIconLabel(sosLabel) + l10n.sosIconLabel,
              hint: l10n.gDownloadHint(sosLabel, currDL.name),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(ezImageSize(context)),
                child: const Image(image: sosImage, fit: BoxFit.contain),
              ),
            ),
          ),
          EzConfig.margin,

          // Destination selector
          EzDropdownMenu<DLType>(
            enableSearch: false,
            initialSelection: currDL,
            dropdownMenuEntries: <DropdownMenuEntry<DLType>>[
              DropdownMenuEntry<DLType>(
                value: DLType.gPlay,
                label: DLType.gPlay.name,
              ),
              DropdownMenuEntry<DLType>(
                value: DLType.apk,
                label: DLType.apk.name,
              ),
              DropdownMenuEntry<DLType>(
                value: DLType.iOS,
                label: DLType.iOS.name,
              ),
            ],
            onSelected: (DLType? choice) async {
              if (choice == null) return;

              currDL = choice;
              url = sosDownload(currDL, latest);

              setState(() {});
            },
          ),
        ],
      );
}
