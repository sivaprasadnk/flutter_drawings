import 'package:flutter/material.dart';

class IronMan extends StatelessWidget {
  const IronMan({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;
    var w = mediaQuerySize.width;
    var h = mediaQuerySize.height;
    return SizedBox(
      width: 707,
      // width: w * 0.6,
      height: 711,
      child: ClipPath(
        clipper: MaskClipper(),
        child: Container(
          height: h,
          color: Colors.yellow,
        ),
      ),
    );
  }
}

class MaskClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var h = size.height;
    var w = size.width;
    int constant = 10;

    path.moveTo(w * 0.9 - constant, h * 0.3);
    path.lineTo(w * 0.9 - constant, h * 0.2);
    path.lineTo(w * 0.8 - constant, h * 0.133);
    path.lineTo(w * 0.7 - constant, h * 0.1);
    path.lineTo(w * 0.6 - constant, h * 0.28);
    path.lineTo(w * 0.4 - constant, h * 0.28);
    path.lineTo(w * 0.3 - constant, h * 0.1);
    path.lineTo(w * 0.2 - constant, h * 0.133);
    path.lineTo(w * 0.1 - constant, h * 0.2);
    path.lineTo(w * 0.1 - constant, h * 0.3);
    path.lineTo(w * 0.14 - constant, h * 0.39);
    path.lineTo(w * 0.11 - constant, h * 0.45);

    // path.lineTo(w * 0.12 - constant, h * 0.48);
    path.lineTo(w * 0.18 - constant, h * 0.47);
    path.lineTo(w * 0.2 - constant, h * 0.45);

    path.lineTo(w * 0.4 - constant, h * 0.48);
    path.lineTo(w * 0.6 - constant, h * 0.48);

    path.lineTo(w * 0.8 - constant, h * 0.45);

    path.lineTo(w * 0.82 - constant, h * 0.47);
    path.lineTo(w * 0.89 - constant, h * 0.45);
    path.lineTo(w * 0.86 - constant, h * 0.39);
// ---------------------------------------------------------
    path.moveTo(w * 0.9 - constant, h * 0.47);
    path.lineTo(w * 0.72 - constant, h * 0.525);
    path.lineTo(w * 0.62 - constant, h * 0.52);

    path.lineTo(w * 0.6 - constant, h * 0.5);
    path.lineTo(w * 0.4 - constant, h * 0.5);

    path.lineTo(w * 0.38 - constant, h * 0.52);
    path.lineTo(w * 0.28 - constant, h * 0.525);
    path.lineTo(w * 0.09 - constant, h * 0.47);
    path.lineTo(w * 0.06 - constant, h * 0.51);
    path.lineTo(w * 0.23 - constant, h * 0.75);
    path.lineTo(w * 0.33 - constant, h * 0.78);

    path.lineTo(w * 0.37 - constant, h * 0.75);
    path.lineTo(w * 0.63 - constant, h * 0.75);

    path.lineTo(w * 0.67 - constant, h * 0.78);
    path.lineTo(w * 0.77 - constant, h * 0.75);
    path.lineTo(w * 0.94 - constant, h * 0.51);
    path.lineTo(w * 0.91 - constant, h * 0.47);

    //---------------------------------------
    path.moveTo(w * 0.55 - constant, h * 0.81);
    path.lineTo(w * 0.58 - constant, h * 0.83);
    path.lineTo(w * 0.63 - constant, h * 0.83);
    path.lineTo(w * 0.675 - constant, h * 0.86);
    path.lineTo(w * 0.78 - constant, h * 0.83);
    path.lineTo(w * 0.77 - constant, h * 0.77);
    path.lineTo(w * 0.67 - constant, h * 0.80);

    path.lineTo(w * 0.63 - constant, h * 0.77);
    path.lineTo(w * 0.37 - constant, h * 0.77);

    path.lineTo(w * 0.33 - constant, h * 0.80);
    path.lineTo(w * 0.23 - constant, h * 0.77);
    path.lineTo(w * 0.22 - constant, h * 0.83);
    path.lineTo(w * 0.325 - constant, h * 0.86);
    path.lineTo(w * 0.37 - constant, h * 0.83);
    path.lineTo(w * 0.42 - constant, h * 0.83);
    path.lineTo(w * 0.45 - constant, h * 0.81);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
