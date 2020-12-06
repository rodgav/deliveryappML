import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:deliveryapp1mauriciolopez/widgets/appBar.dart';
import 'package:deliveryapp1mauriciolopez/widgets/bottonBar.dart';
import 'package:deliveryapp1mauriciolopez/widgets/itemCategs.dart';
import 'package:deliveryapp1mauriciolopez/widgets/itemProdPopu.dart';
import 'package:deliveryapp1mauriciolopez/widgets/itemRecom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemCategsWid> categs = [];
  List<ItemProdPopuWid> prodPopu = [];
  List<ItemRecomWid> recomen = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _addCategs();
    _addPopuls();
    _addRecoms();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorsH.bg,
      body: Column(
        children: [
          AppBarWidget(size: size),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: 25, left: 25, right: 25, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          'Explorar categorias',
                          style: TextStyle(color: ColorsH.text, fontSize: 18),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Text(
                          'Ver todos',
                          style:
                              TextStyle(color: ColorsH.textGrey, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 94,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: categs,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 25, left: 25, right: 25, bottom: 10),
                    child: Text(
                      'Productos populares',
                      style: TextStyle(color: ColorsH.text, fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    height: 230,
                    child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: prodPopu),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 25, left: 25, right: 25, bottom: 10),
                    child: Text(
                      'Recomendados',
                      style: TextStyle(color: ColorsH.text, fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    height: 160,
                    child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: recomen),
                  ),
                ],
              ),
            ),
          ),
          BottomBarWidget(size: size),
        ],
      ),
    );
  }

  moveRute(BuildContext context) {
    Navigator.of(context).pushNamed('/detail');
  }

  _addCategs() {
    categs.add(ItemCategsWid(
        assets: 'assets/images/tacos.png',
        color: ColorsH.verdeCat,
        name: 'Tacos'));
    categs.add(ItemCategsWid(
        assets: 'assets/images/frias.png',
        color: ColorsH.celesteCat,
        name: 'Frías'));
    categs.add(ItemCategsWid(
        assets: 'assets/images/burger.png',
        color: ColorsH.naranjaCat,
        name: 'Burger'));
    categs.add(ItemCategsWid(
        assets: 'assets/images/pizzas.png',
        color: ColorsH.rosaCat,
        name: 'Pizza'));
    categs.add(ItemCategsWid(
        assets: 'assets/images/burritos.png',
        color: ColorsH.moradoCat,
        name: 'Burritos'));
    setState(() {});
  }

  _addPopuls() {
    prodPopu.add(ItemProdPopuWid(
      icon: IconsH.nofavorite,
      available: ColorsH.inact,
      asset: 'assets/images/pizzaClas.png',
      title: 'Pizza Clásica',
      description: 'Salsa clásica de la casa',
      price: 12.58,
      moveRute: moveRute,
    ));
    prodPopu.add(ItemProdPopuWid(
      icon: IconsH.favorite,
      available: ColorsH.rosa,
      asset: 'assets/images/hambMix.png',
      title: 'Hamburguesa mix',
      description: 'Doble carne con queso',
      price: 12.58,
      moveRute: moveRute,
    ));
    prodPopu.add(ItemProdPopuWid(
      icon: IconsH.nofavorite,
      available: ColorsH.inact,
      asset: 'assets/images/pizzaClas.png',
      title: 'Pizza Clásica',
      description: 'Salsa clásica de la casa',
      price: 12.58,
      moveRute: moveRute,
    ));
    setState(() {});
  }

  _addRecoms() {
    recomen.add(ItemRecomWid(
      icon: IconsH.favorite,
      available: ColorsH.rosa,
      asset: 'assets/images/malteada1.png',
      categ: 'Naturales',
      title: 'Malteadas tropicales',
      descr: 'Elaborado con jugos naturales',
      price: 12.58,
      moveRute: moveRute,
    ));
    recomen.add(ItemRecomWid(
      icon: IconsH.favorite,
      available: ColorsH.rosa,
      asset: 'assets/images/malteada2.png',
      categ: 'Naturales',
      title: 'Malteadas tropicales',
      descr: 'Salsa clásica de la casa',
      price: 20.58,
      moveRute: moveRute,
    ));
    setState(() {});
  }
}
