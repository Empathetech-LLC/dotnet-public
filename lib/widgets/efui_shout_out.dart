import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class EFUIShoutOut extends StatelessWidget {
  final TextStyle? style;
  final String sourceLink;

  const EFUIShoutOut({
    super.key,
    required this.style,
    required this.sourceLink,
  });

  @override
  Widget build(BuildContext context) {
    final Lang l10n = Lang.of(context)!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        EzRichText(<InlineSpan>[
          EzPlainText(
            text: l10n.gDontChaWish,
            style: style,
          ),
          EzInlineLink(
            l10n.gMeQ,
            style: style,
            textAlign: TextAlign.center,
            url: Uri.parse(sourceLink),
            semanticsLabel: l10n.gEFUISourceHint,
            tooltip: sourceLink,
          ),
        ], textAlign: TextAlign.center),
        EzLink(
          l10n.gDontCha,
          style: style,
          textAlign: TextAlign.center,
          url: Uri.parse(efuiSource),
          semanticsLabel: l10n.gDontChaHint,
          tooltip: efuiSource,
        ),
      ],
    );
  }
}
