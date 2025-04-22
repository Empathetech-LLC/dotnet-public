/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

//* Shared *//

/// '8.1.0'
const String efuiFallback = '8.1.0';

/// '1.0.0'
const String sosFallback = '1.1.0';

const String _git = 'https://github.com/Empathetech-LLC';
const String _gPlay =
    'https://play.google.com/store/apps/details?id=net.empathetech';
const String _appStore = 'https://apps.apple.com/us/app';

// Get a human readable (English) name for the platform
String platformName(TargetPlatform platform) {
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

/// Get the latest [String] version of [repo]
Future<String> getLatest(String repo, String fallback) async {
  final http.Response response = await http.get(Uri.parse(
    'https://raw.githubusercontent.com/Empathetech-LLC/$repo/refs/heads/main/APP_VERSION',
  ));

  return response.statusCode == 200 ? response.body.trim() : fallback;
}

/// Confirm whether the user wants a Google Play link or an APK download
Future<Uri?> chooseAndroidPackage(
  BuildContext context, {
  required String packageName,
  required String gitTail,
}) =>
    showPlatformDialog<Uri?>(
      context: context,
      builder: (BuildContext dialogContext) {
        final (
          List<EzMaterialAction> materialActions,
          List<EzCupertinoAction> cupertinoActions
        ) = ezActionPairs(
          context: context,
          onConfirm: () => Navigator.of(dialogContext)
              .pop(Uri.parse('$_gPlay.$packageName')),
          confirmIsDefault: true,
          onDeny: () =>
              Navigator.of(dialogContext).pop(Uri.parse('$_git/$gitTail')),
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
Future<Uri?> chooseLinuxPackage(
  BuildContext context, {
  required String debTail,
  required String rpmTail,
}) =>
    showPlatformDialog<Uri?>(
      context: context,
      builder: (BuildContext dialogContext) {
        final (
          List<EzMaterialAction> materialActions,
          List<EzCupertinoAction> cupertinoActions
        ) = ezActionPairs(
          context: context,
          onConfirm: () =>
              Navigator.of(dialogContext).pop(Uri.parse('$_git/$debTail')),
          confirmIsDefault: true,
          onDeny: () =>
              Navigator.of(dialogContext).pop(Uri.parse('$_git/$rpmTail')),
          denyMsg: '.rpm',
        );

        return EzAlertDialog(
          title: const Text('.deb?', textAlign: TextAlign.center),
          materialActions: materialActions,
          cupertinoActions: cupertinoActions,
        );
      },
    );

//* EFUI *//

class EFUIShoutOut extends StatelessWidget {
  /// Don't Cha Wish...
  const EFUIShoutOut({super.key});

  @override
  Widget build(BuildContext context) {
    final Lang l10n = Lang.of(context)!;
    final TextStyle style = Theme.of(context).textTheme.labelLarge!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        EzRichText(<InlineSpan>[
          EzPlainText(text: l10n.gDontChaWish, style: style),
          EzInlineLink(
            l10n.gMeQ,
            style: style,
            textAlign: TextAlign.center,
            url: Uri.parse(settingsSource),
            hint: EFUILang.of(context)!.gEFUISourceHint,
            tooltip: settingsSource,
          ),
        ], textAlign: TextAlign.center),
        EzLink(
          l10n.gDontCha,
          style: style,
          textAlign: TextAlign.center,
          url: Uri.parse(efuiSource),
          hint: l10n.gDontChaHint,
          tooltip: efuiSource,
        ),
      ],
    );
  }
}

//* Open UI *//

/// Get a [Uri] to download the latest version of Open UI
Future<Uri?> openUIDownload(
  BuildContext context,
  TargetPlatform platform,
  String version,
) async {
  const String releases = 'empathetech_flutter_ui/releases/download';

  switch (platform) {
    case TargetPlatform.android:
      return await chooseAndroidPackage(
        context,
        packageName: 'open_ui',
        gitTail: '$releases/$version/open-ui-android.apk',
      );
    case TargetPlatform.iOS:
      return Uri.parse('$_appStore/open-ui/id6499560244');
    case TargetPlatform.macOS:
      return Uri.parse('$_git/$releases/$version/open-ui-mac.zip');
    case TargetPlatform.windows:
      return Uri.parse('$_git/$releases/$version/open-ui-windows.exe');
    default:
      return await chooseLinuxPackage(
        context,
        debTail: '$releases/$version/open-ui-linux.deb',
        rpmTail: '$releases/$version/open-ui-linux.rpm',
      );
  }
}

class OpenUILink extends StatefulWidget {
  /// One link to empower them all
  const OpenUILink({super.key});

  @override
  State<OpenUILink> createState() => _OpenUILinkState();
}

class _OpenUILinkState extends State<OpenUILink> {
  // Gather the data //

  final double padding = EzConfig.get(paddingKey);

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  TargetPlatform currPlatform = getBasePlatform();

  late final String latest;
  Uri? url;

  // Define custom functions //

  void buildUrl() async {
    latest = await getLatest('empathetech_flutter_ui', efuiFallback);
    if (mounted) url = await openUIDownload(context, currPlatform, latest);
  }

  // Init //

  @override
  void initState() {
    super.initState();
    buildUrl();
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
          constraints: EzBox.sym(ezImageSize(context)),
          child: EzLinkWidget(
            onTap: () => launchUrl(url ?? Uri.parse(openUIReleases)),
            tooltip: l10n.gDownloadHint(openUI, platformName(currPlatform)),
            label: l10n.gIconLabel(openUI) + l10n.psOpenUIIconLabel,
            hint: l10n.gDownloadHint(openUI, platformName(currPlatform)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(ezImageSize(context)),
              child: const Image(image: openUIImage, fit: BoxFit.contain),
            ),
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
                  label: platformName(platform),
                  style: TextButton.styleFrom(padding: EzInsets.wrap(padding)),
                ),
              )
              .toList(),
          onSelected: (TargetPlatform? platform) async {
            if (platform == null) return;

            currPlatform = platform;
            url = await openUIDownload(context, currPlatform, latest);

            setState(() {});
          },
        ),
      ],
    );
  }
}

//* Open UI *//

/// Get a [Uri] to download the latest version of InstaSOS
Future<Uri?> sosDownload(
  BuildContext context,
  bool iOS,
  String version,
) async {
  return iOS
      ? Uri.parse('$_appStore/instasos/id6744280817')
      : await chooseAndroidPackage(
          context,
          packageName: 'sos',
          gitTail: 'sos/releases/download/$version/sos.apk',
        );
}

class SOSLink extends StatefulWidget {
  /// One link to empower them all
  const SOSLink({super.key});

  @override
  State<SOSLink> createState() => _SOSLinkState();
}

class _SOSLinkState extends State<SOSLink> {
  // Gather data //

  final double padding = EzConfig.get(paddingKey);

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  bool showIOS = isApple();

  late final String latest;
  Uri? url;

  // Define custom functions //

  void buildUrl() async {
    latest = await getLatest('sos', sosFallback);
    if (mounted) url = await sosDownload(context, showIOS, latest);
  }

  // Init //

  @override
  void initState() {
    super.initState();
    buildUrl();
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
          constraints: EzBox.sym(ezImageSize(context)),
          child: EzLinkWidget(
            onTap: () => launchUrl(url ?? Uri.parse(sosReleases)),
            tooltip: l10n.gDownloadHint(sosName, showIOS ? 'iOS' : 'Android'),
            label: l10n.gIconLabel(sosLabel) + l10n.psSOSIconLabel,
            hint: l10n.gDownloadHint(sosLabel, showIOS ? 'iOS' : 'Android'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(ezImageSize(context)),
              child: const Image(image: sosImage, fit: BoxFit.contain),
            ),
          ),
        ),
        EzMargin(),

        // Destination selector
        EzDropdownMenu<bool>(
          enableSearch: false,
          initialSelection: showIOS,
          dropdownMenuEntries: <DropdownMenuEntry<bool>>[
            DropdownMenuEntry<bool>(
              value: false,
              label: 'Android',
              style: TextButton.styleFrom(padding: EzInsets.wrap(padding)),
            ),
            DropdownMenuEntry<bool>(
              value: true,
              label: 'iOS',
              style: TextButton.styleFrom(padding: EzInsets.wrap(padding)),
            ),
          ],
          onSelected: (bool? choice) async {
            if (choice == null) return;

            showIOS = choice;
            url = await sosDownload(context, showIOS, latest);

            setState(() {});
          },
        ),
      ],
    );
  }
}
