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

  final EzSpacer _buttonSpacer = EzSpacer(EzConfig.get(buttonSpacingKey));
  final EzSpacer _textSpacer = EzSpacer(EzConfig.get(textSpacingKey));

  late final TextStyle? headlineStyle = getHeadline(context);
  late final TextStyle? bodyStyle = getBody(context);

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
    setPageTitle(Lang.of(context)!.fpsPageTitle);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          children: [
            // X of Y goal raised
            Semantics(
              button: false,
              readOnly: true,
              label: Lang.of(context)!.fpsRaised(_goal, _income) +
                  " " +
                  Lang.of(context)!.fpsYear,
              child: ExcludeSemantics(
                child: Column(children: [
                  // Headline
                  Text(
                    Lang.of(context)!.fpsRaised(_goal, _income),
                    style: headlineStyle,
                    textAlign: TextAlign.center,
                  ),
                  _buttonSpacer,

                  // Progress indicator
                  Container(
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
                  _buttonSpacer,

                  // Sub-header
                  Text(
                    Lang.of(context)!.fpsYear,
                    style: headlineStyle,
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
            ),
            _textSpacer,

            // Profit distribution
            Text(
              Lang.of(context)!.fpsSplit(_profit),
              style: bodyStyle,
              textAlign: TextAlign.center,
            ),
            _buttonSpacer,

            CharityOrgs(
              titleStyle: getTitle(context),
              bodyStyle: bodyStyle,
            ),
            _textSpacer,

            // Finances source
            EzLink(
              Lang.of(context)!.fpsCheck,
              style: getLabel(context),
              textAlign: TextAlign.center,
              url: Uri.parse(financesSource),
              semanticsLabel: Lang.of(context)!.fpsCheckHint,
            ),
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
