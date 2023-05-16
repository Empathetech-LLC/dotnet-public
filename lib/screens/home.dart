import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Set page/tab title //

  @override
  void initState() {
    super.initState();
    setPageTitle(context: context, title: 'Empathetech');
  }

  // Setup background video //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeVideoController();
  }

  late bool isLight = !PlatformTheme.of(context)!.isDark;
  late final VideoPlayerController _videoController;

  void _initializeVideoController() {
    _videoController = VideoPlayerController.asset(
      isLight ? lightLogoVideoPath : darkLogoVideoPath,
      videoPlayerOptions: VideoPlayerOptions(
        allowBackgroundPlayback: false,
        mixWithOthers: false,
      ),
    )..initialize().then((_) {
        setState(() {
          // Required or Chrome will get mad
          _videoController.setVolume(0.0);
        });
      });
  }

  // Build page //

  final double margin = EzConfig.instance.prefs[marginKey];

  late final TextStyle? titleStyle = titleLarge(context);

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        margin: EdgeInsets.zero,
        child: _videoController.value.isInitialized
            ? EzVideoPlayer(
                controller: _videoController,
                iconColor: isLight ? Colors.black : Colors.white,
                sliderVis: ButtonVis.alwaysOff,
                variableVolume: false,
              )
            : Container(),
      ),
      fab: const SettingsFAB(),
    );
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }
}
