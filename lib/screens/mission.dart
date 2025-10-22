/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class MissionScreen extends StatefulWidget {
  const MissionScreen({super.key});

  @override
  State<MissionScreen> createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  // Gather the fixed theme data //

  final double padding = EzConfig.get(paddingKey);
  final EdgeInsets linkPadding = EzInsets.wrap(EzConfig.get(marginKey));

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  int index = 0;

  /// Styles the index buttons based on [index]
  StepStyle? _style(
    int indexTarget,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    if (index > indexTarget) {
      // Passed
      return StepStyle(
        color: colorScheme.secondary,
        connectorColor: colorScheme.secondary,
        border: Border.all(color: colorScheme.secondaryContainer),
        indexStyle: textTheme.labelLarge?.copyWith(
          color: colorScheme.onSecondary,
        ),
      );
    } else if (index == indexTarget) {
      // Here
      return StepStyle(
        color: colorScheme.primary,
        connectorColor: colorScheme.secondary,
        border: Border.all(color: colorScheme.primaryContainer),
        indexStyle: textTheme.labelLarge?.copyWith(
          color: colorScheme.onPrimary,
        ),
      );
    } else {
      // Next
      return StepStyle(
        color: colorScheme.surface,
        connectorColor: colorScheme.outline,
        border: null,
        indexStyle: textTheme.labelLarge?.copyWith(
          color: colorScheme.onSurface,
        ),
      );
    }
  }

  /// Defines [Stepper] navigation buttons
  List<Widget> stepButtons(ControlsDetails details) {
    switch (details.stepIndex) {
      case 0:
        // Start -> So we
        return <Widget>[
          EzTextIconButton(
            onPressed: details.onStepContinue,
            style: TextButton.styleFrom(padding: linkPadding),
            icon: EzIcon(PlatformIcons(context).downArrow),
            label: l10n.msSoWe,
          ),
        ];

      case 1:
        // Middle -> By
        return <Widget>[
          EzTextIconButton(
            onPressed: details.onStepContinue,
            style: TextButton.styleFrom(padding: linkPadding),
            icon: EzIcon(PlatformIcons(context).downArrow),
            label: l10n.msBy,
          ),
        ];

      case 2:
      default:
        // End -> By first
        return <Widget>[
          EzTextIconButton(
            onPressed: () => setState(() => index = 0),
            style: TextButton.styleFrom(padding: linkPadding),
            icon: EzIcon(PlatformIcons(context).upArrow),
            label: l10n.msFirst,
          )
        ];
    }
  }

  /// [Step] title wrapper
  Text _title(String title, TextStyle? style) =>
      Text(title, style: style, textAlign: TextAlign.start);

  /// [Step] content wrapper
  Container _content(Widget content) => Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: content,
      );

  /// Decrement, min 0
  void _onStepCancel() {
    if (index > 0) setState(() => index -= 1);
  }

  /// Increment, max 2
  void _onStepContinue() {
    if (index < 2) setState(() => index += 1);
  }

  /// GoTo
  void _onStepTapped(int step) => setState(() => index = step);

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, l10n.msPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return DotnetScaffold(
      EzScreen(Column(children: <Widget>[
        Expanded(
          child: Stepper(
            physics: const BouncingScrollPhysics(),
            stepIconWidth: max(24.0, padding * 1.5),
            stepIconHeight: max(24.0, padding * 1.5),
            connectorColor: WidgetStateProperty.resolveWith(
              (Set<WidgetState> states) =>
                  (states.contains(WidgetState.selected)
                      ? colorScheme.secondary
                      : colorScheme.outline),
            ),
            steps: <Step>[
              // Step 1: Identify the problem
              Step(
                stepStyle: _style(0, colorScheme, textTheme),
                isActive: index >= 0,
                title: _title(l10n.msIDProblem, textTheme.titleLarge),
                content: _content(EzText(
                  l10n.msIDProblemContent,
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.start,
                )),
              ),

              // Step 2: Be a part of the solution
              Step(
                stepStyle: _style(1, colorScheme, textTheme),
                isActive: index >= 1,
                title: _title(l10n.msFindSolution, textTheme.titleLarge),
                content: _content(EzText(
                  l10n.msFindSolutionContent,
                  style: textTheme.bodyLarge,
                  textAlign: TextAlign.start,
                )),
              ),

              // Step 3: Provide value
              Step(
                stepStyle: _style(2, colorScheme, textTheme),
                isActive: index >= 2,
                title: _title(l10n.msProvideValue, textTheme.titleLarge),
                content: _content(EzRichText(<InlineSpan>[
                  EzPlainText(
                    text: l10n.msProvideValueContent1,
                    style: textTheme.bodyLarge,
                  ),
                  EzInlineLink(
                    openUI,
                    style: textTheme.bodyLarge,
                    textAlign: TextAlign.start,
                    url: Uri.parse(Products.openUI.url),
                    hint: l10n.gProductsHint,
                    richLabel: efuiLFix,
                  ),
                  EzPlainText(
                    text: l10n.msProvideValueContent2,
                    style: textTheme.bodyLarge,
                  ),
                ], textAlign: TextAlign.start)),
              ),
            ],
            currentStep: index,
            onStepCancel: _onStepCancel,
            onStepContinue: _onStepContinue,
            onStepTapped: _onStepTapped,
            controlsBuilder: (_, ControlsDetails details) => Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ezSpacer,
                  EzScrollView(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    mainAxisSize: MainAxisSize.min,
                    children: stepButtons(details),
                  ),
                ],
              ),
            ),
          ),
        ),
        ezSeparator,
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: EzConfig.get(marginKey) + padding),
          alignment: Directionality.of(context) == TextDirection.ltr
              ? Alignment.centerLeft
              : Alignment.centerRight,
          child: const EzTranslationsPendingNotice(textAlign: TextAlign.start),
        ),
      ])),
      fabs: const <Widget>[ezSpacer, SettingsFAB()],
    );
  }
}
