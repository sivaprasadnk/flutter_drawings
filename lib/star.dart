import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({
    super.key,
    required double h,
  }) : _h = h;

  final double _h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _h,
      child: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: _h / 2,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var h = size.height;
    var w = size.width;
    double centerX = w / 2.0;
    double centerY = h / 2.0;

    // topmost
    path.moveTo(centerX, centerY - 50);

    //center left top
    path.lineTo(centerX - 13, centerY - 20);

    //topleft
    path.lineTo(centerX - 45, centerY - 20);

    //center left
    path.lineTo(centerX - 20, centerY);

    //bottom left
    path.lineTo(centerX - 31, centerY + 35);

    //bottom-center
    path.lineTo(centerX, centerY + 13);

    // bottom-right
    path.lineTo(centerX + 31, centerY + 35);

    //center-right
    path.lineTo(centerX + 20, centerY);

    path.lineTo(centerX + 20, centerY);

    path.lineTo(centerX + 45, centerY - 20);

    path.lineTo(centerX + 13, centerY - 20);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
