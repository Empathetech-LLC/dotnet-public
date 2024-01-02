import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class EFUIShoutOut extends StatelessWidget {
  final TextStyle? style;
  final String sourceLink;

  const EFUIShoutOut({
    required this.style,
    required this.sourceLink,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EzRichText([
          EzPlainText(
            Lang.of(context)!.gDontChaWish,
            style: style,
          ),
          EzInlineLink(
            Lang.of(context)!.gMeQ,
            style: style,
            textAlign: TextAlign.center,
            url: Uri.parse(sourceLink),
            semanticsLabel: Lang.of(context)!.gEFUISourceHint,
            tooltip: sourceLink,
          ),
        ], textAlign: TextAlign.center),
        EzLink(
          Lang.of(context)!.gDontCha,
          style: style,
          textAlign: TextAlign.center,
          url: Uri.parse(EFUISource),
          semanticsLabel: Lang.of(context)!.gDontChaHint,
          tooltip: EFUISource,
        ),
      ],
    );
  }
}
