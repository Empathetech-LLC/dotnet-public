/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Gather the theme data //

  final double padding = EzConfig.get(paddingKey);

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final ColorScheme colorScheme = Theme.of(context).colorScheme;

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  int index = 0;

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
        // Forward
        return <Widget>[
          EzElevatedIconButton(
            onPressed: details.onStepContinue,
            icon: Icon(PlatformIcons(context).downArrow),
            label: l10n.plsThen,
          )
        ];
      case 2:
        // Back
        return <Widget>[
          EzElevatedIconButton(
            onPressed: details.onStepCancel,
            icon: Icon(PlatformIcons(context).upArrow),
            label: l10n.plsBefore,
          )
        ];
      default:
        // Both
        return <Widget>[
          EzElevatedIconButton(
            onPressed: details.onStepCancel,
            icon: Icon(PlatformIcons(context).upArrow),
            label: l10n.plsBefore,
          ),
          const EzSpacer(vertical: false),
          EzElevatedIconButton(
            onPressed: details.onStepContinue,
            icon: Icon(PlatformIcons(context).downArrow),
            label: l10n.plsThen,
          ),
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
    setPageTitle(l10n.plsPageTitle, colorScheme.primary);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        useImageDecoration: false,
        child: Stepper(
          physics: const BouncingScrollPhysics(),
          stepIconWidth: max(24.0, padding * 1.5),
          stepIconHeight: max(24.0, padding * 1.5),
          connectorColor: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) => (states.contains(WidgetState.selected)
                ? colorScheme.secondary
                : colorScheme.outline),
          ),
          steps: <Step>[
            // Step 1: Identify the problem
            Step(
              stepStyle: _style(0),
              isActive: index >= 0,
              title: _title(l10n.plsIDProblem),
              content: _content(Text(
                l10n.plsIDProblemContent,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.left,
              )),
            ),

            // Step 2: Be a part of the solution
            Step(
              stepStyle: _style(1),
              isActive: index >= 1,
              title: _title(l10n.plsBeSolution),
              content: _content(Text(
                l10n.plsBeSolutionContent,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.left,
              )),
            ),

            // Step 3: Provide value
            Step(
              stepStyle: _style(2),
              isActive: index >= 2,
              title: _title(l10n.plsProvideValue),
              content: _content(EzRichText(<InlineSpan>[
                EzPlainText(
                  text: l10n.plsProvideValueContent1,
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
                  text: l10n.plsProvideValueContent2,
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
      fab: SettingsFAB(context),
    );
  }
}
