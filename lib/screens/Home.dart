import '../utils/utils.dart';

import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Gather the theme data //

  late bool _isLight = !PlatformTheme.of(context)!.isDark;

  late final TextStyle? _headerStyle = headlineSmall(context);

  // Define the video components //

  late final VideoPlayerController _videoController =
      VideoPlayerController.asset(
    _isLight ? lightLogoVideoPath : darkLogoVideoPath,
    videoPlayerOptions: VideoPlayerOptions(
      allowBackgroundPlayback: false,
      mixWithOthers: false,
    ),
  );

  late final ChewieController _chewieController = ChewieController(
    videoPlayerController: _videoController,
    autoPlay: true,
    looping: false,
    showControlsOnInitialize: false,
    allowPlaybackSpeedChanging: false,
  );

  late final Widget _player = Semantics(
    image: true,
    link: false,
    label: Lang.of(context)!.hsVideoSemantics,
    child: Chewie(controller: _chewieController),
  );

  // Set the page title and initialize the video //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(context, empathetech);

    setState(() {
      _chewieController.setVolume(0.0);
    });
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotNetScaffold(
      body: EzScreen(
        margin: EdgeInsets.zero,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            // Video
            Positioned.fill(child: _player),

            // Slogan overlay
            Positioned(
              top: EzConfig.get(marginKey),
              child: Text(
                Lang.of(context)!.hsSlogan,
                style: _headerStyle,
                textAlign: TextAlign.center,
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
    _chewieController.dispose();
    super.dispose();
  }
}
