/* dotnet
 * Copyright (c) 2026 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:efui_bios/efui_bios.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class MissionScreen extends StatefulWidget {
  MissionScreen() : super(key: ValueKey<int>(EzConfig.seed));

  @override
  State<MissionScreen> createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  // Define the build data //

  int index = 0;

  /// Styles the index buttons based on [index]
  StepStyle? _style(int indexTarget) {
    if (index > indexTarget) {
      // Passed
      return StepStyle(
        color: EzConfig.colors.secondary,
        connectorColor: EzConfig.colors.secondary,
        border: Border.all(color: EzConfig.colors.secondaryContainer),
        indexStyle: EzConfig.styles.labelLarge
            ?.copyWith(color: EzConfig.colors.onSecondary),
      );
    } else if (index == indexTarget) {
      // Here
      return StepStyle(
        color: EzConfig.colors.primary,
        connectorColor: EzConfig.colors.secondary,
        border: Border.all(color: EzConfig.colors.primaryContainer),
        indexStyle: EzConfig.styles.labelLarge
            ?.copyWith(color: EzConfig.colors.onPrimary),
      );
    } else {
      // Next
      return StepStyle(
        color: EzConfig.colors.surface,
        connectorColor: EzConfig.colors.outline,
        border: null,
        indexStyle: EzConfig.styles.labelLarge
            ?.copyWith(color: EzConfig.colors.onSurface),
      );
    }
  }

  /// Defines [Stepper] navigation buttons
  List<Widget> stepButtons(Lang l10n, ControlsDetails details) {
    final EdgeInsets linkPadding = EzInsets.wrap(EzConfig.marginVal);

    switch (details.stepIndex) {
      case 0:
        // Start -> So we
        return <Widget>[
          EzTextIconButton(
            onPressed: details.onStepContinue,
            style: TextButton.styleFrom(padding: linkPadding),
            icon: const Icon(Icons.arrow_downward),
            label: l10n.msSoWe,
          ),
        ];

      case 1:
        // Middle -> By
        return <Widget>[
          EzTextIconButton(
            onPressed: details.onStepContinue,
            style: TextButton.styleFrom(padding: linkPadding),
            icon: const Icon(Icons.arrow_downward),
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
            icon: const Icon(Icons.arrow_upward),
            label: l10n.msFirst,
          ),
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

  // Define custom functions //

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
  void initState() {
    super.initState();
    ezWindowNamer(l10n.msPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      EzScreen(Column(children: <Widget>[
        Expanded(
          child: Stepper(
            physics: const BouncingScrollPhysics(),
            stepIconWidth: max(24.0, EzConfig.padding * 1.5),
            stepIconHeight: max(24.0, EzConfig.padding * 1.5),
            connectorColor: WidgetStateProperty.resolveWith(
              (Set<WidgetState> states) =>
                  (states.contains(WidgetState.selected)
                      ? EzConfig.colors.secondary
                      : EzConfig.colors.outline),
            ),
            steps: <Step>[
              // Step 1: Identify the problem
              Step(
                stepStyle: _style(0),
                isActive: index >= 0,
                title: _title(l10n.msIDProblem, EzConfig.styles.titleLarge),
                content: _content(EzText(
                  l10n.msIDProblemContent,
                  style: EzConfig.styles.bodyLarge,
                  textAlign: TextAlign.start,
                )),
              ),

              // Step 2: Be a part of the solution
              Step(
                stepStyle: _style(1),
                isActive: index >= 1,
                title: _title(l10n.msFindSolution, EzConfig.styles.titleLarge),
                content: _content(EzText(
                  l10n.msFindSolutionContent,
                  style: EzConfig.styles.bodyLarge,
                  textAlign: TextAlign.start,
                )),
              ),

              // Step 3: Provide value
              Step(
                stepStyle: _style(2),
                isActive: index >= 2,
                title: _title(l10n.msProvideValue, EzConfig.styles.titleLarge),
                content: _content(EzRichText(<InlineSpan>[
                  EzPlainText(
                    text: l10n.msProvideValueContent1,
                    style: EzConfig.styles.bodyLarge,
                  ),
                  EzInlineLink(
                    openUI,
                    style: EzConfig.styles.bodyLarge,
                    textAlign: TextAlign.start,
                    url: Uri.parse(Products.openUI.url),
                    hint: l10n.gProductsHint,
                    richLabel: efuiLFix,
                  ),
                  EzPlainText(
                    text: l10n.msProvideValueContent2,
                    style: EzConfig.styles.bodyLarge,
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
                  EzConfig.spacer,
                  EzScrollView(
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    mainAxisSize: MainAxisSize.min,
                    children: stepButtons(l10n, details),
                  ),
                ],
              ),
            ),
          ),
        ),
        EzConfig.separator,
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: EzConfig.marginVal + EzConfig.padding),
          alignment:
              EzConfig.isLTR ? Alignment.centerLeft : Alignment.centerRight,
          child: const EzTranslationsPendingNotice(textAlign: TextAlign.start),
        ),
      ])),
      fabs: <Widget>[EzConfig.spacer, const SettingsFAB()],
    );
  }
}
