import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'dart:math';
import 'package:flutter/material.dart';

class FinPlanScreen extends StatefulWidget {
  const FinPlanScreen({Key? key}) : super(key: key);

  @override
  _FinPlanScreenState createState() => _FinPlanScreenState();
}

class _FinPlanScreenState extends State<FinPlanScreen> {
  // Gather the theme data //

  final double _buttonSpacer = EzConfig.get(buttonSpacingKey);
  final double _textSpacer = EzConfig.get(textSpacingKey);

  late final TextStyle? _headingStyle = headlineSmall(context);
  late final TextStyle? _titleStyle = titleLarge(context);
  late final TextStyle? _contentStyle = titleMedium(context);
  late final TextStyle? _labelStyle = labelLarge(context);

  // Gather the financial data //

  late final double _totalIncome = calculateIncome();
  late double _totalGoal = 1000000; // Silly placeholder
  late double _totalProfit = max(_totalIncome - _totalGoal, 0);

  late final String _income = asUSD(_totalIncome);
  late String _goal = asUSD(_totalGoal);
  late String _profit =
      (_totalProfit == 0) ? Lang.of(context)!.fpsEventual : asUSD(_totalProfit);

  void _initFinancialData() async {
    double goal = await calculateGoal();
    setState(() {
      _totalGoal = goal;
      _totalProfit = max(_totalIncome - _totalGoal, 0);
      _profit = (_totalProfit == 0)
          ? Lang.of(context)!.fpsEventual
          : asUSD(_totalProfit);

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
    setPageTitle(context, Lang.of(context)!.fpsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            Semantics(
              button: false,
              readOnly: true,
              label: Lang.of(context)!.fpsRaised(_goal, _income) +
                  " " +
                  Lang.of(context)!.fpsYear,
              child: ExcludeSemantics(
                child: Column(children: [
                  Text(
                    Lang.of(context)!.fpsRaised(_goal, _income),
                    style: _headingStyle,
                    textAlign: TextAlign.center,
                  ),
                  EzSpacer(_buttonSpacer),
                  Container(
                    width: widthOf(context) * (2 / 3),
                    height: _headingStyle?.fontSize,
                    child: LinearProgressIndicator(
                      value: _totalIncome / _totalGoal,
                      color: Theme.of(context).colorScheme.secondary,
                      backgroundColor: _headingStyle?.color,
                      minHeight: double.infinity,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  EzSpacer(_buttonSpacer),
                  Text(
                    Lang.of(context)!.fpsYear,
                    style: _headingStyle,
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
            ),
            EzSpacer(_textSpacer),
            Text(
              Lang.of(context)!.fpsSplit(_profit),
              style: _contentStyle,
              textAlign: TextAlign.center,
            ),
            EzSpacer(_buttonSpacer),
            CharityOrgs(
              titleStyle: _titleStyle,
              contentStyle: _contentStyle,
            ),
            EzSpacer(_textSpacer),
            EzLink(
              Lang.of(context)!.fpsCheck,
              style: _labelStyle,
              textAlign: TextAlign.center,
              url: Uri.parse(financesLink),
              semanticsLabel: Lang.of(context)!.fpsCheckHint,
            ),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
