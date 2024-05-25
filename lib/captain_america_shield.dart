import 'package:flutter/material.dart';
import 'package:flutter_drawings/star.dart';

class CaptainAmerica extends StatelessWidget {
  // final double h;
  // final double w;

  const CaptainAmerica({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;
    var w = mediaQuerySize.width;
    var h = mediaQuerySize.height;
    debugPrint(
        " width : $w, height :$h"); // width : 707.2000122070312, height :711.2000122070312
    return Stack(
      children: [
        CustomPaint(
          size: const Size(double.infinity, double.infinity),
          painter: ShieldPainter(),
        ),
        Positioned.fill(
          top: h / 2 - 50,
          bottom: h / 2 - 50,
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 100,
              child: Star(
                h: h,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ShieldPainter extends CustomPainter {
  var wavePaint = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeWidth = 20.0
    ..isAntiAlias = true;
  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;
    double centerX = w / 2.0;
    double centerY = h / 2.0;

    var blue = Colors.blue[900];
    wavePaint.color = blue!;

    wavePaint.strokeWidth = 90;
    canvas.drawCircle(Offset(centerX, centerY), 5.0, wavePaint);

    wavePaint.strokeWidth = 20;
    wavePaint.color = Colors.red;
    canvas.drawCircle(Offset(centerX, centerY), 100.0, wavePaint);

    canvas.drawCircle(Offset(centerX, centerY), 60, wavePaint);
  }

  @override
  bool shouldRepaint(ShieldPainter oldDelegate) {
    return false;
  }
}

class ShieldClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.c
    var h = size.height;
    var w = size.width;
    double centerX = w / 2.0;
    double centerY = h / 2.0;
    path.moveTo(centerX - 50, centerY - 50);
    path.lineTo(centerX, centerY);
    path.lineTo(centerX - 100, centerY - 100);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
