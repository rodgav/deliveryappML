import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  Size size;

  BottomBarWidget({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          color: ColorsH.white, borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.only(bottom: 20, left: 20,right: 20),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            IconsH.home,
            size: 25,
            color: ColorsH.agua,
          ),
          Icon(
            IconsH.shop,
            size: 25,
            color: ColorsH.inact,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: 25,
            height: 25,
            child: CustomPaint(
              painter: OpenPainter(),
            ),
          ),
          Icon(
            IconsH.nofavorite,
            size: 25,
            color: ColorsH.inact,
          ),
          Icon(
            Icons.person,
            size: 25,
            color: ColorsH.inact,
          ),
        ],
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = ColorsH.bg
      ..style = PaintingStyle.fill;
    var paint2 = Paint()
      ..color = ColorsH.morado
      ..style = PaintingStyle.fill;

    TextPainter textPainter = TextPainter(textDirection: TextDirection.rtl);
    textPainter.text = TextSpan(
        text: String.fromCharCode(IconsH.basket.codePoint),
        style: TextStyle(fontSize: 25.0, fontFamily: IconsH.basket.fontFamily,color: ColorsH.white));
    textPainter.layout();
    canvas.drawCircle(Offset(10, 10), 50, paint1);
    canvas.drawCircle(Offset(10, 10), 30, paint2);
    textPainter.paint(canvas, Offset(-5, -5));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
