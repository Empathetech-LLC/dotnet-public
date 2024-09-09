/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Gather the theme data //

  static const EzSpacer spacer = EzSpacer();
  static const EzSpacer rowSpacer = EzSpacer(vertical: false);

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final Lang l10n = Lang.of(context)!;

  // Define the Step functions //

  int index = 0;

  Widget _title(String title) {
    return Text(
      title,
      style: textTheme.titleLarge,
      textAlign: TextAlign.left,
    );
  }

  Widget _content(List<Widget> contents) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: EzScrollView(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ...contents,
          spacer,
        ],
      ),
    );
  }

  /// Decrement, min 0
  void _onStepCancel() {
    if (index > 0) {
      setState(() {
        index -= 1;
      });
    }
  }

  /// Increment
  void _onStepContinue() {
    setState(() {
      index += 1;
    });
  }

  /// GoTo
  void _onStepTapped(int step) {
    setState(() {
      index = step;
    });
  }

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.plsPageTitle);
  }

  @override
  Widget build(BuildContext context) {
    // Define the page content //

    final List<Step> steps = <Step>[
      // Step 1: Identify the problem
      Step(
        isActive: index >= 0,
        title: _title(l10n.plsIDProblem),
        content: _content(<Widget>[
          Text(
            l10n.plsIDProblemContent,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.left,
          ),
        ]),
      ),

      // Step 2: Be a part of the solution
      Step(
        isActive: index >= 1,
        title: _title(l10n.plsBeSolution),
        content: _content(<Widget>[
          Text(
            l10n.plsBeSolutionContent,
            style: textTheme.bodyLarge,
            textAlign: TextAlign.left,
          ),
        ]),
      ),

      // Step 3: Provide value
      Step(
        isActive: index >= 2,
        title: _title(l10n.plsProvideValue),
        content: _content(<Widget>[
          EzRichText(<InlineSpan>[
            EzPlainText(
              text: l10n.plsProvideValueContent1,
              style: textTheme.bodyLarge,
            ),
            EzInlineLink(
              efuiL,
              style: textTheme.bodyLarge,
              textAlign: TextAlign.left,
              onTap: () => context.go(productsRoute),
              semanticsLabel: l10n.gProductsHint,
              richSemanticsLabel: efuiLFix,
            ),
            EzPlainText(
              text: l10n.plsProvideValueContent2,
              style: textTheme.bodyLarge,
            ),
          ], textAlign: TextAlign.left),
        ]),
      ),
    ];

    // Return the build //

    return DotnetScaffold(
      body: EzScreen(
        child: Stepper(
          currentStep: index,
          steps: steps,
          onStepCancel: _onStepCancel,
          onStepContinue: _onStepContinue,
          onStepTapped: _onStepTapped,
          controlsBuilder: (BuildContext context, ControlsDetails details) {
            final bool isFirst = index == 0;
            final bool isLast = index == steps.length - 1;

            List<Widget> buttons() {
              if (isFirst) {
                return <Widget>[
                  ElevatedButton(
                    onPressed: details.onStepContinue,
                    child: Text(l10n.plsThen),
                  )
                ];
              } else if (isLast) {
                return <Widget>[
                  ElevatedButton(
                    onPressed: details.onStepCancel,
                    child: Text(l10n.plsBefore),
                  )
                ];
              } else {
                return <Widget>[
                  ElevatedButton(
                    onPressed: details.onStepCancel,
                    child: Text(l10n.plsBefore),
                  ),
                  rowSpacer,
                  ElevatedButton(
                    onPressed: details.onStepContinue,
                    child: Text(l10n.plsThen),
                  ),
                ];
              }
            }

            return Align(
              alignment: Alignment.centerLeft,
              child: EzScrollView(
                scrollDirection: Axis.horizontal,
                mainAxisSize: MainAxisSize.min,
                children: buttons(),
              ),
            );
          },
          physics: const BouncingScrollPhysics(),
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
