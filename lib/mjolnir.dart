import 'package:flutter/material.dart';

class Mjolnir extends StatelessWidget {
  const Mjolnir({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HammerClipper(),
      child: Container(
        // height: _h,
        color: Colors.black,
      ),
    );
  }
}

class MjolnirPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {}

  @override
  bool shouldRepaint(MjolnirPainter oldDelegate) {
    return false;
  }
}

class HammerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    var h = size.height;
    var w = size.width;
    double x = w / 2.0 - 50;
    double y = h / 4.0;

// top
    path.moveTo(x, y - 25); // top left
    path.lineTo(x + 135, y - 25); // top right
    path.lineTo(x + 135, y - 15); // bottom right
    path.lineTo(x, y - 15); // bottom left

// center
    path.moveTo(x, y - 12.5); // top left
    path.lineTo(x + 135, y - 12.5); // top right
    path.lineTo(x + 135, y + 55); // bottom right
    path.lineTo(x, y + 55); // bottom left

// bottom
    path.moveTo(x, y + 57.5); // top left
    path.lineTo(x + 135, y + 57.5); // top right
    path.lineTo(x + 135, y + 67.5); // bottom right
    path.lineTo(x, y + 67.5); // bottom left

    //top right
    path.moveTo(x + 137.5, y - 25); // top left
    path.lineTo(x + 137.5, y - 15); // bottom
    path.lineTo(x + 157.5, y - 5); // botom right

    // center right
    path.moveTo(x + 137.5, y - 12.5); // top left
    path.lineTo(x + 137.5, y + 55); // bottom left
    path.lineTo(x + 157.5, y + 47.5); // bottom right
    path.lineTo(x + 157.5, y - 2.5); // top right

    //bottom right
    path.moveTo(x + 137.5, y + 57.5); // top left
    path.lineTo(x + 137.5, y + 67.5); // bottom left
    path.lineTo(x + 157.5, y + 50);

    // top left
    path.moveTo(x - 2.5, y - 25); // top
    path.lineTo(x - 2.5, y - 15); // bottom right
    path.lineTo(x - 25, y - 5); // left

    // center left
    path.moveTo(x - 2.5, y - 12.5); //top right
    path.lineTo(x - 2.5, y + 55); // bottom right
    path.lineTo(x - 25, y + 50); // bottom left
    path.lineTo(x - 25, y - 2.5); // top left

    // bottom left
    path.moveTo(x - 2.5, y + 57.5); // top right
    path.lineTo(x - 2.5, y + 67.5); // bottom right
    path.lineTo(x - 25, y + 52.5); // bottom left

    // top most
    path.moveTo(x + 50, y - 32);
    path.lineTo(x + 90, y - 32);
    path.lineTo(x + 90, y - 27);
    path.lineTo(x + 50, y - 27);

    // handle top
    path.moveTo(x + 55, y + 70); // top left
    path.lineTo(x + 82.5, y + 70); // top right
    path.lineTo(x + 82.5, y + 80); // bottom right
    path.lineTo(x + 55, y + 80); // bottom left

    // handle
    path.moveTo(x + 60, y + 82.5); // top left
    path.lineTo(x + 77.5, y + 82.5); // top right
    path.lineTo(x + 77.5, y + 92.5); // bottom right

    path.moveTo(x + 60, y + 85); // top left
    path.lineTo(x + 60, y + 95); // bottom left
    path.lineTo(x + 77.5, y + 105); // bottom right
    path.lineTo(x + 77.5, y + 95); // top right

    for (int i = 0; i < 17; i++) {
      y = y + 12.5;

      path.moveTo(x + 60, y + 85); // top left
      path.lineTo(x + 60, y + 95); // bottom left
      path.lineTo(x + 77.5, y + 105); // bottom right
      path.lineTo(x + 77.5, y + 95); // top right
    }

    y = y + 12.5;
    path.moveTo(x + 60, y + 85);
    path.lineTo(x + 60, y + 95);
    path.lineTo(x + 77.5, y + 95);

    y = y + 12.5;
    path.moveTo(x + 57.5, y + 85);
    path.lineTo(x + 57.5, y + 97.5);
    path.lineTo(x + 80, y + 97.5);
    path.lineTo(x + 80, y + 85);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
