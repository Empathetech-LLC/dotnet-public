import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';

class FoldingScreen extends StatefulWidget {
  const FoldingScreen({Key? key}) : super(key: key);

  @override
  _FoldingScreenState createState() => _FoldingScreenState();
}

class _FoldingScreenState extends State<FoldingScreen> {
  // Set page/tab title //

  @override
  void initState() {
    super.initState();
    setPageTitle(context: context, title: 'F@H');
  }

  // Gather theme data //

  final double padding = EzConfig.instance.prefs[paddingKey];
  final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];

  late final Color? buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? questionStyle =
      titleLarge(context)?.copyWith(fontWeight: FontWeight.bold);

  late final TextStyle? answerStyle = bodyLarge(context);
  late final TextStyle? answerLinkStyle = answerStyle?.copyWith(
    color: buttonColor,
    decoration: TextDecoration.underline,
  );

  // Build page //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: EzScrollView(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Q1 => What?
            EzSelectableText(
              'What is Folding@home?',
              style: questionStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(padding),
            EzSelectableText(
              '''Folding@home allows you to donate your idle compute power to medical research. For example, the development of new vaccines.''',
              style: answerStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(spacer),

            // Q2 => Why?
            EzSelectableText(
              'Why should I participate?',
              style: questionStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(padding),
            EzSelectableText.rich(
              TextSpan(children: [
                TextSpan(
                  text:
                      '''For anyone with a desktop computer that stays on, this is a fun and easy form of charity. By simply giving a few dollars on your electricity bill, it can combine to become the''',
                  style: answerStyle,
                ),
                EzWebLink(
                  text: 'world’s largest supercomputer.',
                  recognizer: EzWebLink.onTap(
                    url: Uri.parse(
                      'https://www.tomshardware.com/news/folding-at-home-worlds-top-supercomputers-coronavirus-covid-19',
                    ),
                  ),
                  style: answerLinkStyle,
                ),
                TextSpan(
                  text:
                      ''' Not to mention, for us renters, in the colder months it can be a mutually beneficial apartment heating solution!
   
NOTE: Again, shout-out to: desktop computer. Mobile devices should not be used for Folding@home''',
                  style: answerStyle,
                ),
              ]),
              textAlign: TextAlign.left,
            ),
            EzSpacer(spacer),

            // Q3 => How?
            EzSelectableText(
              'How do I participate?',
              style: questionStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(padding),
            EzSelectableText.rich(
              TextSpan(children: [
                TextSpan(
                  text: 'To participate in Folding@home, you will need to ',
                  style: answerStyle,
                ),
                EzWebLink(
                  text: 'download and install',
                  recognizer: EzWebLink.onTap(
                    url: Uri.parse(
                        'https://foldingathome.org/start-folding/?lng=en-US'),
                  ),
                  style: answerLinkStyle,
                ),
                TextSpan(
                  text:
                      ''' the Folding@home client. With client on in the background, when your OS marks the computer as idle you'll automatically begin folding! You can choose to participate as an individual, or join a team to combine your accomplishments.''',
                  style: answerStyle,
                ),
              ]),
              textAlign: TextAlign.left,
            ),
            EzSpacer(spacer),

            // Q4 => Teams
            EzSelectableText(
              'How do I join a team?',
              style: questionStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(padding),
            EzSelectableText.rich(
              TextSpan(children: [
                TextSpan(
                  text:
                      'During the Folding@home client installation, you can join a team by entering the team number or name. You can also join a team by visiting the Folding@home website and clicking on the "Join a Team" button. Empathetech is ',
                  style: answerStyle,
                ),
                EzWebLink(
                  text: 'team #1063265',
                  recognizer: EzWebLink.onTap(
                    url: Uri.parse(EmpathetechFoldingTeam),
                  ),
                  style: answerLinkStyle,
                ),
              ]),
              textAlign: TextAlign.left,
            ),
            EzSpacer(spacer),

            // Q5 => Safety
            EzSelectableText(
              'Is participating in Folding@home safe?',
              style: questionStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(padding),
            EzSelectableText(
              '''Yes, participating in Folding@home is safe. The client is designed to use only the idle processing power of your computer, and will not interfere with normal use, and does not collect personal data.''',
              style: answerStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(spacer),

            // Q6 => Projects
            EzSelectableText(
              'Can I choose which research projects my computer works on?',
              style: questionStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(padding),
            EzSelectableText(
              'Yes, you can choose which research projects you contribute to through the Folding@home client. You can select a specific project, or you can choose to work on the highest priority tasks.',
              style: answerStyle,
              textAlign: TextAlign.left,
            ),
            EzSpacer(spacer),
          ],
        ),
      ),
      fab: const SettingsFAB(),
    );
  }
}
