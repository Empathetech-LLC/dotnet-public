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
    ..strokeWidth = 2.0
    ..strokeCap = StrokeCap.round
    ..strokeJoin = StrokeJoin.round;

  @override
  void paint(Canvas canvas, Size size) {
    final double xMid = size.width / 2;
    final double yMid = size.height / 2;

    final double subMargin = EzConfig.get(marginKey) / 4;

    /// Time, a required parameter for change
    final Paint centerLine = getPaint(colorScheme.secondary);

    canvas.drawLine(
      Offset(xMid, subMargin),
      Offset(xMid, size.height - subMargin),
      centerLine,
    );

    /// Hard work, a required parameter for growth
    final Paint supports =
        getPaint(isDark ? colorScheme.primary : colorScheme.tertiary);

    final double qLet = (size.width - 2 * subMargin) / 4;

    canvas.drawLine(
      Offset(xMid - qLet, yMid - qLet),
      Offset(xMid - qLet, yMid + qLet),
      supports,
    );
    canvas.drawLine(
      Offset(xMid + qLet, yMid - qLet),
      Offset(xMid + qLet, yMid + qLet),
      supports,
    );

    /// Empathy, a required parameter for understanding
    final Paint connections =
        getPaint(isDark ? colorScheme.tertiary : colorScheme.primary);

    canvas.drawLine(
      Offset(subMargin, subMargin),
      Offset(size.width - subMargin, size.height - subMargin),
      connections,
    );
    canvas.drawLine(
      Offset(subMargin, size.height - subMargin),
      Offset(size.width - subMargin, subMargin),
      connections,
    );

    /// Celebrated difference, a required parameter for peace
    final Paint foundation = getPaint(colorScheme.surface);

    canvas.drawLine(
      Offset(subMargin, size.height - subMargin),
      Offset(size.width - subMargin, size.height - subMargin),
      foundation,
    );

    canvas.drawLine(
      Offset(subMargin, subMargin),
      Offset(size.width - subMargin, subMargin),
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
