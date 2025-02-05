/* dotnet
 * Copyright (c) 2022-2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

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
