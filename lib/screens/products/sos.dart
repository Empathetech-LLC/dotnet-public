/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class SOSScreen extends StatefulWidget {
  const SOSScreen({super.key});

  @override
  State<SOSScreen> createState() => _SOSScreenState();
}

class _SOSScreenState extends State<SOSScreen> {
  // Gather theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSeparator separator = EzSeparator();
  final EzSpacer margin = EzMargin();

  late final Lang l10n = Lang.of(context)!;
  late final TextTheme textTheme = Theme.of(context).textTheme;

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      EzScreen(
        EzScrollView(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Headline
            Text(
              sosName,
              semanticsLabel: sosLabel,
              style: textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            margin,

            // Icon link(s)
            const SOSLink(),
            separator,

            // Description
            Text(
              l10n.psSOSDescription,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            spacer,

            // README link
            EzLink(
              l10n.psDocsLabel,
              url: Uri.parse(
                  'https://github.com/Empathetech-LLC/sos/blob/main/README.md#using'),
              hint: l10n.psDocsHint,
              textAlign: TextAlign.center,
            ),
            spacer,

            // Donation call-out
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.psSafeSOS,
                style: textTheme.bodyLarge,
              ),
              EzPlainText(
                text: l10n.psFreeSOS,
                style: textTheme.bodyLarge,
              ),
              EzInlineLink(
                l10n.psOpenSource,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(sosSource),
                hint: l10n.gRepoHint,
              ),
              EzPlainText(
                text: '.',
                style: textTheme.bodyLarge,
              ),
            ], textAlign: TextAlign.center),
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.psConsider,
                style: textTheme.bodyLarge,
              ),
              EzInlineLink(
                l10n.psContributing,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
                url: Uri.parse(contributeURL),
                hint: l10n.gContributeHint,
              ),
              EzPlainText(
                text: l10n.psSAPS,
                style: textTheme.bodyLarge,
              ),
            ], textAlign: TextAlign.center),
            separator,

            const EzTranslationsPendingNotice(),
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
