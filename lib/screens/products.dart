import '../utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  // Gather the theme data //

  final EzSpacer separator = EzSpacer(EzConfig.get(spacingKey) * 2);

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final TextStyle? headlineStyle = textTheme.headlineLarge;
  late final TextStyle? titleStyle = textTheme.titleLarge;
  late final TextStyle? bodyStyle = textTheme.bodyLarge;

  late final Lang l10n = Lang.of(context)!;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.psPageTitle);
  }

  @override
  Widget build(BuildContext context) {
    // Define the page content //

    final EzNewLine newLine = EzNewLine(titleStyle);

    // Return the build //

    return DotnetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: <Widget>[
            // EFUI //

            // Intro
            Text(
              efuiL,
              style: headlineStyle,
              textAlign: TextAlign.center,
              semanticsLabel: efuiLFix,
            ),
            EzLink(
              l10n.psEFUISlogan,
              style: titleStyle,
              textAlign: TextAlign.center,
              url: Uri.parse(efuiSource),
              semanticsLabel: l10n.gEFUISourceHint,
              tooltip: efuiSource,
            ),
            separator,

            // Description
            Text(
              l10n.psEFUIDescription,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            separator,

            // Platform availability
            Text(
              l10n.psPlatform,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              l10n.psPlatformContent,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            newLine,

            // Responsive design
            Text(
              l10n.psResponsive,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              l10n.psResponsiveContent,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            newLine,

            // Screen reader support
            Text(
              l10n.psScreen,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            EzRichText(<InlineSpan>[
              EzPlainText(
                text: l10n.psScreenContent,
                style: bodyStyle,
              ),
              EzInlineLink(
                'TalkBack',
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse(
                    'https://support.google.com/accessibility/android/answer/6006598?hl=en'),
                semanticsLabel: l10n.psTalkBackHint,
              ),
              EzPlainText(
                text: l10n.psAnd,
                style: bodyStyle,
              ),
              EzInlineLink(
                'VoiceOver',
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse(
                  'https://support.apple.com/guide/iphone/turn-on-and-practice-voiceover-iph3e2e415f/ios',
                ),
                semanticsLabel: l10n.psVoiceOverHint,
              ),
            ], textAlign: TextAlign.center),
            newLine,

            // User customization
            Text(
              l10n.psCustom,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),

            Text(
              l10n.psCustomContent,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            newLine,

            // Internationalization
            Text(
              l10n.psInternational,
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text(
              l10n.psInternationalContent,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            separator,

            // Tag line
            Text(
              l10n.psEFUITagLine,
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            separator,

            // Consultation call-out
            EzRichText(<InlineSpan>[
              EzInlineLink(
                l10n.gReachOut,
                style: bodyStyle,
                textAlign: TextAlign.center,
                url: Uri.parse('mailto:$empathAdmin'),
                semanticsLabel: l10n.gEmailTo(empathetechLLC),
              ),
              EzPlainText(
                text: l10n.psConsult,
                style: bodyStyle,
              ),
            ], textAlign: TextAlign.center),
            separator,
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
