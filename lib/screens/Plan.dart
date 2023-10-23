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
  // Set page/tab title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, Lang.of(context)!.plsPageTitle);
  }

  // Gather theme data //

  final double _buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];

  late final Color? _buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? _titleStyle = headlineSmall(context);
  late final TextStyle? _contentStyle = titleMedium(context);
  late final TextStyle? _contentLinkStyle = titleMedium(context)?.copyWith(
    color: _buttonColor,
    decoration: TextDecoration.underline,
  );

  // Define local Text Widgets //

  Widget _title(String title) {
    return Text(
      title,
      style: _titleStyle,
      textAlign: TextAlign.left,
    );
  }

  Widget _content(dynamic content) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: EzScrollView(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          content.runtimeType == String
              ? EzText(
                  content,
                  style: _contentStyle,
                  textAlign: TextAlign.left,
                )
              : content,
          EzSpacer(_buttonSpacer),
        ],
      ),
    );
  }

  // Define Step functions //

  int _index = 0; // Identify the problem

  void _onStepCancel() {
    // Decrement, min 0
    if (_index > 0) {
      setState(() {
        _index -= 1;
      });
    }
  }

  void _onStepContinue() {
    // Increment
    setState(() {
      _index += 1;
    });
  }

  void _onStepTapped(int index) {
    // GoTo
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Define steps //

    final steps = <Step>[
      Step(
        isActive: _index >= 0,
        title: _title(Lang.of(context)!.plsIDProblem),
        content: _content(Lang.of(context)!.plsIDProblemContent),
      ),
      Step(
        isActive: _index >= 1,
        title: _title(Lang.of(context)!.plsBeSolution),
        content: _content(Lang.of(context)!.plsBeSolutionContent),
      ),
      Step(
        isActive: _index >= 2,
        title: _title(Lang.of(context)!.plsProvideValue),
        content: _content(EzRichText(
          [
            EzPlainText(
              Lang.of(context)!.plsProvideValueContent1,
              context: context,
              style: _contentStyle,
            ),
            EzInlineLink(
              "EFUI",
              style: _contentLinkStyle,
              semanticsLabel: Lang.of(context)!.hsProductsHint,
              onTap: () => context.goNamed(productsRoute),
            ),
            EzPlainText(
              Lang.of(context)!.plsProvideValueContent2,
              context: context,
              style: _contentStyle,
            ),
          ],
          textAlign: TextAlign.left,
        )),
      ),
      Step(
        isActive: _index >= 3,
        title: _title(Lang.of(context)!.plsDoItRight),
        content: _content(EzRichText(
          [
            EzPlainText(
              Lang.of(context)!.plsDoItRightContent1,
              context: context,
              style: _contentStyle,
              semantics: Lang.of(context)!.plsDoItRightContent1Fix,
            ),
            EzInlineLink(
              "SaaS",
              style: _contentLinkStyle,
              semanticsLabel: Lang.of(context)!.plsSaaSHint,
              url: Uri.parse(
                "https://en.wikipedia.org/wiki/Software_as_a_service",
              ),
            ),
            EzPlainText(
              Lang.of(context)!.plsDoItRightContent2,
              context: context,
              style: _contentStyle,
            ),
            EzInlineLink(
              Lang.of(context)!.plsDualLicense,
              style: _contentLinkStyle,
              semanticsLabel: Lang.of(context)!.plsDualLicenseHint,
              url: Uri.parse("https://en.wikipedia.org/wiki/Multi-licensing"),
            ),
            EzPlainText(
              Lang.of(context)!.plsDoItRightContent3,
              context: context,
              style: _contentStyle,
            ),
            EzInlineLink(
              "de-FAANG",
              style: _contentLinkStyle,
              semanticsLabel: Lang.of(context)!.plsBigTechHint,
              url: Uri.parse("https://en.wikipedia.org/wiki/Big_Tech"),
            ),
            EzPlainText(
              Lang.of(context)!.plsDoItRightContent4,
              context: context,
              style: _contentStyle,
              semantics: Lang.of(context)!.plsDoItRightContent4Fix,
            ),
          ],
          textAlign: TextAlign.left,
        )),
      ),
    ];

    // Return the build //

    return DotNetScaffold(
      body: EzScreen(
        child: Stepper(
          currentStep: _index,
          steps: steps,
          onStepCancel: _onStepCancel,
          onStepContinue: _onStepContinue,
          onStepTapped: _onStepTapped,

          // Custom control buttons
          controlsBuilder: (context, details) {
            bool isFirst = _index == 0;
            bool isLast = _index == steps.length - 1;

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
                  EzSpacer.row(_buttonSpacer),
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
      fab: const SettingsFAB(),
    );
  }
}
