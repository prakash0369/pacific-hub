import 'package:flutter/material.dart';

class EclipsePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue;
    canvas.drawOval(
        Rect.fromCenter(
          center: Offset(size.width / 2, size.height / 2),
          width: size.width * 1.5,
          height: size.height * 0.5,
        ),
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}