import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class AppBarDetailWid extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  ui.Image image;
  final Size size;

  AppBarDetailWid({this.expandedHeight, this.image, this.size});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: expandedHeight,
          child: CustomPaint(
            painter: _Painter(image: image),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SafeArea(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_sharp,
                  color: ColorsH.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Text(
                'Hamburguesa especial',
                style: TextStyle(color: ColorsH.white, fontSize: 16),
              ),
              Container(
                width: 24,
                height: 0,
              )
            ],
          )),
        ),
        Positioned(
          top: (expandedHeight - shrinkOffset) - 30,
          left: MediaQuery.of(context).size.width - 100,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: ColorsH.rosa),
              child: Icon(
                IconsH.nofavorite,
                color: ColorsH.white,
              ),
            )
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight ;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class _Painter extends CustomPainter {
  ui.Image image;

  _Painter({@required this.image});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    paint.color = ColorsH.morado;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();
    path.lineTo(0, size.height + 50);
    path.quadraticBezierTo(
        0, size.height * 0.8 + 50, size.width * 0.3, size.height * 0.8 + 50);
    path.lineTo(size.width * 0.8, size.height * 0.8 + 50);
    path.quadraticBezierTo(
        size.width, size.height * 0.8 + 50, size.width, size.height * 0.5 + 50);
    path.lineTo(size.width, 0);
    //canvas.drawPath(path, paint);
    if(image!=null)
    canvas.drawPath(
        path,
        Paint()
          ..shader = ImageShader(image, TileMode.clamp, TileMode.clamp,
              Matrix4.identity().scaled(1.0).storage)
          ..style = PaintingStyle.fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
