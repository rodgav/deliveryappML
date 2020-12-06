import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:flutter/material.dart';

class ItemUbicWid extends StatelessWidget {
  bool activate;
  String title;
  String descr;

  ItemUbicWid(
      {@required this.title,
      @required this.activate,
      @required this.descr});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.all(10),
      width: size.width * 0.38,
      decoration: BoxDecoration(
          color: activate ? ColorsH.morado : ColorsH.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: ColorsH.border)),
      child: Row(
        children: [
          Icon(
            IconsH.home,
            color: activate ? ColorsH.white : ColorsH.morado,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: activate ? ColorsH.white : ColorsH.morado,
                    fontSize: 10),
              ),
              Text(
               descr,
                style: TextStyle(
                    color: activate ? ColorsH.white : ColorsH.morado,
                    fontSize: 9),
              ),
            ],
          )
        ],
      ),
    );
  }
}
