import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Set page/tab title //

  @override
  void initState() {
    super.initState();
    setPageTitle(context: context, title: 'The Plan');
  }

  // Gather theme data //

  int _index = 0; // Be in the moment

  final double margin = EzConfig.instance.prefs[marginKey];
  final double buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];
  final double paragraphSpacer = EzConfig.instance.prefs[paragraphSpacingKey];

  late final Color? buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? titleStyle = headlineSmall(context);
  late final TextStyle? contentStyle = titleMedium(context);

  late final TextStyle? labelStyle = labelLarge(context);
  late final TextStyle? labelLinkStyle = labelStyle?.copyWith(
    color: buttonColor,
    decoration: TextDecoration.underline,
  );

  // Define step functions //

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
      _PlanStep(
        isActive: _index >= 0,
        titleString: 'Identify the problem',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              """Our technological needs are being met by entities that don't prioritize our wellbeing. That needs to change.""",
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 1,
        titleString: 'Be a part of the solution',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              """Fortunately, there are amazing people all over the world working together to put the power in the hands of the consumer: the open source community.

The sub-problem is: actually cleansing one's life of closed source software takes way too much time, energy, and prior knowledge.

That's where we come in.""",
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 2,
        titleString: 'Provide value',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              """Empathetech will provide a centralized software (as a service) for easily managing an ecosystem of open source tools.

Empathetech's suite will empower its users to...
  1. Live a healthier tech life
  2. Have control over their digital privacy
  3. Evolve their tech literacy
""",
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 3,
        titleString: 'Do it right',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              """Software as a Service (SaaS). To some, it may seem we've already contradicted ourselves; SaaS products are generally built to benefit wallets, not people. And we're supposed to change that right? Right!

If the service providers remember to stay Empathetech, SaaS can benefit everyone.

For starters: a closed source ecosystem of open source software would be paradoxical.
So, while official licensing commitments will come with the official launch, we're aiming towards the dual-licensing portion of the spectrum. A shared problem requires a shared solution.

Beyond the pinky promise of dual-licensing, some actual commitments we are ready to make are:
 
  1. For any/all Empathetech made SaaS products, there will always be a lifetime option.
  2. We will never get in the way of the DIY community. If we're not providing you a service/product, you don't owe use anything.""",
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 4,
        titleString: 'Stay focussed',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              """Empathetech's mission is to rebalance the power in tech by making the tools of the open source community more accessible.
              
And we can't do that if we don't support the open source foundation we're built upon. That's why we're ready to make a couple more commitments:

  1. Regardless of official structure (currently: LLC) Empathetech will operate as a not-for-profit, mission based entity. Meaning...
    a. 100% of net profit derived from our open source ecosystem app(s) will be commited back to the projects they are built upon
    b. 100% of net profit dervied from other products/services (merch, consulting, etc.) will be committed to promoting global equity in tech education

Empathetech takes pride in meeting words with actions, and has pro-actively made it's UI fully open source.
Even if we don't make a cent off publishing EFUI, it can make the internet a more accessible place, and that's enough.""",
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 5,
        titleString: 'Be in the moment',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              """Empathetech is currently building the first module of the open source ecosystem we've talked so much about! Stay tuned!""",
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 6,
        titleString: 'Plan for the future',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              """Empathetech is currently a one person operation. Thanks to automation and hyperfixation, that one person operation is quite efficient and well polished.
But, imagine how much more could be accomplished with the dream of team!
              
You know what that means: marketing! Time to start marketing, get eyeballs on, wallets open, people hired, and changes made!""",
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    ];

    // Build page //

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
                    child: const Text('Then'),
                  )
                ];
              } else if (isLast) {
                return [
                  ElevatedButton(
                    onPressed: details.onStepCancel,
                    child: const Text('Before this'),
                  )
                ];
              } else {
                return [
                  ElevatedButton(
                    onPressed: details.onStepCancel,
                    child: const Text('Before this'),
                  ),
                  EzSpacer.row(buttonSpacer),
                  ElevatedButton(
                    onPressed: details.onStepContinue,
                    child: const Text('Then'),
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

class _PlanStep extends Step {
  final String titleString;
  final TextStyle? titleStyle;
  final Widget? subtitle;
  final List<Widget> contents;
  final StepState state;
  final bool isActive;
  final Widget? label;

  /// Private [Step] wrapper for cleaner code && standardized styling
  _PlanStep({
    required this.titleString,
    required this.titleStyle,
    this.subtitle,
    required this.contents,
    this.state = StepState.indexed,
    this.isActive = false,
    this.label,
  }) : super(
          title: Text(
            titleString,
            style: titleStyle,
            textAlign: TextAlign.left,
          ),
          subtitle: subtitle,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...contents,
              EzSpacer(EzConfig.instance.prefs[buttonSpacingKey]),
            ],
          ),
          state: state,
          isActive: isActive,
          label: label,
        );
}
