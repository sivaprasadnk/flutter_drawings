import 'package:flutter/material.dart';

class AvengersLogo extends StatelessWidget {
  const AvengersLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: const Size(double.infinity, double.infinity),
          painter: CirclePainter(),
          // child: Container(margin: EdgeInsets.,),
        ),
        ClipPath(
          clipper: LogoClipper2(),
          child: Container(
            padding: const EdgeInsets.all(10),
            // height: _h,
            color: Colors.white,
          ),
        ),
        ClipPath(
          clipper: LogoClipper(),
          child: Container(
            // height: _h,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class CirclePainter extends CustomPainter {
  var wavePaint = Paint()
    // ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeWidth = 20.0
    ..isAntiAlias = true;
  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;
    double centerX = w / 2.0 - 50;
    double centerY = h / 2.0 + 40;

    var white = Colors.white;
    wavePaint.color = white;

    wavePaint.strokeWidth = 40;
    canvas.drawCircle(Offset(centerX, centerY), 180.0, wavePaint);

    // wavePaint.strokeWidth = 20;
    // wavePaint.color = Colors.red;
    // canvas.drawCircle(Offset(centerX, centerY), 100.0, wavePaint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return false;
  }
}

class LogoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var h = size.height;
    var w = size.width;
    double x = w / 2.0;
    double y = h / 2.0;

    path.moveTo(325, 150);
    path.lineTo(140, h - 100);
    path.lineTo(130, h - 100);
    path.lineTo(315, 150);

    path.moveTo(195, h - 100);
    path.lineTo(255, 460);
    path.lineTo(265, 460);
    path.lineTo(205, h - 100);
    // path.lineTo(, y)

    path.moveTo(390, 430);
    path.lineTo(390, 150);
    path.lineTo(400, 150);
    path.lineTo(400, 430);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class LogoClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.
    var h = size.height;
    // var w = size.width;
    // double x = w / 2.0;
    // double y = h / 2.0;

    path.moveTo(340, 250);
    path.lineTo(340, 385);
    path.lineTo(390, 430);
    path.lineTo(390, 150);
    path.lineTo(325, 150);

    path.lineTo(140, h - 100);
    path.lineTo(195, h - 100);

    path.lineTo(255, 460);
    path.lineTo(340, 460);

    path.lineTo(340, 480);
    path.lineTo(395, 450);
    path.lineTo(340, 400);
    path.lineTo(340, 420);
    path.lineTo(275, 420);
    path.moveTo(340, 495);
    path.lineTo(390, 495);
    path.lineTo(390, 465);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
