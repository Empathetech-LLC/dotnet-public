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
    setPageTitle(context: context, title: 'Founder');
  }

  // Gather theme data //

  final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];

  // Build page //

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
