import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class EmpathetechLogoAnimation extends StatefulWidget {
  const EmpathetechLogoAnimation({super.key});

  @override
  State<EmpathetechLogoAnimation> createState() => _AnimationState();
}

class _AnimationState extends State<EmpathetechLogoAnimation>
    with TickerProviderStateMixin {
  // Define animation data //

  late AnimationController vLinesControl;
  late Animation<double> vLinesAnimate;

  late AnimationController hLinesControl;
  late Animation<double> hLinesAnimate;

  late AnimationController dLinesControl;
  late Animation<double> dLinesAnimate;

  late AnimationController readMeControl;
  late Animation<double> readMeAnimate;

  late AnimationController fold1Control;
  late Animation<double> fold1Animate;

  late AnimationController fold2Control;
  late Animation<double> fold2Animate;

  late AnimationController fold3Control;
  late Animation<double> fold3Animate;

  late AnimationController fold4Control;
  late Animation<double> fold4Animate;

  late AnimationController fold5Control;
  late Animation<double> fold5Animate;

  late AnimationController waitForItControl;
  late Animation<double> waitForItAnimate;

  late AnimationController expandControl;
  late Animation<double> expandAnimate;

  late AnimationController witnessMeControl;
  late Animation<double> witnessMeAnimate;

  // Init //

  @override
  void initState() {
    super.initState();

    vLinesControl = AnimationController(
      duration: const Duration(milliseconds: 1250),
      vsync: this,
    );
    vLinesAnimate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: vLinesControl,
      curve: Curves.easeInOut,
    ));

    hLinesControl = AnimationController(
      duration: const Duration(milliseconds: 1250),
      vsync: this,
    );
    hLinesAnimate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: hLinesControl,
      curve: Curves.easeInOut,
    ));

    dLinesControl = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    dLinesAnimate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: dLinesControl,
      curve: Curves.easeInOut,
    ));

    readMeControl = AnimationController(
      duration: const Duration(milliseconds: 1250),
      vsync: this,
    );
    readMeAnimate = Tween<double>(begin: 0, end: 1).animate(readMeControl);

    fold1Control = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    fold1Animate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: fold1Control,
      curve: Curves.easeInSine,
    ));

    fold2Control = AnimationController(
      duration: const Duration(milliseconds: 1250),
      vsync: this,
    );
    fold2Animate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: fold2Control,
      curve: Curves.easeInSine,
    ));

    fold3Control = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    fold3Animate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: fold3Control,
      curve: Curves.easeInSine,
    ));

    fold4Control = AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this,
    );
    fold4Animate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: fold4Control,
      curve: Curves.easeInSine,
    ));

    fold5Control = AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this,
    );
    fold5Animate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: fold5Control,
      curve: Curves.easeInSine,
    ));

    waitForItControl = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
    waitForItAnimate =
        Tween<double>(begin: 0, end: 1).animate(waitForItControl);

    expandControl = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    expandAnimate = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: expandControl,
      curve: Curves.easeIn,
    ));

    witnessMeControl = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    witnessMeAnimate = Tween<double>(begin: 0, end: 1).animate(
      witnessMeControl,
    );

    // Order //

    vLinesControl.forward().whenComplete(() {
      hLinesControl.forward().whenComplete(() {
        dLinesControl.forward().whenComplete(() {
          readMeControl.forward().whenComplete(() {
            fold1Control.forward().whenComplete(() {
              fold2Control.forward().whenComplete(() {
                fold3Control.forward().whenComplete(() {
                  fold4Control.forward().whenComplete(() {
                    fold5Control.forward().whenComplete(() {
                      waitForItControl.forward().whenComplete(() {
                        expandControl.forward().whenComplete(() {
                          witnessMeControl.forward();
                        });
                      });
                    });
                  });
                });
              });
            });
          });
        });
      });
    });
  }

  // Build //

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge(
        <Animation<double>>[
          vLinesAnimate,
          hLinesAnimate,
          dLinesAnimate,
          readMeAnimate,
          fold1Animate,
          fold2Animate,
          fold3Animate,
          fold4Animate,
          fold5Animate,
          waitForItAnimate,
          expandAnimate,
          witnessMeAnimate,
        ],
      ),
      builder: (_, __) {
        return CustomPaint(
          painter: LinePainter(
            colorScheme: Theme.of(context).colorScheme,
            isDark: PlatformTheme.of(context)!.isDark,
            vLinesProgress: vLinesAnimate.value,
            hLinesProgress: hLinesAnimate.value,
            dLinesProgress: dLinesAnimate.value,
            readMeProgress: readMeAnimate.value,
            fold1Progress: fold1Animate.value,
            fold2Progress: fold2Animate.value,
            fold3Progress: fold3Animate.value,
            fold4Progress: fold4Animate.value,
            fold5Progress: fold5Animate.value,
            expandProgress: expandAnimate.value,
            witnessMeProgress: witnessMeAnimate.value,
          ),
        );
      },
    );
  }

  // Dispose //

  @override
  void dispose() {
    vLinesControl.dispose();
    hLinesControl.dispose();
    dLinesControl.dispose();
    readMeControl.dispose();
    fold1Control.dispose();
    fold2Control.dispose();
    fold3Control.dispose();
    fold4Control.dispose();
    fold5Control.dispose();
    expandControl.dispose();
    witnessMeControl.dispose();
    super.dispose();
  }
}

class LinePainter extends CustomPainter {
  final ColorScheme colorScheme;
  final bool isDark;
  final double vLinesProgress;
  final double hLinesProgress;
  final double dLinesProgress;
  final double readMeProgress;
  final double fold1Progress;
  final double fold2Progress;
  final double fold3Progress;
  final double fold4Progress;
  final double fold5Progress;

  final double expandProgress;
  final double witnessMeProgress;

  LinePainter({
    required this.colorScheme,
    required this.isDark,
    required this.vLinesProgress,
    required this.hLinesProgress,
    required this.dLinesProgress,
    required this.readMeProgress,
    required this.fold1Progress,
    required this.fold2Progress,
    required this.fold3Progress,
    required this.fold4Progress,
    required this.fold5Progress,
    required this.expandProgress,
    required this.witnessMeProgress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Define shared art //

    /// Shared painter: rounded with 2.5 stroke width
    Paint paint(Color color) {
      return Paint()
        ..color = color
        ..isAntiAlias = true
        ..strokeWidth = 3
        ..strokeCap = StrokeCap.round
        ..strokeJoin = StrokeJoin.round;
    }

    final Color v2Color = isDark ? colorScheme.primary : colorScheme.tertiary;
    final Color dColor = isDark ? colorScheme.tertiary : colorScheme.primary;

    // Calculate useful/shared values //

    /// Letter size
    /// 11 letters, 10 spaces @ 0.4x letter width
    /// Use the center 2/3 of the screen to create focus
    final double letS = (size.width * (2 / 3)) / 15;

    /// Space ==  @ 0.4x letter size
    final double space = letS * 0.4;

    /// Half letter size
    double hLet = letS / 2;
    if (expandProgress > 0) hLet = hLet * (1 + 3 * expandProgress);

    /// Space from "this" to the next letter
    final double nextLetter = space + letS;

    final double centerX = size.width / 2;
    final double centerY = size.height / 2;

    /// X position for left letter line
    final double leftLet = centerX - hLet;

    /// X position for right letter line
    final double rightLet = centerX + hLet;

    /// Y position for top letter line
    final double topLet = centerY - hLet;

    /// Y position for bottom letter line
    final double bottomLet = centerY + hLet;

    // Calculate useful/shared animation positions //

    final double upYStart = size.height - topLet * vLinesProgress;
    final double upYEnd = size.height - bottomLet * vLinesProgress;

    final double downYStart = topLet * vLinesProgress;
    final double downYEnd = bottomLet * vLinesProgress;

    /// Supports shrink modifier, both axes
    double supShrink(double progress) {
      return (hLet * progress) / 2;
    }

    final bool hReady = hLinesProgress > 0;
    final bool dReady = dLinesProgress > 0;

    // Animate E & M at the bottom because they should be on top //

    // Animate P //

    final double pLX = leftLet - 3 * nextLetter;
    final double pRX = rightLet - 3 * nextLetter;

    // Left vertical
    final double pLVAnim = pLX + (leftLet - pLX) * fold3Progress;

    canvas.drawLine(
      Offset(
        pLVAnim + supShrink(fold3Progress),
        downYStart + supShrink(fold3Progress),
      ),
      Offset(
        pLVAnim + supShrink(fold3Progress),
        downYEnd - supShrink(fold3Progress),
      ),
      paint(v2Color),
    );

    // Right (half) vertical
    final double pRVAnim = pRX + (rightLet - pRX) * fold3Progress;

    canvas.drawLine(
      Offset(pRVAnim - supShrink(fold3Progress), upYStart - hLet),
      Offset(
        pRVAnim - supShrink(fold3Progress),
        upYEnd + supShrink(fold3Progress),
      ),
      paint(v2Color),
    );

    // Top horizontal
    if (hReady) {
      canvas.drawLine(
        Offset(
          pLX * hLinesProgress + (leftLet - pLX) * fold3Progress,
          topLet,
        ),
        Offset(
          pRX * hLinesProgress + (rightLet - pRX) * fold3Progress,
          topLet,
        ),
        paint(colorScheme.onSurface),
      );

      // Center horizontal
      final double pCXStart = size.width - (size.width - pLX) * hLinesProgress;
      final double pCXEnd = size.width - (size.width - pRX) * hLinesProgress;

      canvas.drawLine(
        Offset(
          pCXStart + (centerX - pCXStart) * fold3Progress,
          centerY,
        ),
        Offset(
          pCXEnd + (centerX - pCXEnd) * fold3Progress,
          centerY,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Animate A //

    final double aLX = leftLet - 2 * nextLetter;
    final double aRX = rightLet - 2 * nextLetter;

    // Left vertical
    final double aLVAnim = aLX + (leftLet - aLX) * fold4Progress;

    canvas.drawLine(
      Offset(
        aLVAnim + supShrink(fold4Progress),
        downYStart + supShrink(fold4Progress),
      ),
      Offset(
        aLVAnim + supShrink(fold4Progress),
        downYEnd - supShrink(fold4Progress),
      ),
      paint(v2Color),
    );

    // Right vertical
    final double aRVAnim = aRX + (rightLet - aRX) * fold4Progress;

    canvas.drawLine(
      Offset(
        aRVAnim - supShrink(fold4Progress),
        upYStart - supShrink(fold4Progress),
      ),
      Offset(
        aRVAnim - supShrink(fold4Progress),
        upYEnd + supShrink(fold4Progress),
      ),
      paint(v2Color),
    );

    // Top horizontal
    if (hReady) {
      canvas.drawLine(
        Offset(
          aLX * hLinesProgress + (leftLet - aLX) * fold4Progress,
          topLet,
        ),
        Offset(
          aRX * hLinesProgress + (rightLet - aRX) * fold4Progress,
          topLet,
        ),
        paint(colorScheme.onSurface),
      );

      // Center horizontal
      final double aCXStart = size.width - (size.width - aLX) * hLinesProgress;
      final double aCXEnd = size.width - (size.width - aRX) * hLinesProgress;

      canvas.drawLine(
        Offset(
          aCXStart + (centerX - aCXStart) * fold4Progress,
          centerY,
        ),
        Offset(
          aCXEnd + (centerX - aCXEnd) * fold4Progress,
          centerY,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Animate T //

    final double tLX = leftLet - nextLetter;
    final double tMX = centerX - nextLetter;
    final double tRX = rightLet - nextLetter;

    final double tVAnim = tMX + (centerX - tMX) * fold5Progress;

    // Center vertical
    canvas.drawLine(
      Offset(tVAnim, downYStart),
      Offset(tVAnim, downYEnd),
      paint(colorScheme.secondary),
    );

    // Top horizontal
    if (hReady) {
      canvas.drawLine(
        Offset(
          tLX * hLinesProgress + (leftLet - tLX) * fold5Progress,
          topLet,
        ),
        Offset(
          tRX * hLinesProgress + (rightLet - tRX) * fold5Progress,
          topLet,
        ),
        paint(colorScheme.onSurface),
      );

      // Animate H //

      // Center horizontal
      final double hCXStart =
          size.width - (size.width - leftLet) * hLinesProgress;
      final double hCXEnd =
          size.width - (size.width - rightLet) * hLinesProgress;

      canvas.drawLine(
        Offset(
          hCXStart + (centerX - hCXStart) * fold1Progress,
          centerY,
        ),
        Offset(
          hCXEnd + (centerX - hCXEnd) * fold1Progress,
          centerY,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Left vertical
    canvas.drawLine(
      Offset(
        leftLet + supShrink(fold2Progress),
        upYStart - supShrink(fold2Progress),
      ),
      Offset(
        leftLet + supShrink(fold2Progress),
        upYEnd + supShrink(fold2Progress),
      ),
      paint(v2Color),
    );

    // Right vertical
    canvas.drawLine(
      Offset(
        rightLet - supShrink(fold2Progress),
        downYStart + supShrink(fold2Progress),
      ),
      Offset(
        rightLet - supShrink(fold2Progress),
        downYEnd - supShrink(fold2Progress),
      ),
      paint(v2Color),
    );

    // Animate E2 //

    final double e2LX = leftLet + nextLetter;
    final double e2MX = centerX + nextLetter;
    final double e2RX = rightLet + nextLetter;

    // Center horizontal
    if (hReady) {
      final double e2CXStart =
          size.width - (size.width - e2LX) * hLinesProgress;
      final double e2CXEnd = size.width - (size.width - e2MX) * hLinesProgress;

      canvas.drawLine(
        Offset(
          e2CXStart + (centerX - e2CXStart) * fold5Progress,
          centerY,
        ),
        Offset(
          e2CXEnd + (centerX - e2CXEnd) * fold5Progress,
          centerY,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Vertical
    final double e2VAnim = e2LX + (centerX - e2LX) * fold5Progress;

    canvas.drawLine(
      Offset(e2VAnim, upYStart),
      Offset(e2VAnim, upYEnd),
      paint(colorScheme.secondary),
    );

    if (hReady) {
      // Top horizontal
      canvas.drawLine(
        Offset(
          e2LX * hLinesProgress + (leftLet - e2LX) * fold5Progress,
          topLet,
        ),
        Offset(
          e2RX * hLinesProgress + (rightLet - e2RX) * fold5Progress,
          topLet,
        ),
        paint(colorScheme.onSurface),
      );

      // Bottom horizontal
      canvas.drawLine(
        Offset(
          e2LX * hLinesProgress + (leftLet - e2LX) * fold5Progress,
          bottomLet,
        ),
        Offset(
          e2RX * hLinesProgress + (rightLet - e2RX) * fold5Progress,
          bottomLet,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Animate T2 //

    final double t2LX = leftLet + 2 * nextLetter;
    final double t2MX = centerX + 2 * nextLetter;
    final double t2RX = rightLet + 2 * nextLetter;

    // Center vertical
    final double t2VAnim = t2MX + (centerX - t2MX) * fold4Progress;

    canvas.drawLine(
      Offset(t2VAnim, downYStart),
      Offset(t2VAnim, downYEnd),
      paint(colorScheme.secondary),
    );

    // Top horizontal
    if (hReady) {
      canvas.drawLine(
        Offset(
          t2LX * hLinesProgress + (leftLet - t2LX) * fold4Progress,
          topLet,
        ),
        Offset(
          t2RX * hLinesProgress + (rightLet - t2RX) * fold4Progress,
          topLet,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Animate E3 //

    final double e3LX = leftLet + 3 * nextLetter;
    final double e3MX = centerX + 3 * nextLetter;
    final double e3RX = rightLet + 3 * nextLetter;

    // Center horizontal
    if (hReady) {
      final double e3CXStart =
          size.width - (size.width - e3LX) * hLinesProgress;
      final double e3CXEnd = size.width - (size.width - e3MX) * hLinesProgress;

      canvas.drawLine(
        Offset(
          e3CXStart + (centerX - e3CXStart) * fold3Progress,
          centerY,
        ),
        Offset(
          e3CXEnd + (centerX - e3CXEnd) * fold3Progress,
          centerY,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Vertical
    final double e3VAnim = e3LX + (centerX - e3LX) * fold3Progress;

    canvas.drawLine(
      Offset(e3VAnim, upYStart),
      Offset(e3VAnim, upYEnd),
      paint(colorScheme.secondary),
    );

    if (hReady) {
      // Top horizontal
      canvas.drawLine(
        Offset(
          e3LX * hLinesProgress + (leftLet - e3LX) * fold3Progress,
          topLet,
        ),
        Offset(
          e3RX * hLinesProgress + (rightLet - e3RX) * fold3Progress,
          topLet,
        ),
        paint(colorScheme.onSurface),
      );

      // Bottom horizontal
      canvas.drawLine(
        Offset(
          e3LX * hLinesProgress + (leftLet - e3LX) * fold3Progress,
          bottomLet,
        ),
        Offset(
          e3RX * hLinesProgress + (rightLet - e3RX) * fold3Progress,
          bottomLet,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Animate C //

    final double cLX = leftLet + 4 * nextLetter;
    final double cRX = rightLet + 4 * nextLetter;

    // Vertical
    final double cVAnim = cLX + (centerX - cLX) * fold2Progress;

    canvas.drawLine(
      Offset(cVAnim, downYStart),
      Offset(cVAnim, downYEnd),
      paint(colorScheme.secondary),
    );

    if (hReady) {
      // Top horizontal
      canvas.drawLine(
        Offset(
          cLX * hLinesProgress + (leftLet - cLX) * fold2Progress,
          topLet,
        ),
        Offset(
          cRX * hLinesProgress + (rightLet - cRX) * fold2Progress,
          topLet,
        ),
        paint(colorScheme.onSurface),
      );

      // Bottom horizontal
      canvas.drawLine(
        Offset(
          cLX * hLinesProgress + (leftLet - cLX) * fold2Progress,
          bottomLet,
        ),
        Offset(
          cRX * hLinesProgress + (rightLet - cRX) * fold2Progress,
          bottomLet,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Animate H2 //

    final double h2LX = leftLet + 5 * nextLetter;
    final double h2RX = rightLet + 5 * nextLetter;

    // Center horizontal
    if (hReady) {
      final double h2CXStart =
          size.width - (size.width - h2LX) * hLinesProgress;
      final double h2CXEnd = size.width - (size.width - h2RX) * hLinesProgress;

      canvas.drawLine(
        Offset(
          h2CXStart + (centerX - h2CXStart) * fold1Progress,
          centerY,
        ),
        Offset(
          h2CXEnd + (centerX - h2CXEnd) * fold1Progress,
          centerY,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // Left vertical
    final double h2LVAnim = h2LX + (leftLet - h2LX) * fold1Progress;

    canvas.drawLine(
      Offset(
        h2LVAnim + supShrink(fold2Progress),
        upYStart - supShrink(fold2Progress),
      ),
      Offset(
        h2LVAnim + supShrink(fold2Progress),
        upYEnd + supShrink(fold2Progress),
      ),
      paint(v2Color),
    );

    // Right vertical
    final double h2RVAnim = h2RX + (rightLet - h2RX) * fold1Progress;

    canvas.drawLine(
      Offset(
        h2RVAnim - supShrink(fold2Progress),
        downYStart + supShrink(fold2Progress),
      ),
      Offset(
        h2RVAnim - supShrink(fold2Progress),
        downYEnd - supShrink(fold2Progress),
      ),
      paint(v2Color),
    );

    // Animate E && M //

    final double eLX = leftLet - 5 * nextLetter;
    final double eMX = centerX - 5 * nextLetter;
    final double eRX = rightLet - 5 * nextLetter;

    // E center horizontal
    if (hReady) {
      final double eCXStart = size.width - (size.width - eLX) * hLinesProgress;
      final double eCXEnd = size.width - (size.width - eMX) * hLinesProgress;

      canvas.drawLine(
        Offset(
          eCXStart + (centerX - eCXStart) * fold1Progress,
          centerY,
        ),
        Offset(
          eCXEnd + (centerX - eCXEnd) * fold1Progress,
          centerY,
        ),
        paint(colorScheme.onSurface),
      );
    }

    // E vertical
    final double eVAnim = eLX + (centerX - eLX) * fold1Progress;

    canvas.drawLine(
      Offset(eVAnim, upYStart),
      Offset(eVAnim, upYEnd),
      paint(colorScheme.secondary),
    );

    final double mLX = leftLet - 4 * nextLetter;
    final double mMX = centerX - 4 * nextLetter;
    final double mRX = rightLet - 4 * nextLetter;

    final double mLVAnim = mLX + (leftLet - mLX) * fold2Progress;
    final double mRVAnim = mRX + (rightLet - mRX) * fold2Progress;

    // M left vertical
    canvas.drawLine(
      Offset(
        mLVAnim + supShrink(fold2Progress),
        downYStart + supShrink(fold2Progress),
      ),
      Offset(
        mLVAnim + supShrink(fold2Progress),
        downYEnd - supShrink(fold2Progress),
      ),
      paint(v2Color),
    );

    // M right vertical
    canvas.drawLine(
      Offset(
        mRVAnim - supShrink(fold2Progress),
        upYStart - supShrink(fold2Progress),
      ),
      Offset(
        mRVAnim - supShrink(fold2Progress),
        upYEnd + supShrink(fold2Progress),
      ),
      paint(v2Color),
    );

    if (dReady) {
      // M left to center diagonal
      canvas.drawLine(
        Offset(
          size.width -
              (size.width - mLX) * dLinesProgress +
              (leftLet - mLX) * fold2Progress,
          (expandProgress > 0)
              ? centerY + hLet * fold2Progress
              : size.height - bottomLet * dLinesProgress + letS * fold2Progress,
        ),
        Offset(
          size.width -
              (size.width - mMX) * dLinesProgress +
              (centerX - mMX) * fold2Progress,
          size.height - centerY * dLinesProgress,
        ),
        paint(dColor),
      );

      // M left to center diagonal mirror
      if (fold2Progress >= 0.5) {
        canvas.drawLine(
          Offset(mLVAnim, centerY - hLet * fold2Progress),
          Offset(mMX + (centerX - mMX) * fold2Progress, centerY),
          paint(dColor),
        );
      }

      // M center to right diagonal
      canvas.drawLine(
        Offset(
          size.width -
              (size.width - mMX) * dLinesProgress +
              (centerX - mMX) * fold2Progress,
          centerY * dLinesProgress,
        ),
        Offset(
          size.width -
              (size.width - mRX) * dLinesProgress +
              (rightLet - mRX) * fold2Progress,
          (expandProgress > 0)
              ? centerY + hLet * fold2Progress
              : topLet * dLinesProgress + letS * fold2Progress,
        ),
        paint(dColor),
      );

      // M center to right diagonal mirror
      if (fold2Progress >= 0.5) {
        canvas.drawLine(
          Offset(mMX + (centerX - mMX) * fold2Progress, centerY),
          Offset(mRVAnim, centerY - hLet * fold2Progress),
          paint(dColor),
        );
      }
    }

    if (hReady) {
      // E top horizontal
      canvas.drawLine(
        Offset(
          eLX * hLinesProgress + (leftLet - eLX) * fold1Progress,
          topLet,
        ),
        Offset(
          eRX * hLinesProgress + (rightLet - eRX) * fold1Progress,
          topLet,
        ),
        paint(colorScheme.onSurface),
      );

      // E bottom horizontal
      canvas.drawLine(
        Offset(
          eLX * hLinesProgress + (leftLet - eLX) * fold1Progress,
          bottomLet,
        ),
        Offset(
          eRX * hLinesProgress + (rightLet - eRX) * fold1Progress,
          bottomLet,
        ),
        paint(colorScheme.onSurface),
      );
    }
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => witnessMeProgress == 0;
}
