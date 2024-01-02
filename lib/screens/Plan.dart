import './screens.dart';
import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Gather the theme data //

  final double buttonSpace = EzConfig.get(buttonSpacingKey);

  late final EzSpacer _buttonSpacer = EzSpacer(buttonSpace);
  late final EzSpacer _rowButtonSpacer = EzSpacer.row(buttonSpace);

  late final TextStyle? titleStyle = getTitle(context);
  late final TextStyle? bodyStyle = getBody(context);

  // Define the Step functions //

  int index = 0;

  Widget _title(String title) {
    return Text(
      title,
      style: titleStyle,
      textAlign: TextAlign.left,
    );
  }

  Widget _content(List<Widget> contents) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: EzScrollView(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...contents,
          _buttonSpacer,
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
    setPageTitle(Lang.of(context)!.plsPageTitle);
  }

  @override
  Widget build(BuildContext context) {
    // Define the page content //

    final EzNewLine newLine = EzNewLine(
      bodyStyle,
      textAlign: TextAlign.left,
    );

    final EzPlainText period = EzPlainText(".", style: bodyStyle);

    final steps = <Step>[
      // Step 1: Identify the problem
      Step(
        isActive: index >= 0,
        title: _title(Lang.of(context)!.plsIDProblem),
        content: _content([
          Text(
            Lang.of(context)!.plsIDProblemContent,
            style: bodyStyle,
            textAlign: TextAlign.left,
          ),
        ]),
      ),

      // Step 2: Be a part of the solution
      Step(
        isActive: index >= 1,
        title: _title(Lang.of(context)!.plsBeSolution),
        content: _content([
          Text(
            Lang.of(context)!.plsBeSolutionContent,
            style: bodyStyle,
            textAlign: TextAlign.left,
          ),
        ]),
      ),

      // Step 3: Provide value
      Step(
        isActive: index >= 2,
        title: _title(Lang.of(context)!.plsProvideValue),
        content: _content([
          Text(
            Lang.of(context)!.plsProvideValueContent1,
            style: bodyStyle,
            textAlign: TextAlign.left,
          ),
          newLine,
          EzRichText([
            EzPlainText(
              Lang.of(context)!.plsProvideValueContent2,
              style: bodyStyle,
            ),
            EzInlineLink(
              efuiL,
              textFix: efuiLFix,
              style: bodyStyle,
              textAlign: TextAlign.left,
              onTap: () => context.goNamed(productsRoute),
              semanticsLabel: Lang.of(context)!.gProductsHint,
            ),
            EzPlainText(
              Lang.of(context)!.plsProvideValueContent3,
              style: bodyStyle,
            ),
          ], textAlign: TextAlign.left),
        ]),
      ),

      // Step 4: Do it right
      Step(
        isActive: index >= 3,
        title: _title(Lang.of(context)!.plsDoItRight),
        content: _content([
          EzRichText([
            EzPlainText(
              Lang.of(context)!.plsDoItRightContent1,
              style: bodyStyle,
              semanticsLabel: Lang.of(context)!.plsDoItRightContent1Fix,
            ),
            EzInlineLink(
              Lang.of(context)!.plsSaaS,
              style: bodyStyle,
              textAlign: TextAlign.left,
              url: Uri.parse(saaSDocs),
              semanticsLabel: Lang.of(context)!.plsSaaSHint,
              tooltip: saaSDocs,
            ),
            EzPlainText(
              Lang.of(context)!.plsDoItRightContent2,
              style: bodyStyle,
            ),
          ], textAlign: TextAlign.left),
          newLine,
          EzRichText([
            EzPlainText(
              Lang.of(context)!.plsDoItRightContent3,
              style: bodyStyle,
              semanticsLabel: Lang.of(context)!.plsDoItRightContent3Fix,
            ),
            EzInlineLink(
              Lang.of(context)!.plsDualLicense,
              style: bodyStyle,
              textAlign: TextAlign.left,
              url: Uri.parse(dualLicenseDocs),
              semanticsLabel: Lang.of(context)!.plsDualLicenseHint,
              tooltip: dualLicenseDocs,
            ),
            period,
          ], textAlign: TextAlign.left),
          newLine,
          Text(
            Lang.of(context)!.plsDoItRightContent4,
            style: bodyStyle,
            textAlign: TextAlign.left,
            semanticsLabel: Lang.of(context)!.plsDoItRightContent4Fix,
          ),
          newLine,
          EzRichText([
            EzPlainText(
              Lang.of(context)!.plsDoItRightContent5,
              style: bodyStyle,
            ),
            EzInlineLink(
              Lang.of(context)!.fpsPageTitle.toLowerCase(),
              style: bodyStyle,
              textAlign: TextAlign.left,
              onTap: () => context.goNamed(finPlanRoute),
              semanticsLabel: Lang.of(context)!.fpsPageHint,
            ),
            period,
          ], textAlign: TextAlign.left),
        ]),
      ),
    ];

    // Return the build //

    return DotNetScaffold(
      body: EzScreen(
        child: Stepper(
          currentStep: index,
          steps: steps,
          onStepCancel: _onStepCancel,
          onStepContinue: _onStepContinue,
          onStepTapped: _onStepTapped,
          controlsBuilder: (context, details) {
            bool isFirst = index == 0;
            bool isLast = index == steps.length - 1;

            List<Widget> _buttons() {
              if (isFirst) {
                return [
                  ElevatedButton(
                    onPressed: details.onStepContinue,
                    child: Text(Lang.of(context)!.plsThen),
                  )
                ];
              } else if (isLast) {
                return [
                  ElevatedButton(
                    onPressed: details.onStepCancel,
                    child: Text(Lang.of(context)!.plsBefore),
                  )
                ];
              } else {
                return [
                  ElevatedButton(
                    onPressed: details.onStepCancel,
                    child: Text(Lang.of(context)!.plsBefore),
                  ),
                  _rowButtonSpacer,
                  ElevatedButton(
                    onPressed: details.onStepContinue,
                    child: Text(Lang.of(context)!.plsThen),
                  ),
                ];
              }
            }

            return Row(children: _buttons());
          },
          physics: const BouncingScrollPhysics(),
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
