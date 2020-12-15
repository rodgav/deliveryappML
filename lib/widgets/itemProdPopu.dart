import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:flutter/material.dart';

class ItemProdPopuWid extends StatelessWidget {
  IconData icon;
  Color available;
  String asset;
  String title;
  String description;
  double price;
  Function(BuildContext) moveRute;

  ItemProdPopuWid(
      {@required this.icon,
      @required this.available,
      @required this.asset,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.moveRute});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.45,
      decoration: BoxDecoration(
          color: ColorsH.white, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      margin: EdgeInsets.only(left: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            icon,
            size: 15,
            color: available,
          ),
          Center(
            child: Image.asset(
              asset,
              width: 145,
              height: 145,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(fontSize: 12, color: ColorsH.text2),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                description,
                style: TextStyle(fontSize: 7, color: ColorsH.text2),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '\$$price',
                style: TextStyle(fontSize: 14, color: ColorsH.text),
              ),
              Expanded(
                child: Container(),
              ),
              GestureDetector(
                child: Container(
                  height: 29,
                  width: 29,
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
                ),
                onTap: () {
                  moveRute(context);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
