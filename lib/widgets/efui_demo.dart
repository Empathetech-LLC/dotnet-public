/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class EFUIDemo extends StatelessWidget {
  /// 2 years of work in 3 buttons
  const EFUIDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // Gather theme data //

    const EzSwapSpacer swapSpacer = EzSwapSpacer();
    final EzSwapSpacer halfSwapSpacer =
        EzSwapSpacer(space: EzConfig.get(spacingKey) / 2);

    final bool isDark = isDarkTheme(context);
    final bool onMobile = isMobile();

    final EFUILang el10n = ezL10n(context);
    final Lang l10n = Lang.of(context)!;

    late final String reloadMessage = el10n.ssSettingsGuideWeb.split('\n')[0];

    // Define build data //

    /// Reload the page or instruct to do so
    ScaffoldFeatureController<SnackBar, SnackBarClosedReason> reloadSnack(
      String message,
    ) =>
        ezSnackBar(context: context, message: message);

    final List<Widget> demos = <Widget>[
      // Low mobility
      Tooltip(
        message: l10n.psTryMe,
        excludeFromSemantics: true,
        child: EzTextIconButton(
          onPressed: () async {
            // Update text
            await EzConfig.removeKeys(textStyleKeys.keys.toSet());
            await EzConfig.setDouble(iconSizeKey, defaultIconSize * 1.5);

            // Update layout
            await EzConfig.setDouble(marginKey, defaultMargin * 1.5);
            await EzConfig.setDouble(
                paddingKey,
                (onMobile ? defaultMobilePadding : defaultDesktopPadding) *
                    1.5);
            await EzConfig.setDouble(
                spacingKey,
                (onMobile ? defaultMobileSpacing : defaultDesktopSpacing) *
                    2.0);

            await EzConfig.setBool(hideScrollKey, false);

            // Reset colors
            await EzConfig.removeKeys(colorKeys.keys.toSet());

            // Prompt for reload
            reloadSnack(reloadMessage);
          },
          icon: EzIcon(Icons.touch_app),
          label: l10n.psAccessible,
        ),
      ),
      swapSpacer,

      // Low vision
      Tooltip(
        message: l10n.psTryMe,
        excludeFromSemantics: true,
        child: EzTextIconButton(
          onPressed: () async {
            // Update text
            await EzConfig.setString(
                displayFontFamilyKey, atkinsonHyperlegible);
            await EzConfig.setDouble(
              displayFontSizeKey,
              defaultDisplaySize * 1.2,
            );
            await EzConfig.setBool(displayBoldedKey, false);
            await EzConfig.setBool(displayItalicizedKey, false);
            await EzConfig.setBool(displayUnderlinedKey, false);
            await EzConfig.setDouble(
              displayFontHeightKey,
              defaultFontHeight,
            );
            await EzConfig.setDouble(
              displayLetterSpacingKey,
              defaultLetterSpacing * 1.1,
            );
            await EzConfig.setDouble(
              displayWordSpacingKey,
              defaultWordSpacing * 1.2,
            );

            await EzConfig.setString(
                headlineFontFamilyKey, atkinsonHyperlegible);
            await EzConfig.setDouble(
              headlineFontSizeKey,
              defaultHeadlineSize * 1.2,
            );
            await EzConfig.setBool(headlineBoldedKey, false);
            await EzConfig.setBool(headlineItalicizedKey, false);
            await EzConfig.setBool(headlineUnderlinedKey, false);
            await EzConfig.setDouble(
              headlineFontHeightKey,
              defaultFontHeight * 1.1,
            );
            await EzConfig.setDouble(
              headlineLetterSpacingKey,
              defaultLetterSpacing * 1.1,
            );
            await EzConfig.setDouble(
              headlineWordSpacingKey,
              defaultWordSpacing * 1.2,
            );

            await EzConfig.setString(titleFontFamilyKey, atkinsonHyperlegible);
            await EzConfig.setDouble(
              titleFontSizeKey,
              defaultTitleSize * 1.2,
            );
            await EzConfig.setBool(titleBoldedKey, true);
            await EzConfig.setBool(titleItalicizedKey, false);
            await EzConfig.setBool(titleUnderlinedKey, false);
            await EzConfig.setDouble(
              titleFontHeightKey,
              defaultFontHeight * 1.2,
            );
            await EzConfig.setDouble(
              titleLetterSpacingKey,
              defaultLetterSpacing * 1.1,
            );
            await EzConfig.setDouble(
              titleWordSpacingKey,
              defaultWordSpacing * 1.2,
            );

            await EzConfig.setString(bodyFontFamilyKey, atkinsonHyperlegible);
            await EzConfig.setDouble(
              bodyFontSizeKey,
              defaultBodySize * 1.2,
            );
            await EzConfig.setBool(bodyBoldedKey, false);
            await EzConfig.setBool(bodyItalicizedKey, false);
            await EzConfig.setBool(bodyUnderlinedKey, false);
            await EzConfig.setDouble(
              bodyFontHeightKey,
              defaultFontHeight * 1.2,
            );
            await EzConfig.setDouble(
              bodyLetterSpacingKey,
              defaultLetterSpacing * 1.1,
            );
            await EzConfig.setDouble(
              bodyWordSpacingKey,
              defaultWordSpacing * 1.2,
            );

            await EzConfig.setString(labelFontFamilyKey, atkinsonHyperlegible);
            await EzConfig.setDouble(
              labelFontSizeKey,
              defaultLabelSize * 1.2,
            );
            await EzConfig.setBool(labelBoldedKey, false);
            await EzConfig.setBool(labelItalicizedKey, false);
            await EzConfig.setBool(labelUnderlinedKey, false);
            await EzConfig.setDouble(
              labelFontHeightKey,
              defaultFontHeight * 1.2,
            );
            await EzConfig.setDouble(
              labelLetterSpacingKey,
              defaultLetterSpacing * 1.1,
            );
            await EzConfig.setDouble(
              labelWordSpacingKey,
              defaultWordSpacing * 1.2,
            );

            await EzConfig.setDouble(iconSizeKey, defaultIconSize * 1.1);

            // Update layout
            await EzConfig.setDouble(marginKey, defaultMargin * 1.2);
            await EzConfig.setDouble(paddingKey,
                (onMobile ? defaultMobilePadding : defaultDesktopPadding));
            await EzConfig.setDouble(
                spacingKey,
                (onMobile ? defaultMobileSpacing : defaultDesktopSpacing) *
                    1.2);

            await EzConfig.setBool(hideScrollKey, true);

            // Update colors
            if (isDark) {
              await storeColorScheme(
                colorScheme: ezHighContrastDark,
                brightness: Brightness.dark,
              );
            } else {
              await storeColorScheme(
                colorScheme: ezHighContrastLight,
                brightness: Brightness.light,
              );
            }

            // Prompt for reload
            reloadSnack(reloadMessage);
          },
          icon: EzIcon(Icons.contrast),
          label: l10n.psZeroStrain,
        ),
      ),
      halfSwapSpacer,

      // and
      Text(
        '&',
        style: ezSubTitleStyle(Theme.of(context).textTheme),
        textAlign: TextAlign.center,
        semanticsLabel: el10n.gAnd,
      ),
      halfSwapSpacer,

      // Random
      Tooltip(
        message: l10n.psTryMe,
        excludeFromSemantics: true,
        child: EzTextIconButton(
          onPressed: () async {
            // Randomize
            await EzConfig.randomize(isDark);

            // Notify user
            reloadSnack('${l10n.psRandom} $reloadMessage');
          },
          icon: EzIcon(LineIcons.diceD6),
          label: l10n.psEverything,
        ),
      ),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        // Demo buttons
        EzRowCol.sym(mainAxisSize: MainAxisSize.min, children: demos),
        const EzSeparator(),

        // Reset button
        EzElevatedIconButton(
          onPressed: () async {
            // Reset
            await EzConfig.removeKeys(onMobile
                ? mobileEmpathConfig.keys.toSet()
                : desktopEmpathConfig.keys.toSet());

            // Notify user
            reloadSnack(reloadMessage);
          },
          icon: EzIcon(PlatformIcons(context).refresh),
          label: el10n.gReset,
        ),
      ],
    );
  }
}
