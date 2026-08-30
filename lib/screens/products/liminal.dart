/* website
 * Copyright (c) 2022 YWT (Empathetech LLC). All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:open_ui/open_ui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LiminalScreen extends StatelessWidget {
  const LiminalScreen({super.key});

  @override
  Widget build(BuildContext context) => Consumer<EzCP>(builder: (_, EzCP config, __) {
        final EdgeInsets wrapPadding = EzInsets.wrap(config.spacing);

        return WebsiteScaffold(
          config,
          body: EzScreen(
            config,
            child: EzScrollView(config, children: <Widget>[
              // Headline
              EzLink(
                config,
                text: Products.liminal.name,
                url: Uri.parse(liminalSource),
                hint: l10n(config).gRepoHint,
                style: config.displayStyle,
                textAlign: TextAlign.center,
              ),
              config.centerLine,

              // In dev
              EzRichText(
                config,
                children: <InlineSpan>[
                  EzPlainText(text: l10n(config).llSlogan, style: config.bodyStyle),
                  EzPlainText(text: l10n(config).llDesign, style: config.bodyStyle),
                  EzInlineLink(
                    config,
                    text: Products.openUI.name,
                    url: Uri.parse(Products.openUI.url),
                    hint: l10n(config).gLearn(Products.openUI.name),
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                  EzPlainText(text: '.\n', style: config.bodyStyle),
                  config.richLine,
                  EzPlainText(text: l10n(config).llWhimsy, style: config.bodyStyle),
                ],
                style: config.bodyStyle,
                textAlign: TextAlign.center,
              ),
              config.separator,

              EzWrap(children: <Widget>[
                Tooltip(
                  enableTapToDismiss: false,
                  richMessage: TextSpan(
                    children: <InlineSpan>[
                      EzPlainText(
                        text: l10n(config).gImageCredit(jMuller),
                        style: config.bodyStyle,
                      ),
                      config.richLine,
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        style: config.bodyStyle,
                        child: SelectionArea(
                          child: Text(
                            'https://www.pexels.com/@jmueller/',
                            style: config.bodyStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                    style: config.bodyStyle,
                  ),
                  child: Padding(
                    padding: wrapPadding,
                    child: EzImage(
                      width: ezImageSize(config, context: context) * 1.5,
                      image: cleanNebulaImage,
                      semanticLabel: l10n(config).gImageCredit(jMuller),
                    ),
                  ),
                ),
                Tooltip(
                  enableTapToDismiss: false,
                  richMessage: TextSpan(
                    children: <InlineSpan>[
                      EzPlainText(
                        text: l10n(config).gImageCredit(elinaV),
                        style: config.bodyStyle,
                      ),
                      config.richLine,
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        style: config.bodyStyle,
                        child: SelectionArea(
                          child: Text(
                            'https://www.pexels.com/@miami302/',
                            style: config.bodyStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                    style: config.bodyStyle,
                  ),
                  child: Padding(
                    padding: wrapPadding,
                    child: EzImage(
                      width: ezImageSize(config, context: context) * 1.5,
                      image: duckDuckFetchImage,
                      semanticLabel: l10n(config).gImageCredit(elinaV),
                    ),
                  ),
                ),
                Tooltip(
                  enableTapToDismiss: false,
                  message: l10n(config).gImageCredit(founder),
                  child: Padding(
                    padding: wrapPadding,
                    child: EzImage(
                      width: ezImageSize(config, context: context) * 1.5,
                      image: lasRosasImage,
                      semanticLabel: l10n(config).gImageCredit(founder),
                    ),
                  ),
                ),
                Tooltip(
                  enableTapToDismiss: false,
                  richMessage: TextSpan(
                    children: <InlineSpan>[
                      EzPlainText(
                        text: l10n(config).gImageCredit(flux),
                        style: config.bodyStyle,
                      ),
                      config.richLine,
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        style: config.bodyStyle,
                        child: SelectionArea(
                          child: Text(
                            'https://www.pexels.com/@flux-1140230780/',
                            style: config.bodyStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                    style: config.bodyStyle,
                  ),
                  child: Padding(
                    padding: wrapPadding,
                    child: EzImage(
                      width: ezImageSize(config, context: context) * 1.5,
                      image: natureIsFabImage,
                      semanticLabel: l10n(config).gImageCredit(flux),
                    ),
                  ),
                ),
                Tooltip(
                  enableTapToDismiss: false,
                  message: l10n(config).gImageCredit(founder),
                  child: Padding(
                    padding: wrapPadding,
                    child: EzImage(
                      width: ezImageSize(config, context: context) * 1.5,
                      image: productivityImage,
                      semanticLabel: l10n(config).gImageCredit(founder),
                    ),
                  ),
                ),
                Tooltip(
                  enableTapToDismiss: false,
                  message: l10n(config).gImageCredit(founder),
                  child: Padding(
                    padding: wrapPadding,
                    child: EzImage(
                      width: ezImageSize(config, context: context) * 1.5,
                      image: seaBombCleanerImage,
                      semanticLabel: l10n(config).gImageCredit(founder),
                    ),
                  ),
                ),
                Tooltip(
                  enableTapToDismiss: false,
                  message: l10n(config).gImageCredit(crosby),
                  child: Padding(
                    padding: wrapPadding,
                    child: EzImage(
                      width: ezImageSize(config, context: context) * 1.5,
                      image: theHoodImage,
                      semanticLabel: l10n(config).gImageCredit(crosby),
                    ),
                  ),
                ),
                Tooltip(
                  enableTapToDismiss: false,
                  richMessage: TextSpan(
                    children: <InlineSpan>[
                      EzPlainText(
                        text: l10n(config).gImageCredit(nesrin),
                        style: config.bodyStyle,
                      ),
                      config.richLine,
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        style: config.bodyStyle,
                        child: SelectionArea(
                          child: Text(
                            'https://www.pexels.com/@nesrin-ozturk-213162154/',
                            style: config.bodyStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                    style: config.bodyStyle,
                  ),
                  child: Padding(
                    padding: wrapPadding,
                    child: EzImage(
                      width: ezImageSize(config, context: context) * 1.5,
                      image: twoDoorsImage,
                      semanticLabel: l10n(config).gImageCredit(nesrin),
                    ),
                  ),
                ),
              ]),
              config.separator,

              // Availability
              EzRichText(
                config,
                children: <InlineSpan>[
                  EzPlainText(text: l10n(config).llModel, style: config.bodyStyle),
                  EzInlineLink(
                    config,
                    text: 'Google Play',
                    url: Uri.parse(
                        'https://play.google.com/store/apps/details?id=llc.ywt.liminal_launcher'),
                    hint: l10n(config).gLearn('Liminal'),
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                  EzPlainText(text: l10n(config).llPaid, style: config.bodyStyle),
                  EzInlineLink(
                    config,
                    text: l10n(config).llGit,
                    url: Uri.parse('https://github.com/YWT-LLC/liminal_launcher/releases'),
                    hint: l10n(config).gRepoHint,
                    style: config.bodyStyle,
                    textAlign: TextAlign.center,
                  ),
                  EzPlainText(text: l10n(config).llFree, style: config.bodyStyle),
                ],
                textAlign: TextAlign.center,
                style: config.bodyStyle,
              ),
              EzFooter(config),
            ]),
          ),
          fabs: <Widget>[config.spacer, SettingsFAB(config)],
        );
      });
}
