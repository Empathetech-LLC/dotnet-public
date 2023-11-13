import '../utils/utils.dart';

import 'package:efui_video_player/efui_video_player.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Set page/tab title and background video //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, "Empathetech");
    _initializeVideoController();
  }

  late bool _isLight = !PlatformTheme.of(context)!.isDark;
  late final VideoPlayerController _videoController;

  void _initializeVideoController() {
    _videoController = VideoPlayerController.asset(
      _isLight ? lightLogoVideoPath : darkLogoVideoPath,
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

  @override
  Widget build(BuildContext context) {
    // Gather theme data //

    final TextStyle? headerStyle = headlineSmall(context);

    // Return the build //

    return DotNetScaffold(
      body: EzScreen(
        margin: EdgeInsets.zero,
        child:
            // At the time of writing, VideoPlayerController does not work on iOS browsers
            (kIsWeb && defaultTargetPlatform == TargetPlatform.iOS)
                ? EzWarning(message: Lang.of(context)!.hsiOSWebVideo)
                : Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      // Video background
                      Positioned.fill(
                        child: _videoController.value.isInitialized
                            ? EzVideoPlayer(
                                controller: _videoController,
                                sliderVis: ButtonVis.alwaysOff,
                                variableVolume: false,
                                iconColor:
                                    _isLight ? Colors.black : Colors.white,
                                semantics: Lang.of(context)!.hsVideoSemantics,
                              )
                            : SizedBox.shrink(),
                      ),

                      // Slogan
                      Positioned(
                        top: EzConfig.instance.prefs[marginKey],
                        child: EzText(
                          Lang.of(context)!.hsSlogan,
                          style: headerStyle,
                        ),
                      ),
                    ],
                  ),
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
