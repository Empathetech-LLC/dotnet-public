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

  final double _textSpacer = EzConfig.get(textSpacingKey);

  late final TextStyle? _headingStyle = headlineSmall(context);
  late final TextStyle? _subHeadingStyle = titleLarge(context);
  late final TextStyle? _contentStyle = bodyLarge(context);

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, Lang.of(context)!.psPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // EFUI //

            // Heading
            Text(
              efui,
              style: _headingStyle,
              textAlign: TextAlign.center,
              semanticsLabel: Lang.of(context)!.gEFUIHint,
            ),

            // Sub-heading
            EzLink(
              Lang.of(context)!.psEFUISlogan,
              style: _subHeadingStyle,
              textAlign: TextAlign.center,
              url: Uri.parse(EFUILink),
              semanticsLabel: Lang.of(context)!.gEFUILinkHint,
            ),
            EzSpacer(_textSpacer),

            // Description
            Text(
              Lang.of(context)!.psEFUIDescription,
              style: _contentStyle,
              textAlign: TextAlign.center,
            ),

            Text(
              Lang.of(context)!.psPlatform,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              Lang.of(context)!.psPlatformContent,
              style: _contentStyle,
              textAlign: TextAlign.center,
            ),

            Text(
              Lang.of(context)!.psScreen,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            EzRichText(
              [
                EzPlainText(
                  Lang.of(context)!.psScreenContent,
                  context: context,
                  style: _contentStyle,
                ),
                EzInlineLink(
                  "TalkBack",
                  style: _contentStyle,
                  url: Uri.parse(
                      "https://support.google.com/accessibility/android/answer/6006598?hl=en"),
                  semanticsLabel: Lang.of(context)!.psTalkBackHint,
                ),
                EzPlainText(
                  Lang.of(context)!.psAnd,
                  context: context,
                  style: _contentStyle,
                ),
                EzInlineLink(
                  "VoiceOver",
                  style: _contentStyle,
                  url: Uri.parse(
                      "https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios"),
                  semanticsLabel: Lang.of(context)!.psVoiceOverHint,
                ),
              ],
              textAlign: TextAlign.center,
            ),

            Text(
              Lang.of(context)!.psCustom,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              Lang.of(context)!.psCustomContent,
              style: _contentStyle,
              textAlign: TextAlign.center,
            ),

            Text(
              Lang.of(context)!.psInternational,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              Lang.of(context)!.psInternationalContent,
              style: _contentStyle,
              textAlign: TextAlign.center,
            ),

            Text(
              Lang.of(context)!.psResponsive,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              Lang.of(context)!.psResponsiveContent,
              style: _contentStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_textSpacer),

            Text(
              Lang.of(context)!.psEFUITagLine,
              style: _contentStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_textSpacer),

            EzRichText(
              [
                EzInlineLink(
                  Lang.of(context)!.gReachOut,
                  style: _contentStyle,
                  url: Uri.parse("mailto:$EmpathetechAdmin"),
                  semanticsLabel: Lang.of(context)!.gEmailHint,
                ),
                EzPlainText(
                  Lang.of(context)!.psConsult,
                  context: context,
                  style: _contentStyle,
                ),
              ],
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
