/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import '../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

class ErrorScreen extends StatefulWidget {
  final GoException? error;

  const ErrorScreen(this.error, {super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  // Gather the theme data //

  static const EzSeparator separator = EzSeparator();

  late final EFUILang l10n = ezL10n(context);

  late final TextTheme textTheme = Theme.of(context).textTheme;

  // Set the page title //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, '404 ${l10n.gError}');
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        Center(
          child: EzScrollView(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                l10n.g404Wonder,
                style: ezSubTitleStyle(textTheme),
                textAlign: TextAlign.center,
              ),
              const EzSpacer(),
              Text(
                l10n.g404,
                style: textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              separator,
              Text(
                l10n.g404Note,
                style: textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              separator,
            ],
          ),
        ),
        useImageDecoration: false,
      ),
      fab: SettingsFAB(context),
    );
  }
}
