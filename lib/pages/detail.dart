import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:deliveryapp1mauriciolopez/widgets/button.dart';
import 'package:deliveryapp1mauriciolopez/widgets/itemIngre.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailPage extends StatelessWidget {
  List<ItemIngreWid> ingreds = [
    ItemIngreWid(asset: 'assets/images/arrachera.png', name: 'Arrachera'),
    ItemIngreWid(asset: 'assets/images/pan.png', name: 'Pan ajonjoli'),
    ItemIngreWid(asset: 'assets/images/lechuga.png', name: 'Lechuga'),
    ItemIngreWid(asset: 'assets/images/cebolla.png', name: 'Cebolla'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/hambEspecial.png',
            fit: BoxFit.fill,
            width: size.width,
            height: size.height * 0.6,
          ),
          Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(),
              child: CustomPaint(
                painter: _Painter(),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SafeArea(
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
                              style:
                                  TextStyle(color: ColorsH.white, fontSize: 16),
                            ),
                            Container(
                              width: 24,
                              height: 0,
                            )
                          ],
                        )),
                        Container(
                          height: size.height * 0.4,
                        ),
                        Container(
                          height: size.height * 0.35,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 7),
                                  child: Text(
                                    'Descipción',
                                    style: TextStyle(
                                        color: ColorsH.text, fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consetetur sadipscing '
                                  'elitr, sed diam nonumy eirmod tempor invidunt ut'
                                  ' labore et dolore magna aliquyam erat, sed diam '
                                  'voluptua. At vero eos et accusam et justo duo dolores '
                                  'et ea rebum. Stet clita kasd gubergren, no sea takimata '
                                  'sanctus est Lorem ipsum dolor sit amet. Lorem ipsum'
                                  ' dolor sit amet, consetetur',
                                  style: TextStyle(
                                      color: ColorsH.text, fontSize: 11),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 7),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Ingredientes',
                                          style: TextStyle(
                                              color: ColorsH.text,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '10 ingredientes',
                                          style: TextStyle(
                                              color: ColorsH.text4,
                                              fontSize: 10),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 180,
                                    child: ListView(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      children: ingreds,
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ButtonWid(
                                  width: 220.0,
                                  height: 63.0,
                                  text: 'Ordenar ahora'),
                              Text(
                                '\$12.58',
                                style: TextStyle(
                                    color: ColorsH.text, fontSize: 30),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),
          Positioned(
            top: (size.height * 0.40) - 24,
            right: size.width * 0.15,
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
            ),
          )
        ],
      ),
    );
  }
}

class _Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint = Paint();
    paint.color = ColorsH.bg;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;
    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        0, size.height * 0.40, size.width * 0.3, size.height * 0.40);
    path.lineTo(size.width * 0.80, size.height * 0.40);
    path.quadraticBezierTo(
        size.width, size.height * 0.4, size.width, size.height * 0.30);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
