import 'package:flutter/material.dart';
import 'package:empathetech_flutter_ui/empathetech_flutter_ui.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class EmpathetechLogo extends StatelessWidget {
  final Size size;
  const EmpathetechLogo({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: LogoPainter(
        colorScheme: Theme.of(context).colorScheme,
        isDark: PlatformTheme.of(context)!.isDark,
      ),
      size: size,
    );
  }
}

class LogoPainter extends CustomPainter {
  final ColorScheme colorScheme;
  final bool isDark;

  LogoPainter({required this.colorScheme, required this.isDark});

  Paint getPaint(Color color) => Paint()
    ..color = color
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..strokeCap = StrokeCap.round
    ..strokeJoin = StrokeJoin.round;

  @override
  void paint(Canvas canvas, Size size) {
    final double xMid = size.width / 2;
    final double yMid = size.height / 2;

    final double vMargin = EzConfig.get(marginKey) / 4;

    /// Time, a required parameter for change
    final Paint centerLine = getPaint(colorScheme.secondary);

    canvas.drawLine(
      Offset(xMid, vMargin),
      Offset(xMid, size.height - vMargin),
      centerLine,
    );

    /// Hard work, a required parameter for growth
    final Paint supports =
        getPaint(isDark ? colorScheme.primary : colorScheme.tertiary);

    /// The supports make four 7ths of the amount of time
    /// Because 4 days/week == full time && 3 days/week == part time just makes so much more sense, doesn't it?
    final double supportMidDiff = (size.height - vMargin * 2) / 7;

    canvas.drawLine(
      Offset(xMid - 11.75, yMid - supportMidDiff),
      Offset(xMid - 11.75, yMid + supportMidDiff),
      supports,
    );
    canvas.drawLine(
      Offset(xMid + 11.75, yMid - supportMidDiff),
      Offset(xMid + 11.75, yMid + supportMidDiff),
      supports,
    );

    /// Empathy, a required parameter for understanding
    final Paint connections =
        getPaint(isDark ? colorScheme.tertiary : colorScheme.primary);

    canvas.drawLine(
      Offset(0, vMargin),
      Offset(size.width, size.height - vMargin),
      connections,
    );
    canvas.drawLine(
      Offset(0, size.height - vMargin),
      Offset(size.width, vMargin),
      connections,
    );

    /// Celebrated difference, a required parameter for peace
    final Paint foundation = getPaint(colorScheme.surface);

    canvas.drawLine(
      Offset(0, size.height - vMargin),
      Offset(size.width, size.height - vMargin),
      foundation,
    );

    canvas.drawLine(
      Offset(0, vMargin),
      Offset(size.width, vMargin),
      foundation,
    );
  }

  @override
  bool shouldRepaint(LogoPainter oldDelegate) =>
      oldDelegate.colorScheme.primary != colorScheme.primary ||
      oldDelegate.colorScheme.secondary != colorScheme.secondary ||
      oldDelegate.colorScheme.tertiary != colorScheme.tertiary ||
      oldDelegate.colorScheme.surface != colorScheme.surface;
}
