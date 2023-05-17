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

  int _index = 5; // Sustainability

  final double margin = EzConfig.instance.prefs[marginKey];
  final double buttonSpacer = EzConfig.instance.prefs[buttonSpacingKey];
  final double paragraphSpacer = EzConfig.instance.prefs[paragraphSpacingKey];

  late final Color? buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? titleStyle = headlineSmall(context);

  late final TextStyle? contentStyle = titleMedium(context);
  late final TextStyle? contentLinkStyle = contentStyle?.copyWith(
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
              '''Much of the technology of today is specifically designed to manipulate its users. To the extent that many people, the founder of Empathetech very much included, don't feel comfortable around their own devices.

Fortunately, there's an amazing community of people working together to put the power in the hands of the consumer.''',
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
              '''The most we can all do is our best. Empathetech is the manifestation of that for its founder. He's excelled at many things, but always at least two: putting himself in other's shoes, and dying on every. single. hill.

What does that mean in this context? It means Empathetech will build slow and fix things. Empathetech will take the time to do it right. And once we figure it out, we're not going to be shy about what we've learned.

Because knowledge is one of the few things we can give without losing. And because not everyone is born with the same head start.''',
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 2,
        titleString: 'Stay focussed',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              '''Good marketing material is general. Good actions are specific. What will Empathetech actually DO?''',
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 3,
        titleString: 'Start small',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              '''The founder found himself not texting his friends enough to see if they wanted to hop on games or go for a walk together.

He has also long been a low/no social media person, because he doesn't believe communication should be for profit.

But, he's wanted to be an inventor since he was a kid, not a social media CEO.

So, make a social media app that is designed to be self hosted. Build the app well so it doesn't have to be micromanaged. Then share everything so that the possibilities are actually limitless. In marketing material and in real life.''',
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 4,
        titleString: 'Smoke Signal && EFUI',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              '''Smoke Signal is the app to solve that small problem. EFUI is the library Empathetech built to create apps with a user-first design.

EFUI is where the real momentum begins. Empathetech's true focus is to create a world where everyone can become who they dreamed of being.

No person or entity will be able to block or tear you from your path, because there will always be a worldwide community of people who want to see what you're capable of.

Big task huh? Yes and no. Not if we share the burden. Empathetech can invent new technology to empower our creatives, then commit its surplus to the educators inspiring them. But more on that later.''',
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 5,
        titleString: 'Sustainability',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              '''Breaking the fourth wall here: as of right now, "Empathetech" is just one guy. That one guy has a hell of a lot to keep track of.

Luckily, in a past life, he was a DevOps engineer. So, Empathetech is going to take a beat and build systems for sustainably running the company with a single operator.''',
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 6,
        titleString: 'The near future',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              '''Please read the following to yourself in a Pinocchio style voice:

I wanna be a real company!

Once Empathetech can efficiently be run by one person, imagine how much more work could be done with more people!

The aim is to create a desktop tool with Flutter (and EFUI of course) that manages all the self-hosted wiki's, CI/CD pipelines, Activity Pub servers, etc. that Empathetech uses.

Once that's done, Empathetech will officially have a little ecosystem. A fully fork-able ecosystem for an entirely self-hosted tech company.

Empathetech as a service, if you will. That feels like a product one could easily market once it exists.

Thus leading into the true near future: marketing!

Let's get the marketing rolling, so we can get eyeballs on, wallets open, people hired, and changes made!''',
              style: contentStyle,
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 7,
        titleString: 'The medium future',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText.rich(
              TextSpan(children: [
                TextSpan(
                  text: 'Build Empathetech to be a ',
                  style: contentStyle,
                ),
                EzWebLink(
                  text: 'Certified B Corp',
                  style: contentLinkStyle,
                  recognizer: EzWebLink.onTap(
                    url: Uri.parse(
                        'https://www.bcorporation.net/en-us/certification/'),
                  ),
                ),
                TextSpan(
                  text:
                      ''', committing its profits to equity in tech education.''',
                  style: contentStyle,
                ),
              ]),
              textAlign: TextAlign.left,
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
      _PlanStep(
        isActive: _index >= 8,
        titleString: 'The far future',
        titleStyle: titleStyle,
        contents: [
          Container(
            child: EzSelectableText(
              '''Work healthier hours and make more cool stuff!

Some ideas we have cooking already:
  - Companion hardware for Smoke Signal, to be a free and Open Source competitor in the hardware messaging space (work has already started on Raspberry Pi code && 3D printing models!)
  - Publish schematics for custom (upgraded) Clone Hero controllers
  - Merch! Gotta have merch!
  - Potentially: EFUI powered free and Open Source calorie tracker (you're more than welcome to beat us to this)

When we get a physical location...
  - Clone Hero Karaoke nights!
  - We print, you paint, DnD figurine wine and paint nights for you and your campaign!
  - Regular educational live streams
''',
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
