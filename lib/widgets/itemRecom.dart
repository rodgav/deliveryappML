import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:flutter/material.dart';

class ItemRecomWid extends StatelessWidget {
  IconData icon;
  Color available;
  String asset;
  String categ;
  String title;
  String descr;
  double price;

  ItemRecomWid(
      {@required this.icon,
      @required this.available,
      @required this.asset,
      @required this.categ,
      @required this.title,
      @required this.descr,
      @required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 260,
      height: 160,
      child: Stack(
        children: [
          Container(
            width: 260,
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: ColorsH.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 130,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        categ,
                        style: TextStyle(color: ColorsH.text3),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        icon,
                        color: available,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  width: 120,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 12, color: ColorsH.text),
                  ),
                ),
                Container(
                    width: 120,
                    child: Text(
                      descr,
                      style: TextStyle(fontSize: 7, color: ColorsH.text2),
                    )),
                SizedBox(
                  height: 5,
                ),
                Container(
                    width: 130,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$$price',
                          style: TextStyle(fontSize: 14, color: ColorsH.text),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            color: ColorsH.white,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 0.0), //(x,y)
                                blurRadius: 1.0,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 10,
                            color: ColorsH.text,
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Image.asset(asset, fit: BoxFit.fill, height: 160,width: 130,),
        ],
      ),
    );
  }
}
