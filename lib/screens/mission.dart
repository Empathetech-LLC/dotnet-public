/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import 'export.dart';
import '../utils/export.dart';
import '../widgets/export.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class MissionScreen extends StatefulWidget {
  const MissionScreen({super.key});

  @override
  State<MissionScreen> createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen> {
  // Gather the theme data //

  final double padding = EzConfig.get(paddingKey);

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final ColorScheme colorScheme = Theme.of(context).colorScheme;

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  int index = 2;

  /// Styles the index buttons based on [index]
  StepStyle? _style(int indexTarget) {
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
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            icon: Icon(PlatformIcons(context).downArrow),
            label: l10n.msSoWe,
          ),
        ];

      case 1:
        // Middle -> By
        return <Widget>[
          EzTextIconButton(
            onPressed: details.onStepContinue,
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            icon: Icon(PlatformIcons(context).downArrow),
            label: l10n.msBy,
          ),
        ];

      case 2:
      default:
        // End -> By first
        return <Widget>[
          EzTextIconButton(
            onPressed: () => setState(() => index = 0),
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            icon: Icon(PlatformIcons(context).upArrow),
            label: l10n.msFirst,
          )
        ];
    }
  }

  /// [Step] title wrapper
  Text _title(String title) =>
      Text(title, style: textTheme.titleLarge, textAlign: TextAlign.left);

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

  /// Increment
  void _onStepContinue() => setState(() => index += 1);

  /// GoTo
  void _onStepTapped(int step) => setState(() => index = step);

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.msPageTitle, colorScheme.primary);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        useImageDecoration: false,
        child: Column(
          children: <Widget>[
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
                    stepStyle: _style(0),
                    isActive: index >= 0,
                    title: _title(l10n.msIDProblem),
                    content: _content(Text(
                      l10n.msIDProblemContent,
                      style: textTheme.bodyLarge,
                      textAlign: TextAlign.left,
                    )),
                  ),

                  // Step 2: Be a part of the solution
                  Step(
                    stepStyle: _style(1),
                    isActive: index >= 1,
                    title: _title(l10n.msFindSolution),
                    content: _content(Text(
                      l10n.msFindSolutionContent,
                      style: textTheme.bodyLarge,
                      textAlign: TextAlign.left,
                    )),
                  ),

                  // Step 3: Provide value
                  Step(
                    stepStyle: _style(2),
                    isActive: index >= 2,
                    title: _title(l10n.msProvideValue),
                    content: _content(EzRichText(<InlineSpan>[
                      EzPlainText(
                        text: l10n.msProvideValueContent1,
                        style: textTheme.bodyLarge,
                      ),
                      EzInlineLink(
                        efuiL,
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.left,
                        onTap: () => context.goNamed(productsPath),
                        semanticsLabel: l10n.gProductsHint,
                        richSemanticsLabel: efuiLFix,
                      ),
                      EzPlainText(
                        text: l10n.msProvideValueContent2,
                        style: textTheme.bodyLarge,
                      ),
                    ], textAlign: TextAlign.left)),
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
                      const EzSpacer(),
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
            const EzSeparator(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: (EzConfig.get(marginKey) + padding) * 2,
              ),
              alignment: Alignment.centerLeft,
              child: const EzTranslationsPendingNotice(
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
