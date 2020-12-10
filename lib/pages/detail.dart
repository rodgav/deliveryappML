import 'dart:typed_data';

import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/widgets/appBarDetail.dart';
import 'package:deliveryapp1mauriciolopez/widgets/button.dart';
import 'package:deliveryapp1mauriciolopez/widgets/itemIngre.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<ItemIngreWid> ingreds = [
    ItemIngreWid(asset: 'assets/images/arrachera.png', name: 'Arrachera'),
    ItemIngreWid(asset: 'assets/images/pan.png', name: 'Pan ajonjoli'),
    ItemIngreWid(asset: 'assets/images/lechuga.png', name: 'Lechuga'),
    ItemIngreWid(asset: 'assets/images/cebolla.png', name: 'Cebolla'),
  ];
  ui.Image _image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadImage();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ColorsH.bg,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverPersistentHeader(
              delegate: AppBarDetailWid(
                  image: _image, expandedHeight: size.height * 0.5, size: size),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 7),
                          child: Text(
                            'Descipción',
                            style: TextStyle(color: ColorsH.text, fontSize: 18),
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
                          style: TextStyle(color: ColorsH.text, fontSize: 11),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Ingredientes',
                                  style: TextStyle(
                                      color: ColorsH.text, fontSize: 18),
                                ),
                                Text(
                                  '10 ingredientes',
                                  style: TextStyle(
                                      color: ColorsH.text4, fontSize: 10),
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
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  _loadImage() async {
    ByteData bd = await rootBundle.load('assets/images/hambEspecial.png');
    final Uint8List bytes = Uint8List.view(bd.buffer);
    final ui.Codec codec = await ui.instantiateImageCodec(bytes);
    final ui.Image image = (await codec.getNextFrame()).image;
    setState(() => _image = image);
  }
}
