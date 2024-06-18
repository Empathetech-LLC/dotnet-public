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

  final double spacing = EzConfig.get(spacingKey);

  late final EzSpacer spacer = EzSpacer(spacing);
  late final EzSpacer rowSpacer = EzSpacer.row(spacing);

  late final TextTheme textTheme = Theme.of(context).textTheme;
  late final Color textColor = Theme.of(context).colorScheme.onSurface;

  late final TextStyle? titleStyle = textTheme.titleLarge?.copyWith(
    color: textColor,
  );
  late final TextStyle? bodyStyle = textTheme.bodyLarge?.copyWith(
    color: textColor,
  );

  late final Lang l10n = Lang.of(context)!;

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

    final EzNewLine newLine = EzNewLine(
      bodyStyle,
      textAlign: TextAlign.left,
    );

    final EzPlainText period = EzPlainText(text: '.', style: bodyStyle);

    final List<Step> steps = <Step>[
      // Step 1: Identify the problem
      Step(
        isActive: index >= 0,
        title: _title(l10n.plsIDProblem),
        content: _content(<Widget>[
          Text(
            l10n.plsIDProblemContent,
            style: bodyStyle,
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
            style: bodyStyle,
            textAlign: TextAlign.left,
          ),
        ]),
      ),

      // Step 3: Provide value
      Step(
        isActive: index >= 2,
        title: _title(l10n.plsProvideValue),
        content: _content(<Widget>[
          Text(
            l10n.plsProvideValueContent1,
            style: bodyStyle,
            textAlign: TextAlign.left,
          ),
          newLine,
          EzRichText(<InlineSpan>[
            EzPlainText(
              text: l10n.plsProvideValueContent2,
              style: bodyStyle,
            ),
            EzInlineLink(
              efuiL,
              textFix: efuiLFix,
              style: bodyStyle,
              textAlign: TextAlign.left,
              onTap: () => context.go(productsRoute),
              semanticsLabel: l10n.gProductsHint,
            ),
            EzPlainText(
              text: l10n.plsProvideValueContent3,
              style: bodyStyle,
            ),
          ], textAlign: TextAlign.left),
        ]),
      ),

      // Step 4: Do it right
      Step(
        isActive: index >= 3,
        title: _title(l10n.plsDoItRight),
        content: _content(<Widget>[
          EzRichText(<InlineSpan>[
            EzPlainText(
              text: l10n.plsDoItRightContent1,
              style: bodyStyle,
              semanticsLabel: l10n.plsDoItRightContent1Fix,
            ),
            EzInlineLink(
              l10n.plsSaaS,
              style: bodyStyle,
              textAlign: TextAlign.left,
              url: Uri.parse(saaSDocs),
              semanticsLabel: l10n.plsSaaSHint,
              tooltip: saaSDocs,
            ),
            EzPlainText(
              text: l10n.plsDoItRightContent2,
              style: bodyStyle,
            ),
          ], textAlign: TextAlign.left),
          newLine,
          EzRichText(<InlineSpan>[
            EzPlainText(
              text: l10n.plsDoItRightContent3,
              style: bodyStyle,
              semanticsLabel: l10n.plsDoItRightContent3Fix,
            ),
            EzInlineLink(
              l10n.plsDualLicense,
              style: bodyStyle,
              textAlign: TextAlign.left,
              url: Uri.parse(dualLicenseDocs),
              semanticsLabel: l10n.plsDualLicenseHint,
              tooltip: dualLicenseDocs,
            ),
            period,
          ], textAlign: TextAlign.left),
          newLine,
          Text(
            l10n.plsDoItRightContent4,
            style: bodyStyle,
            textAlign: TextAlign.left,
            semanticsLabel: l10n.plsDoItRightContent4Fix,
          ),
          newLine,
          EzRichText(<InlineSpan>[
            EzPlainText(
              text: l10n.plsDoItRightContent5,
              style: bodyStyle,
            ),
            EzInlineLink(
              l10n.fpsPageTitle.toLowerCase(),
              style: bodyStyle,
              textAlign: TextAlign.left,
              onTap: () => context.go(finPlanRoute),
              semanticsLabel: l10n.fpsPageHint,
            ),
            period,
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

            return Row(children: buttons());
          },
          physics: const BouncingScrollPhysics(),
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }
}
