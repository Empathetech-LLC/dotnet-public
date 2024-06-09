import '../utils/export.dart';
import '../widgets/export.dart';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Gather the theme data //

  late bool isDark = PlatformTheme.of(context)!.isDark;

  late final Lang l10n = Lang.of(context)!;

  // Define the video components //

  late final VideoPlayerController _videoController =
      VideoPlayerController.asset(
    isDark ? darkLogoVideoPath : lightLogoVideoPath,
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
    label: l10n.hsVideoHint,
    child: Chewie(
      key: const ValueKey<String>(logoVideoKey),
      controller: _chewieController,
    ),
  );

  // Set the page title and initialize the video //

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setPageTitle(empathetech);

    setState(() {
      _chewieController.setVolume(0.0);
    });
  }

  // Return the build //

  @override
  Widget build(BuildContext context) {
    return DotnetScaffold(
      body: EzScreen(
        margin: EdgeInsets.zero,
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            // Video
            Positioned.fill(child: _player),

            // Slogan overlay
            Positioned(
              top: EzConfig.get(marginKey),
              child: Text(
                l10n.hsSlogan,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
                semanticsLabel: l10n.hsSloganFix,
              ),
            ),
          ],
        ),
      ),
      fab: SettingsFAB(context: context),
    );
  }

  @override
  void dispose() {
    _videoController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
