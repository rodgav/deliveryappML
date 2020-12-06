import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:flutter/material.dart';

class ItemCarrWid extends StatelessWidget {
  String title;
  String descr;
  String asset;
  double price;
  int quantity;

  ItemCarrWid(
      {@required this.title,
      @required this.descr,
      @required this.asset,
      @required this.price,
      @required this.quantity});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.55,
      height: size.height * 0.3,
      margin: EdgeInsets.only(left: 15.0),
      child: Stack(
        children: [
          Container(
            width: size.width * 0.55,
            height: size.height * 0.3,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: ColorsH.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 0.0), //(x,y)
                    blurRadius: 1.0,
                  ),
                ]),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(asset),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 19, color: ColorsH.text),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  descr,
                  style: TextStyle(fontSize: 9, color: ColorsH.text5),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                            color: ColorsH.GREY0,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.west_rounded,
                          color: ColorsH.morado,
                        ),
                      ),
                      Container(
                        width: 24.0,
                        height: 24.0,
                        child: Center(
                          child: Text(quantity.toString()),
                        ),
                      ),
                      Container(
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                            color: ColorsH.GREY0,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.add,
                          color: ColorsH.morado,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        '\$$price',
                        style: TextStyle(fontSize: 20, color: ColorsH.agua),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: size.width * 0.08,
              height: size.width * 0.08,
              decoration: BoxDecoration(
                  color: ColorsH.rosa,
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                IconsH.trash,
                color: ColorsH.white,
                size: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
