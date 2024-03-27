import '../utils/utils.dart';

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

  late final EzSpacer spacer = EzSpacer(space);
  late final EzSpacer separator = EzSpacer(space * 2);

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final TextStyle? headlineStyle = textTheme.headlineLarge;
  late final TextStyle? bodyStyle = textTheme.bodyLarge;

  late final Lang l10n = Lang.of(context)!;

  // Gather the financial data //

  late final double _totalIncome = calculateIncome();
  late double _totalGoal = 1000000; // Silly placeholder
  late double _totalProfit = max(_totalIncome - _totalGoal, 0);

  late final String _income = asUSD(_totalIncome);
  late String _goal = asUSD(_totalGoal);
  late String _profit =
      (_totalProfit == 0) ? l10n.fpsEventual : asUSD(_totalProfit);

  void _initFinancialData() async {
    final double goal = await calculateGoal();
    setState(() {
      _totalGoal = goal;
      _totalProfit = max(_totalIncome - _totalGoal, 0);
      _profit = (_totalProfit == 0) ? l10n.fpsEventual : asUSD(_totalProfit);

      _goal = asUSD(goal);
    });
  }

  @override
  void initState() {
    super.initState();
    _initFinancialData();
  }

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(l10n.fpsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: <Widget>[
            // X of Y goal raised
            Semantics(
              button: false,
              readOnly: true,
              label: '${l10n.fpsRaised(_goal, _income)} ${l10n.fpsYear}',
              child: ExcludeSemantics(
                child: Column(children: <Widget>[
                  // Headline
                  Text(
                    l10n.fpsRaised(_goal, _income),
                    style: headlineStyle,
                    textAlign: TextAlign.center,
                  ),
                  spacer,

                  // Progress indicator
                  SizedBox(
                    width: widthOf(context) * (2 / 3),
                    height: headlineStyle!.fontSize,
                    child: LinearProgressIndicator(
                      value: _totalIncome / _totalGoal,
                      color: Theme.of(context).colorScheme.secondary,
                      backgroundColor: headlineStyle!.color,
                      minHeight: double.infinity,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  spacer,

                  // Sub-header
                  Text(
                    l10n.fpsYear,
                    style: headlineStyle,
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
            ),
            separator,

            // Profit distribution
            Text(
              l10n.fpsSplit(_profit),
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            spacer,

            CharityOrgs(
              titleStyle: textTheme.titleLarge,
              bodyStyle: bodyStyle,
            ),
            separator,

            // Finances source
            EzLink(
              l10n.fpsCheck,
              style: textTheme.labelLarge,
              textAlign: TextAlign.center,
              url: Uri.parse(financesSource),
              semanticsLabel: l10n.fpsCheckHint,
            ),
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
