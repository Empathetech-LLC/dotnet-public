import './utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class EFUIShoutOut extends StatelessWidget {
  final TextStyle? style;
  final String fileLink;

  const EFUIShoutOut({
    required this.style,
    required this.fileLink,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        EzRichText(
          [
            EzPlainText(
              Lang.of(context)!.gDontChaWish,
              context: context,
              style: style,
            ),
            EzInlineLink(
              Lang.of(context)!.gMeQ,
              style: style,
              url: Uri.parse(fileLink),
              semanticsLabel: Lang.of(context)!.gEFUILinkHint,
            ),
          ],
          textAlign: TextAlign.center,
        ),
        EzLink(
          Lang.of(context)!.gDontCha,
          style: style,
          textAlign: TextAlign.center,
          url: Uri.parse(EFUILink),
          semanticsLabel: Lang.of(context)!.gDontChaHint,
        ),
      ],
    );
  }
}
