/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class EFUIDemoButtons extends StatelessWidget {
  const EFUIDemoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // Gather theme data //

    const EzSwapSpacer swapSpacer = EzSwapSpacer();
    final EzSwapSpacer halfSwapSpacer =
        EzSwapSpacer(space: EzConfig.get(spacingKey) / 2);

    final bool isDark = isDarkTheme(context);

    final EFUILang l10n = EFUILang.of(context)!;

    late final String reloadMessage = l10n.ssSettingsGuideWeb.split('\n')[0];

    // Define build data //

    /// Reload the page or instruct to do so
    ScaffoldFeatureController<SnackBar, SnackBarClosedReason> reloadSnack(
      String message,
    ) =>
        ezSnackBar(context: context, message: message);

    final List<Widget> demos = <Widget>[
      // Low mobility
      EzTextIconButton(
        onPressed: () async {
          // Update text
          await EzConfig.setString(displayFontFamilyKey, roboto);
          await EzConfig.setDouble(displayFontSizeKey, defaultDisplaySize);
          await EzConfig.setBool(displayBoldKey, false);
          await EzConfig.setBool(displayItalicsKey, false);
          await EzConfig.setBool(displayUnderlinedKey, false);
          await EzConfig.setDouble(displayFontHeightKey, defaultFontHeight);
          await EzConfig.setDouble(
              displayLetterSpacingKey, defaultLetterSpacing);
          await EzConfig.setDouble(displayWordSpacingKey, defaultWordSpacing);

          await EzConfig.setString(headlineFontFamilyKey, roboto);
          await EzConfig.setDouble(headlineFontSizeKey, defaultHeadlineSize);
          await EzConfig.setBool(headlineBoldKey, false);
          await EzConfig.setBool(headlineItalicsKey, false);
          await EzConfig.setBool(headlineUnderlinedKey, false);
          await EzConfig.setDouble(headlineFontHeightKey, defaultFontHeight);
          await EzConfig.setDouble(
              headlineLetterSpacingKey, defaultLetterSpacing);
          await EzConfig.setDouble(headlineWordSpacingKey, defaultWordSpacing);

          await EzConfig.setString(titleFontFamilyKey, roboto);
          await EzConfig.setDouble(titleFontSizeKey, defaultTitleSize);
          await EzConfig.setBool(titleBoldKey, true);
          await EzConfig.setBool(titleItalicsKey, false);
          await EzConfig.setBool(titleUnderlinedKey, false);
          await EzConfig.setDouble(titleFontHeightKey, defaultFontHeight);
          await EzConfig.setDouble(titleLetterSpacingKey, defaultLetterSpacing);
          await EzConfig.setDouble(titleWordSpacingKey, defaultWordSpacing);

          await EzConfig.setString(bodyFontFamilyKey, roboto);
          await EzConfig.setDouble(bodyFontSizeKey, defaultBodySize);
          await EzConfig.setBool(bodyBoldKey, false);
          await EzConfig.setBool(bodyItalicsKey, false);
          await EzConfig.setBool(bodyUnderlinedKey, false);
          await EzConfig.setDouble(bodyFontHeightKey, defaultFontHeight);
          await EzConfig.setDouble(bodyLetterSpacingKey, defaultLetterSpacing);
          await EzConfig.setDouble(bodyWordSpacingKey, defaultWordSpacing);

          await EzConfig.setString(labelFontFamilyKey, roboto);
          await EzConfig.setDouble(labelFontSizeKey, defaultLabelSize);
          await EzConfig.setBool(labelBoldKey, false);
          await EzConfig.setBool(labelItalicsKey, false);
          await EzConfig.setBool(labelUnderlinedKey, false);
          await EzConfig.setDouble(labelFontHeightKey, defaultFontHeight);
          await EzConfig.setDouble(labelLetterSpacingKey, defaultLetterSpacing);
          await EzConfig.setDouble(labelWordSpacingKey, defaultWordSpacing);

          // Update layout
          await EzConfig.setDouble(marginKey, defaultMargin * 1.5);
          await EzConfig.setDouble(paddingKey, defaultPadding * 1.5);
          await EzConfig.setDouble(spacingKey, defaultSpacing * 2.0);

          await EzConfig.removeKeys(colorKeys.keys.toSet());

          // Reload
          reloadSnack(reloadMessage);
        },
        icon: const Icon(Icons.touch_app),
        label: 'Accessible controls',
      ),
      swapSpacer,

      // Low vision
      EzTextIconButton(
        onPressed: () async {
          // Update text
          await EzConfig.setString(displayFontFamilyKey, atkinsonHyperlegible);
          await EzConfig.setDouble(
            displayFontSizeKey,
            defaultDisplaySize * 1.2,
          );
          await EzConfig.setBool(displayBoldKey, false);
          await EzConfig.setBool(displayItalicsKey, false);
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

          await EzConfig.setString(headlineFontFamilyKey, atkinsonHyperlegible);
          await EzConfig.setDouble(
            headlineFontSizeKey,
            defaultHeadlineSize * 1.2,
          );
          await EzConfig.setBool(headlineBoldKey, false);
          await EzConfig.setBool(headlineItalicsKey, false);
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
          await EzConfig.setBool(titleBoldKey, true);
          await EzConfig.setBool(titleItalicsKey, false);
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
          await EzConfig.setBool(bodyBoldKey, false);
          await EzConfig.setBool(bodyItalicsKey, false);
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
          await EzConfig.setBool(labelBoldKey, false);
          await EzConfig.setBool(labelItalicsKey, false);
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

          // Update layout
          await EzConfig.setDouble(marginKey, defaultMargin * 1.2);
          await EzConfig.setDouble(paddingKey, defaultPadding);
          await EzConfig.setDouble(spacingKey, defaultSpacing * 1.2);

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

          // Reload
          reloadSnack(reloadMessage);
        },
        icon: const Icon(Icons.contrast),
        label: 'zero eye strain',
      ),
      halfSwapSpacer,

      // and
      Text(
        '&',
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
            ),
        textAlign: TextAlign.center,
        semanticsLabel: l10n.gAnd,
      ),
      halfSwapSpacer,

      // Random
      EzTextIconButton(
        onPressed: () async {
          // Randomize
          await EzConfig.randomize(isDark);

          // Notify user
          reloadSnack('Random config applied. $reloadMessage');
        },
        icon: const Icon(LineIcons.diceD6),
        label: 'everything in-between',
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
            await EzConfig.reset();

            // Notify user
            reloadSnack(reloadMessage);
          },
          icon: Icon(PlatformIcons(context).refresh),
          label: l10n.gReset,
        ),
      ],
    );
  }
}
