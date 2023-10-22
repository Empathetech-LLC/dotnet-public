import './screens.dart';
import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // Set page/tab title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, EFUILang.of(context)!.ssPageTitle);
  }

  // Gather theme data //

  late bool _isLight = !PlatformTheme.of(context)!.isDark;

  final double _buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];
  final double _textSpacer = EzConfig.instance.prefs[textSpacingKey];

  late final TextStyle? _labelStyle = labelLarge(context);
  late final TextStyle? _labelLinkStyle = _labelStyle?.copyWith(
    color: Theme.of(context).highlightColor,
    decoration: TextDecoration.underline,
  );

  // Return the Build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        decorationImageKey: _isLight ? lightPageImageKey : darkPageImageKey,
        child: EzScrollView(
          children: [
            // Functionality disclaimer
            EzWarning(
              message: kIsWeb
                  ? EFUILang.of(context)!.ssSettingsGuide
                  : EFUILang.of(context)!.ssSettingsGuideWeb,
              style: headlineSmall(context),
            ),
            EzSpacer(_buttonSpacer),

            // Theme mode switch
            const EzThemeModeSwitch(),
            EzSpacer(_buttonSpacer),

            // Dominant hand switch
            const EzDominantHandSwitch(),
            EzSpacer(_buttonSpacer),

            // Style settings
            ElevatedButton(
              onPressed: () => context.goNamed(styleSettingsRoute),
              child: Text(EFUILang.of(context)!.stsPageTitle),
            ),
            EzSpacer(_buttonSpacer),

            // Color settings
            ElevatedButton(
              onPressed: () => context.goNamed(colorSettingsRoute),
              child: Text(EFUILang.of(context)!.csPageTitle),
            ),
            EzSpacer(2 * _buttonSpacer),

            // Reset button
            EzResetButton(context: context),
            EzSpacer(_textSpacer),

            // EFUI shoutout
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EzRichText([
                  EzPlainText(
                    Lang.of(context)!.ssDontChaWish,
                    context: context,
                    style: _labelStyle,
                  ),
                  EzInlineLink(
                    Lang.of(context)!.ssMeQ,
                    style: _labelLinkStyle,
                    semanticsLabel: Lang.of(context)!.gEFUILinkHint,
                    url: Uri.parse(settingsSourceLink),
                  ),
                ]),
                EzLink(
                  Lang.of(context)!.ssDontCha,
                  style: _labelLinkStyle,
                  semanticsLabel: Lang.of(context)!.ssDontChaHint,
                  url: Uri.parse(EFUILink),
                ),
              ],
            ),
            EzSpacer(_textSpacer),
          ],
        ),
      ),
      fab: const BackFAB(),
    );
  }
}
