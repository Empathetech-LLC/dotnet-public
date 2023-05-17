import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'dart:math';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  // Set page/tab title && initialize tab page //
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: 2,
      vsync: this,
    );

    setPageTitle(context: context, title: 'Products');
  }

  // Gather theme data //

  late final Color? buttonColor = Theme.of(context).highlightColor;

  late final TextStyle? headingStyle = headlineSmall(context);
  late final TextStyle? headingLinkStyle = headingStyle?.copyWith(
    decoration: TextDecoration.underline,
  );

  late final TextStyle? descriptorStyle = titleLarge(context);
  late final TextStyle? descriptorLinkStyle = descriptorStyle?.copyWith(
    color: buttonColor,
    decoration: TextDecoration.underline,
  );

  late final TextStyle? contentStyle = bodyLarge(context);
  late final TextStyle? contentLinkStyle = contentStyle?.copyWith(
    color: buttonColor,
    decoration: TextDecoration.underline,
  );

  // Build page(s) //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        child: TabBarView(
          controller: _tabController,
          children: [
            _AppScreen(
              headingStyle: headingStyle,
              headingLinkStyle: headingLinkStyle,
              descriptorStyle: descriptorStyle,
              descriptorLinkStyle: descriptorLinkStyle,
              contentStyle: contentStyle,
              contentLinkStyle: contentLinkStyle,
            ),
            _OpenSourceScreen(
              headingStyle: headingStyle,
              headingLinkStyle: headingLinkStyle,
              descriptorStyle: descriptorStyle,
              descriptorLinkStyle: descriptorLinkStyle,
              contentStyle: contentStyle,
              contentLinkStyle: contentLinkStyle,
            ),
          ],
        ),
      ),
      tabBar: TabBar(
        controller: _tabController,
        tabs: [
          const Tab(text: 'Apps'),
          const Tab(text: 'Open Source'),
        ],
      ),
      fab: const SettingsFAB(),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class _AppScreen extends StatelessWidget {
  final TextStyle? headingStyle;
  final TextStyle? headingLinkStyle;
  final TextStyle? descriptorStyle;
  final TextStyle? descriptorLinkStyle;
  final TextStyle? contentStyle;
  final TextStyle? contentLinkStyle;

  /// Private class for faster builds on the main [ProductsScreen]
  /// Pass all [TextStyle]s as parameters so the constructor *can* be const
  const _AppScreen({
    required this.headingStyle,
    required this.headingLinkStyle,
    required this.descriptorStyle,
    required this.descriptorLinkStyle,
    required this.contentStyle,
    required this.contentLinkStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double padding = EzConfig.instance.prefs[paddingKey];
    final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];

    bool limitedSpace = LayoutSize.of(context)?.isLimited ?? false;

    return EzScrollView(
      children: [
        // Smoke Signal //

        // Header
        EzRowCol(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          limitedSpace: limitedSpace,
          children: [
            // Logo
            CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundImage: AssetImage(smokeSignalPath),
              radius: CircleAvatarRadius *
                  sqrt(MediaQuery.of(context).textScaleFactor),
            ),
            EzSpacer.swap(spacer, limitedSpace: limitedSpace),

            // Info
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                EzSelectableText(
                  'Smoke Signal',
                  style: headingStyle,
                ),
                EzSpacer(padding),

                // Links
                EzSelectableText.rich(TextSpan(children: [
                  TextSpan(
                    text: 'Check it out on ',
                    style: descriptorStyle,
                  ),
                  EzWebLink(
                    text: 'GitHub\n',
                    recognizer: EzWebLink.onTap(
                      url: Uri.parse(
                          'https://github.com/Empathetech-LLC/smoke_signal'),
                    ),
                    style: descriptorLinkStyle,
                  ),
                ])),
              ],
            ),
          ],
        ),
        EzSpacer(spacer),

        // Description
        EzSelectableText.rich(TextSpan(children: [
          TextSpan(
            text:
                '''Smoke Signal is a group activities social media app without the price tag of your data or privacy.

Smoke Signal is highly user accessible and customizable, much like the web-app you're using right now, thanks to the Empathetech Flutter UI package. Currently, Smoke Signal is build-able on Android and iOS, but we're looking to expand to Web, Widows, MacOS, and Linux ASAP. Smoke Signal's backend runs on Firebase, but we've also got plans to update to Activity Pub for true self-hosting, ''',
            style: contentStyle,
          ),
          EzWebLink(
            text: 'fediverse',
            recognizer: EzWebLink.onTap(
              url: Uri.parse('https://en.wikipedia.org/wiki/Fediverse'),
            ),
            style: contentLinkStyle,
          ),
          TextSpan(
            text: ''' goodness.

Inside the app, members can create Signals that send a notification to everyone in the group when a user becomes active. The notification is sender anonymous and its description/payload/message/etc is entirely up to the group. It's like lighting a signal fire - you get a lot of information the moment you see it, but you won't get the full picture until you show up yourself. On top of activity notifications being fully customizable: Smoke Signal has zero automated notifications. The only time you'll get a ping is when a fellow member wants you to.

Why not light your first Signal? And see what other products we have that put you in control. We're not FAANG, we don't bite.''',
            style: contentStyle,
          )
        ])),
        EzSpacer(spacer),
      ],
    );
  }
}

class _OpenSourceScreen extends StatelessWidget {
  final TextStyle? headingStyle;
  final TextStyle? headingLinkStyle;
  final TextStyle? descriptorStyle;
  final TextStyle? descriptorLinkStyle;
  final TextStyle? contentStyle;
  final TextStyle? contentLinkStyle;

  const _OpenSourceScreen({
    required this.headingStyle,
    required this.headingLinkStyle,
    required this.descriptorStyle,
    required this.descriptorLinkStyle,
    required this.contentStyle,
    required this.contentLinkStyle,
  });

  @override
  Widget build(BuildContext context) {
    final double padding = EzConfig.instance.prefs[paddingKey];
    final double spacer = EzConfig.instance.prefs[paragraphSpacingKey];

    return EzScrollView(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // EFUI //

        // Title
        EzSelectableText.rich(
          EzWebLink(
            text: 'Empathetech Flutter UI',
            recognizer: EzWebLink.onTap(
              url: Uri.parse('https://pub.dev/packages/empathetech_flutter_ui'),
            ),
            style: headingLinkStyle,
          ),
          textAlign: TextAlign.left,
        ),
        EzSpacer(padding),

        // Description
        EzSelectableText(
          'EFUI is a Flutter library for quickly building platform aware, user accessible, and customizable UIs. This very site (web-app) was built using EFUI! With EFUI, there\'s very little in the way of a good idea becoming a great product.',
          style: contentStyle,
          textAlign: TextAlign.left,
        ),
        EzSpacer(spacer),

        // SS API //

        // Title
        EzSelectableText.rich(
          EzWebLink(
            text: 'Empathetech SS API',
            recognizer: EzWebLink.onTap(
              url: Uri.parse('https://pub.dev/packages/empathetech_ss_api'),
            ),
            style: headingLinkStyle,
          ),
          textAlign: TextAlign.left,
        ),
        EzSpacer(padding),

        // Description
        EzSelectableText.rich(
          TextSpan(children: [
            TextSpan(
              text:
                  'The SS API is simply all of Smoke Signal\'s backend (currently Firebase) code made public! We try to split everything at Empathetech into good, ',
              style: contentStyle,
            ),
            EzWebLink(
              text: 'fork-able',
              recognizer: EzWebLink.onTap(
                url: Uri.parse(
                    'https://docs.github.com/en/get-started/quickstart/fork-a-repo'),
              ),
              style: contentLinkStyle,
            ),
            TextSpan(
              text: ' pieces.',
              style: contentStyle,
            ),
          ]),
          textAlign: TextAlign.left,
        ),
        EzSpacer(spacer),
      ],
    );
  }
}
