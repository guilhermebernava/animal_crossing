import 'package:flutter/material.dart';

class HomeCustomContainer extends CustomPainter {
  final Color color;
  const HomeCustomContainer({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width / 2, size.height * 1.7, size.width, size.height * 0.2);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
