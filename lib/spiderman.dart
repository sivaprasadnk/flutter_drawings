import 'package:flutter/material.dart';

class SpiderMan extends StatelessWidget {
  const SpiderMan({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          // color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Align(
          alignment: Alignment.center,
          child: CustomPaint(
            size: const Size(double.infinity, double.infinity),
            painter: SpideyPainter(),
          ),
        ),
        ClipPath(
          clipper: SpiderClipper(),
          child: Container(
            // height: _h,
            color: Colors.black,
            // child:
          ),
        ),
      ],
    );
  }
}

class SpiderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // var paint = Paint();
    // int constant = 10;

    var h = size.height;
    var w = size.width;
    double x = w / 2.0;
//     // x = x / 2;
    double y = h / 2.0;

    path.moveTo(x, y); // top
    path.lineTo(x - 100, y + 75); // center top
    path.lineTo(x - 100, y + 200); // center bottom
    path.lineTo(x, y + 265); // bottom
    path.lineTo(x + 100, y + 200); // center right bottom
    path.lineTo(x + 100, y + 75); // center right top

    //-----------------
    path.moveTo(x - 60, y - 60);
    path.lineTo(x - 60, y + 20);
    path.lineTo(x - 135, y + 75);
    path.lineTo(x - 135, y + 215);
    path.lineTo(x - 160, y + 230);
    path.lineTo(x - 160, y + 65);
    path.lineTo(x - 85, y + 5);
    path.lineTo(x - 85, y - 50);
    path.lineTo(x - 107, y - 75);
    path.lineTo(x - 107, y - 165);
    path.lineTo(x - 82, y - 140);
    path.lineTo(x - 82, y - 90);

    //-----------

    path.moveTo(x + 60, y - 60);
    path.lineTo(x + 60, y + 20);
    path.lineTo(x + 135, y + 75);
    path.lineTo(x + 135, y + 215);
    path.lineTo(x + 160, y + 230);
    path.lineTo(x + 160, y + 65);
    path.lineTo(x + 85, y + 5);
    path.lineTo(x + 85, y - 50);
    path.lineTo(x + 107, y - 75);
    path.lineTo(x + 107, y - 165);
    path.lineTo(x + 82, y - 140);
    path.lineTo(x + 82, y - 90);

    //--------------------

    path.moveTo(x - 200, y + 65);
    path.lineTo(x - 110, y);
    path.lineTo(x - 110, y - 45);
    path.lineTo(x - 135, y - 75);
    path.lineTo(x - 135, y - 175);
    path.lineTo(x - 160, y - 195);
    path.lineTo(x - 160, y - 65);
    path.lineTo(x - 135, y - 35);
    path.lineTo(x - 135, y - 15);
    path.lineTo(x - 225, y + 50);
    path.lineTo(x - 225, y + 260);
    path.lineTo(x - 200, y + 240);

    //----------------------------

    path.moveTo(x + 200, y + 65);
    path.lineTo(x + 110, y);
    path.lineTo(x + 110, y - 45);
    path.lineTo(x + 135, y - 75);
    path.lineTo(x + 135, y - 175);
    path.lineTo(x + 160, y - 195);
    path.lineTo(x + 160, y - 65);
    path.lineTo(x + 135, y - 35);
    path.lineTo(x + 135, y - 15);
    path.lineTo(x + 225, y + 50);
    path.lineTo(x + 225, y + 260);
    path.lineTo(x + 200, y + 240);

    // x = x - 30;
    // path.moveTo(x - 155, y - 185);
    // path.lineTo(x - 155, y - 65);
    // // path.lineTo(x -, y)
    // // path.lineTo(x - 125, y - 155);
    // path.lineTo(x - 115, y - 25);
    // path.lineTo(x - 115, y - 5);
    // path.lineTo(x - 210, y + 70);
    // path.lineTo(x - 210, y + 255);
    // path.lineTo(x - 190, y + 240);
    // path.lineTo(x - 190, y + 85);
    // path.lineTo(x - 120, y + 10);
//     path.lineTo(x, y + 200);
//     path.lineTo(x + 65, y + 230);
//     path.lineTo(x + 65, y + 235);

//     path.lineTo(15, y + 285);
//     path.lineTo(15, y + 525);
//     path.lineTo(35, y + 505);
//     path.lineTo(35, y + 300);

//     path.lineTo(x + 85, y + 250);
//     path.lineTo(x + 85, y + 220);
//     path.lineTo(x + 20, y + 190);
//     path.lineTo(x + 20, y + 25);
// //-------------------------
//     path.moveTo(x + 40, y + 50);
//     path.lineTo(x + 40, y + 180);
//     // path.lineTo(x + 60, y + 170);
//     // path.lineTo(x + 60, y + 65);   // last point
//     path.lineTo(x + 105, y + 210);
//     path.lineTo(x + 105, y + 265);

//     path.lineTo(65, y + 310);
//     path.lineTo(65, y + 485);
//     path.lineTo(85, y + 465);
//     path.lineTo(85, y + 325);
//     // path.lineTo(x, y)
//     path.lineTo(x + 125, y + 280);
//     path.lineTo(x + 125, y + 195);
//     path.lineTo(x + 60, y + 165);

//     path.lineTo(x + 60, y + 65);
// //---------------------
//     path.moveTo(x + 150, y + 290);
//     path.lineTo(105, y + 335);
//     path.lineTo(105, y + 445);
//     path.lineTo(x + 150, y + 550);

//     // paint.

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SpideyPainter extends CustomPainter {
  var wavePaint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 20.0
    ..isAntiAlias = true;
  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;
    double centerX = w / 2;
    double centerY = h / 2;

    wavePaint.strokeWidth = 90;
    canvas.drawCircle(Offset(centerX, centerY), 5.0, wavePaint);
    // canvas.d
  }

  @override
  bool shouldRepaint(SpideyPainter oldDelegate) {
    return false;
  }
}
