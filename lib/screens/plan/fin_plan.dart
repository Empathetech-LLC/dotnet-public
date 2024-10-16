/* dotnet
 * Copyright (c) 2022-2024 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class FinPlanScreen extends StatefulWidget {
  const FinPlanScreen({super.key});

  @override
  State<FinPlanScreen> createState() => _FinPlanScreenState();
}

class _FinPlanScreenState extends State<FinPlanScreen> {
  // Gather the theme data //

  final double space = EzConfig.get(spacingKey);
  final double margin = EzConfig.get(marginKey);

  static const EzSpacer spacer = EzSpacer();
  static const EzSpacer rowSpacer = EzSpacer(vertical: false);
  static const EzSeparator separator = EzSeparator();

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final Lang l10n = Lang.of(context)!;

  // Gather the financial data //

  late final double income = calculateIncome();
  late final String incomeStr = asUSD(income);

  final List<double> goals = <double>[];
  int goalIndex = 0;

  double currGoal = 1000000000; // Silly placeholder
  late String currGoalStr = asUSD(currGoal);

  late double netProfit = max(income - currGoal, 0);

  void initFinancialData() async {
    goals.addAll(await calculateGoals());

    // Start with the largest goal
    double realGoal = goals[goals.length - 1];

    // If income is less than any goal, use that instead (and save the position)
    int i = 0;
    for (i; i < goals.length; i++) {
      if (income < goals[i]) {
        realGoal = goals[i];
        break;
      }
    }

    setState(() {
      goalIndex = min(i, goals.length - 1);
      currGoal = realGoal;
      currGoalStr = asUSD(currGoal);
      netProfit = max(income - currGoal, 0);
    });
  }

  // Define custom content //

  List<String> levels = <String>[
    'Level 0',
    'Level 1',
    'Level 2',
    'Level 3',
    'Level 4',
  ];

  late List<String> goalTitles = <String>[
    l10n.fpsGoal0,
    l10n.fpsGoal1,
    l10n.fpsGoal2,
    l10n.fpsGoal3,
    l10n.fpsGoal4,
  ];

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.fpsPageTitle, Theme.of(context).colorScheme.primary);

    // And financial data
    initFinancialData();
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    final TextStyle? subTitleStyle = textTheme.bodyLarge?.copyWith(
      fontSize: textTheme.titleLarge?.fontSize,
    );

    final Widget progressBar = SizedBox(
      width: widthOf(context) * 0.5,
      height: textTheme.headlineLarge!.fontSize,
      child: LinearProgressIndicator(
        value: income / currGoal,
        color: Theme.of(context).colorScheme.secondary,
        backgroundColor: textTheme.headlineLarge!.color,
        minHeight: double.infinity,
        borderRadius: ezRoundEdge,
      ),
    );

    return DotnetScaffold(
      body: EzScreen(
        useImageDecoration: false,
        child: EzScrollView(
          children: <Widget>[
            if (space > margin) EzSpacer(space: space - margin),

            // X of Y goal raised
            Semantics(
              button: false,
              readOnly: true,
              label:
                  '${levels[goalIndex]}: ${goalTitles[goalIndex]}. ${l10n.fpsRaised(currGoalStr, incomeStr)}',
              child: ExcludeSemantics(
                child: Column(children: <Widget>[
                  // Progress indicator
                  EzRowCol(
                    col: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Level
                        Text(
                          levels[goalIndex],
                          style: subTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        spacer,

                        // Progress bar
                        progressBar,
                        spacer,

                        // Goal
                        Text(
                          goalTitles[goalIndex],
                          style: subTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    row: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Level
                        Expanded(
                          child: Text(
                            levels[goalIndex],
                            style: subTitleStyle,
                            textAlign: TextAlign.right,
                          ),
                        ),
                        rowSpacer,

                        // Progress bar
                        progressBar,
                        rowSpacer,

                        // Goal
                        Expanded(
                          child: Text(
                            goalTitles[goalIndex],
                            style: subTitleStyle,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  spacer,

                  // Headline
                  Text(
                    l10n.fpsRaised(currGoalStr, incomeStr),
                    style: textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
            ),
            separator,

            // Profit distribution
            (netProfit > 0)
                ? Text(
                    l10n.fpsSplit(getSplit(netProfit)),
                    style: subTitleStyle,
                    textAlign: TextAlign.center,
                  )
                : Text(
                    l10n.fpsEventual,
                    style: subTitleStyle,
                    textAlign: TextAlign.center,
                  ),
            separator,

            const CharityOrgs(),
            separator,

            // Finances source
            EzLink(
              l10n.fpsCheck,
              style: textTheme.labelLarge!,
              textAlign: TextAlign.center,
              url: Uri.parse(financesSource),
              semanticsLabel: l10n.fpsCheckHint,
            ),
            separator,
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
