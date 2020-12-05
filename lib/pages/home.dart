import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:deliveryapp1mauriciolopez/widgets/appBar.dart';
import 'package:deliveryapp1mauriciolopez/widgets/bottonBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
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
                    height: 105,
                    margin:
                        EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 10),
                    padding: EdgeInsets.all(5),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: ColorsH.verde1),
                                child: ,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Tacos')
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: ColorsH.verde1),
                                child: Icon(IconsH.favorite),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Tacos')
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: ColorsH.verde1),
                                child: Icon(IconsH.favorite),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Tacos')
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: ColorsH.verde1),
                                child: Icon(IconsH.favorite),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Tacos')
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: ColorsH.verde1),
                                child: Icon(IconsH.favorite),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('Tacos')
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomBarWidget(size: size),
        ],
      ),
    );
  }
}
