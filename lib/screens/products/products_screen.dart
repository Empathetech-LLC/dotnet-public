/* dotnet
 * Copyright (c) 2025 Empathetech LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

import './export.dart';
import '../../utils/export.dart';
import '../../widgets/export.dart';

import 'package:flutter/material.dart';
import 'package:after_layout/after_layout.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

enum Products { openUI, sos, smokeSignal }

extension Path on Products {
  String get path {
    switch (this) {
      case Products.openUI:
        return 'open-ui';
      case Products.sos:
        return 'sos';
      case Products.smokeSignal:
        return 'smoke-signal';
    }
  }
}

const String _creator = 'creator';
const String _user = 'user';

extension Type on Products {
  String get type {
    switch (this) {
      case Products.openUI:
        return _creator;
      case Products.sos:
      case Products.smokeSignal:
        return _user;
    }
  }
}

class ProductsScreen extends StatefulWidget {
  final Products? target;

  /// Do you like stuff? We got stuff!
  const ProductsScreen({super.key, this.target});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with AfterLayoutMixin<ProductsScreen> {
  // Gather the theme data //

  late final TextTheme textTheme = Theme.of(context).textTheme;

  late final Lang l10n = Lang.of(context)!;

  // Define the build data //

  final GlobalKey signalKey = GlobalKey();
  late String currentTab = widget.target?.type ??
      (EzConfig.get(showDevProducts) == true ? _creator : _user);

  // Init //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ezWindowNamer(context, l10n.psPageTitle);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    // Scroll to Smoke Signal if it's the target
    if (widget.target == Products.smokeSignal) {
      WidgetsBinding.instance.addPostFrameCallback(
          (_) => Scrollable.ensureVisible(signalKey.currentContext!));
    }
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        useImageDecoration: false,
        child: EzScrollView(
          children: <Widget>[
            // Mode switch
            SegmentedButton<String>(
              segments: <ButtonSegment<String>>[
                ButtonSegment<String>(
                  value: _creator,
                  label: Text(l10n.psCreator, textAlign: TextAlign.center),
                ),
                ButtonSegment<String>(
                  value: _user,
                  label: Text(l10n.psUser, textAlign: TextAlign.center),
                ),
              ],
              selected: <String>{currentTab},
              showSelectedIcon: false,
              onSelectionChanged: (Set<String> selected) async {
                switch (selected.first) {
                  case _creator:
                    currentTab = _creator;
                    await EzConfig.setBool(showDevProducts, true);
                    break;
                  case _user:
                    currentTab = _user;
                    await EzConfig.setBool(showDevProducts, false);
                    break;
                }
                setState(() {});
              },
            ),
            const EzSpacer(),

            // Core view
            if (currentTab == _creator)
              const CreatorProducts()
            else
              UserProducts(
                textTheme: textTheme,
                l10n: l10n,
                signalKey: signalKey,
              ),
            const EzSeparator(),

            // Include when AI translations have not been human verified
            const EzTranslationsPendingNotice(),
          ],
        ),
      ),
      fab: SettingsFAB(context),
    );
  }
}
