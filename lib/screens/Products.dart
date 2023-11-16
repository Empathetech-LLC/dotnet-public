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
  // Set page/tab title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, Lang.of(context)!.psPageTitle);
  }

  // Gather theme data //

  final double _textSpacer = EzConfig.instance.prefs[textSpacingKey];

  late final Color? _buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? _headingStyle = headlineSmall(context);

  late final TextStyle? _subHeadingStyle = titleLarge(context);
  late final TextStyle? _subHeadingLinkStyle = _subHeadingStyle?.copyWith(
    color: _buttonColor,
    decoration: TextDecoration.underline,
  );

  late final TextStyle? _contentStyle = bodyLarge(context);
  late final TextStyle? _contentLinkStyle = bodyLarge(context)?.copyWith(
    color: _buttonColor,
    decoration: TextDecoration.underline,
  );

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // EFUI //

            // Heading
            EzText(
              "Empathetech Flutter UI",
              style: _headingStyle,
              semanticsLabel: Lang.of(context)!.gEFUIHint,
            ),

            // Sub-heading
            EzLink(
              Lang.of(context)!.psEFUISlogan,
              style: _subHeadingLinkStyle,
              semanticsLabel: Lang.of(context)!.gEFUILinkHint,
              url: Uri.parse(EFUILink),
            ),
            EzSpacer(_textSpacer),

            // Description
            EzText(
              Lang.of(context)!.psEFUIDescription,
              style: _contentStyle,
            ),

            EzText(
              Lang.of(context)!.psPlatform,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
            ),
            EzText(
              Lang.of(context)!.psPlatformContent,
              style: _contentStyle,
            ),

            EzText(
              Lang.of(context)!.psScreen,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
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
                  style: _contentLinkStyle,
                  semanticsLabel: Lang.of(context)!.psTalkBackHint,
                  url: Uri.parse(
                      "https://support.google.com/accessibility/android/answer/6006598?hl=en"),
                ),
                EzPlainText(
                  Lang.of(context)!.psAnd,
                  context: context,
                  style: _contentStyle,
                ),
                EzInlineLink(
                  "VoiceOver",
                  style: _contentLinkStyle,
                  semanticsLabel: Lang.of(context)!.psVoiceOverHint,
                  url: Uri.parse(
                      "https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios"),
                ),
              ],
            ),

            EzText(
              Lang.of(context)!.psCustom,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
            ),
            EzText(
              Lang.of(context)!.psCustomContent,
              style: _contentStyle,
            ),

            EzText(
              Lang.of(context)!.psInternational,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
            ),
            EzText(
              Lang.of(context)!.psInternationalContent,
              style: _contentStyle,
            ),

            EzText(
              Lang.of(context)!.psResponsive,
              style: _contentStyle?.copyWith(fontWeight: FontWeight.bold),
            ),
            EzText(
              Lang.of(context)!.psResponsiveContent,
              style: _contentStyle,
            ),
            EzSpacer(_textSpacer),

            EzText(
              Lang.of(context)!.psEFUITagLine,
              style: _contentStyle,
            ),
            EzSpacer(_textSpacer),

            EzRichText(
              [
                EzInlineLink(
                  Lang.of(context)!.gReachOut,
                  style: _contentLinkStyle,
                  semanticsLabel: Lang.of(context)!.gEmailHint,
                  url: Uri.parse("mailto:$EmpathetechAdmin"),
                ),
                EzPlainText(
                  Lang.of(context)!.psConsult,
                  context: context,
                  style: _contentStyle,
                ),
              ],
            ),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
