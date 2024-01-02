import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  // Gather the theme data //

  final EzSpacer _textSpacer = EzSpacer(EzConfig.get(textSpacingKey));

  late final TextStyle? titleStyle = getTitle(context);
  late final TextStyle? bodyStyle = getBody(context);

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(Lang.of(context)!.psPageTitle);
  }

  @override
  Widget build(BuildContext context) {
    // Define the page content //

    final EzNewLine newLine = EzNewLine(titleStyle);

    // Return the build //

    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // EFUI //

            // Intro
            Text(
              efuiL,
              style: getHeadline(context),
              textAlign: TextAlign.center,
              semanticsLabel: efuiLFix,
            ),
            EzLink(
              Lang.of(context)!.psEFUISlogan,
              style: titleStyle,
              textAlign: TextAlign.center,
              url: Uri.parse(EFUISource),
              semanticsLabel: Lang.of(context)!.gEFUISourceHint,
              tooltip: EFUISource,
            ),
            _textSpacer,

            // Description
            Text(
              Lang.of(context)!.psEFUIDescription,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            _textSpacer,

            // Platform availability
            Text(
              Lang.of(context)!.psPlatform,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              Lang.of(context)!.psPlatformContent,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            newLine,

            // Responsive design
            Text(
              Lang.of(context)!.psResponsive,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              Lang.of(context)!.psResponsiveContent,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            newLine,

            // Screen reader support
            Text(
              Lang.of(context)!.psScreen,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            EzRichText([
              EzPlainText(
                Lang.of(context)!.psScreenContent,
                style: bodyStyle,
              ),
              EzInlineLink(
                "TalkBack",
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse(
                    "https://support.google.com/accessibility/android/answer/6006598?hl=en"),
                semanticsLabel: Lang.of(context)!.psTalkBackHint,
              ),
              EzPlainText(
                Lang.of(context)!.psAnd,
                style: bodyStyle,
              ),
              EzInlineLink(
                "VoiceOver",
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse(
                    "https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios"),
                semanticsLabel: Lang.of(context)!.psVoiceOverHint,
              ),
            ], textAlign: TextAlign.center),
            newLine,

            // User customization
            Text(
              Lang.of(context)!.psCustom,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),

            Text(
              Lang.of(context)!.psCustomContent,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            newLine,

            // Internationalization
            Text(
              Lang.of(context)!.psInternational,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              Lang.of(context)!.psInternationalContent,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            _textSpacer,

            // Tag line
            Text(
              Lang.of(context)!.psEFUITagLine,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            _textSpacer,

            // Consultation call-out
            EzRichText([
              EzInlineLink(
                Lang.of(context)!.gReachOut,
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse("mailto:$EmpathetechAdmin"),
                semanticsLabel: Lang.of(context)!.gEmailTo(empathetech_llc),
              ),
              EzPlainText(
                Lang.of(context)!.psConsult,
                style: bodyStyle,
              ),
            ], textAlign: TextAlign.center),
            _textSpacer,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
