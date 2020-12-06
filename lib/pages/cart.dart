import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:deliveryapp1mauriciolopez/widgets/bottonBar.dart';
import 'package:deliveryapp1mauriciolopez/widgets/button.dart';
import 'package:deliveryapp1mauriciolopez/widgets/itemCarr.dart';
import 'package:deliveryapp1mauriciolopez/widgets/itemUbic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  List<ItemUbicWid> ubics = [
    ItemUbicWid(
        title: 'Mi casa', activate: true, descr: 'Dirección de ejemplo'),
    ItemUbicWid(
        title: 'Mi trabajo', activate: false, descr: 'Dirección de ejemplo'),
  ];

  List<ItemCarrWid> carritos = [
    ItemCarrWid(
        title: 'Big Burger Queso',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, '
            'atque eaque eius esse et harum inventore ipsam  nam necessitatibus'
            ' nemo pariatur provident.',
        asset: 'assets/images/bigBurQue1.png',
        price: 20.0,
        quantity: 2),
    ItemCarrWid(
        title: 'Big Burger Queso',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, '
            'atque eaque eius esse et harum inventore ipsam  nam necessitatibus'
            ' nemo pariatur provident.',
        asset: 'assets/images/bigBurQue2.png',
        price: 20.0,
        quantity: 1),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ColorsH.bg,
        appBar: AppBar(
          backgroundColor: ColorsH.white,
          title: Text(
            'Carrito',
            style: TextStyle(fontSize: 22, color: ColorsH.morado),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.79,
                              height: size.width * 0.12,
                              child: ListView(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: ubics,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              width: size.width * 0.12,
                              height: size.width * 0.12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: ColorsH.morado),
                              child: Icon(
                                Icons.add,
                                color: ColorsH.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height * 0.3,
                        margin: EdgeInsets.only(
                          top: 25,
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: carritos,
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height * 0.22,
                        margin: EdgeInsets.all(
                          20,
                        ),
                        decoration: BoxDecoration(
                            color: ColorsH.GREY1,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: 30, right: 20, left: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SubTotal:',
                                    style: TextStyle(
                                        color: ColorsH.text, fontSize: 11),
                                  ),
                                  Text(
                                    '\$85.00 USD',
                                    style: TextStyle(
                                        color: ColorsH.text, fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 5, right: 20, left: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Envio:',
                                    style: TextStyle(
                                        color: ColorsH.text, fontSize: 11),
                                  ),
                                  Text(
                                    'Gratis',
                                    style: TextStyle(
                                        color: ColorsH.text, fontSize: 11),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 5, right: 25, left: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total:',
                                    style: TextStyle(
                                        color: ColorsH.morado, fontSize: 17),
                                  ),
                                  Text(
                                    '\$85.00 USD',
                                    style: TextStyle(
                                        color: ColorsH.morado, fontSize: 17),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            ButtonWid(
                                width: size.width,
                                height: 63.0,
                                text: 'Realizar compra')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BottomBarWidget(size: size)
          ],
        ));
  }
}
