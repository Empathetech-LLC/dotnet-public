/* dotnet
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../utils/export.dart';
import '../widgets/export.dart';
import 'package:oui_bios/oui_bios.dart';

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  /// No place like it
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Define the build data //

  bool fin = false;
  int index = 0;

  /// Styles the index buttons based on [index]
  StepStyle? _style(EzCP config, int indexTarget) {
    if (index > indexTarget) {
      // Passed
      return StepStyle(
        color: config.colors.secondary,
        connectorColor: config.colors.secondary,
        border: Border.all(
          color: config.colors.secondaryContainer,
          width: config.borderWidth,
        ),
        indexStyle: config.labelStyle?.copyWith(color: config.colors.onSecondary),
      );
    } else if (index == indexTarget) {
      // Here
      return StepStyle(
        color: config.colors.primary,
        connectorColor: config.colors.secondary,
        border: Border.all(
          color: config.colors.primaryContainer,
          width: config.borderWidth,
        ),
        indexStyle: config.labelStyle?.copyWith(color: config.colors.onPrimary),
      );
    } else {
      // Next
      return StepStyle(
        color: config.colors.surface,
        connectorColor: config.colors.outline,
        indexStyle: config.labelStyle?.copyWith(color: config.colors.onSurface),
      );
    }
  }

  /// Defines [Stepper] navigation buttons
  List<Widget> stepButtons(EzCP config, ControlsDetails details) => switch (details.stepIndex) {
        0 => <Widget>[
            EzTextIconButton(
              config,
              onPressed: details.onStepContinue,
              icon: EzIcon(config, Icons.arrow_downward),
              label: l10n(config).hsmSoWe,
            ),
          ],
        1 => <Widget>[
            EzTextIconButton(
              config,
              onPressed: details.onStepContinue,
              icon: EzIcon(config, Icons.arrow_downward),
              label: l10n(config).hsmBy,
            ),
          ],
        _ => <Widget>[
            EzTextIconButton(
              config,
              onPressed: () => setState(() => index = 0),
              icon: EzIcon(config, Icons.arrow_upward),
              label: l10n(config).hsmFirst,
            ),
          ],
      };

  /// [Step] title wrapper
  Widget _title(String title, TextStyle? style) =>
      Text(title, style: style, textAlign: TextAlign.start);

  /// [Step] content wrapper
  Widget _content(Widget content) => SelectionArea(
        child: Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: content,
        ),
      );

  // Define custom functions //

  /// Decrement, min 0
  void _onStepCancel() {
    if (index > 0) setState(() => index -= 1);
  }

  /// Increment, max 2
  void _onStepContinue() {
    if (index < 2) setState(() => index += 1);
  }

  /// GoTo
  void _onStepTapped(int step) => setState(() => index = step);

  // Init //

  @override
  void initState() {
    super.initState();
    ezWindowNamer(ywt);
  }

  // Return the build //

  @override
  Widget build(BuildContext context) => Consumer<EzCP>(
        builder: (_, EzCP config, __) {
          final Widget logoAnim = LogoAnimation(
            colorScheme: config.colors,
            semantics: l10n(config).hsAnimLabel,
            height: ezTextSize('T\nT', context: context, style: config.displayStyle).height,
            onComplete: () => setState(() => fin = true),
          );
          final Widget slogan = Text(
            'Your Tech\nYour Way',
            textAlign: TextAlign.start,
            style: config.headlineStyle,
          );

          return DotnetScaffold(
            config,
            body: EzScreen(
              config,
              margin: EdgeInsets.zero,
              child: EzScrollView(config, children: <Widget>[
                EzHeader(config),

                // Animated logo && slogan
                Center(
                  child: EzTextBackground(
                    config,
                    text: EzRowCol(
                      row: EzRow(
                        config,
                        reverseHands: false,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[logoAnim, config.rowSpacer, slogan],
                      ),
                      col: EzCol(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[logoAnim, config.spacer, slogan],
                      ),
                    ),
                  ),
                ),
                config.separator,

                EzAnimVis(
                  config,
                  visible: fin,
                  forceFade: true,
                  forceType: EzTransitionType.none,
                  kid: EzCol(children: <Widget>[
                    // How about !(move fast && break things)
                    EzText(
                      config,
                      text: l10n(config).hsChange,
                      textAlign: TextAlign.center,
                      style: ezSubTitleStyle(config.styles),
                    ),
                    config.divider,

                    // Mission
                    EzCol(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stepper(
                          physics: const BouncingScrollPhysics(),
                          stepIconWidth: config.iconSize + config.padding,
                          stepIconHeight: config.iconSize + config.padding,
                          connectorColor: WidgetStateProperty.resolveWith(
                            (Set<WidgetState> states) => (states.contains(WidgetState.selected)
                                ? config.colors.secondary
                                : config.colors.outline),
                          ),
                          steps: <Step>[
                            // Step 1: Identify the problem
                            Step(
                              stepStyle: _style(config, 0),
                              isActive: index >= 0,
                              title: _title(l10n(config).hsmIDProblem, config.titleStyle),
                              content: _content(EzText(
                                config,
                                text: l10n(config).hsmIDProblemContent,
                                style: config.bodyStyle,
                                textAlign: TextAlign.start,
                              )),
                            ),

                            // Step 2: Be a part of the solution
                            Step(
                              stepStyle: _style(config, 1),
                              isActive: index >= 1,
                              title: _title(l10n(config).hsmFindSolution, config.titleStyle),
                              content: _content(EzText(
                                config,
                                text: l10n(config).hsmFindSolutionContent,
                                style: config.bodyStyle,
                                textAlign: TextAlign.start,
                              )),
                            ),

                            // Step 3: Provide value
                            Step(
                              stepStyle: _style(config, 2),
                              isActive: index >= 2,
                              title: _title(l10n(config).hsmProvideValue, config.titleStyle),
                              content: _content(EzRichText(
                                config,
                                children: <InlineSpan>[
                                  EzPlainText(
                                    text: l10n(config).hsmProvideValueContent1,
                                    style: config.bodyStyle,
                                  ),
                                  EzInlineLink(
                                    config,
                                    text: openUI,
                                    style: config.bodyStyle,
                                    textAlign: TextAlign.start,
                                    url: Uri.parse(Products.openUI.url),
                                    hint: l10n(config).gProductsHint,
                                  ),
                                  EzPlainText(
                                    text: l10n(config).hsmProvideValueContent2,
                                    style: config.bodyStyle,
                                  ),
                                ],
                              )),
                            ),
                          ],
                          currentStep: index,
                          onStepCancel: _onStepCancel,
                          onStepContinue: _onStepContinue,
                          onStepTapped: _onStepTapped,
                          controlsBuilder: (_, ControlsDetails details) => Align(
                            alignment: Alignment.centerLeft,
                            child: EzCol(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                config.spacer,
                                EzScrollView(
                                  config,
                                  scrollDirection: Axis.horizontal,
                                  primary: false,
                                  children: stepButtons(config, details),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: config.isLTR ? Alignment.centerLeft : Alignment.centerRight,
                          width: double.infinity,
                          child: EzFooter(config, textAlign: TextAlign.start),
                        ),
                      ],
                    ),
                    EzFooter(config),
                  ]),
                ),
              ]),
            ),
            fabs: <Widget>[config.spacer, SettingsFAB(config)],
            isHome: true,
          );
        },
      );
}
