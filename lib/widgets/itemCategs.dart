import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:flutter/material.dart';

class ItemCategsWid extends StatelessWidget {
  Color color;
  String assets;
  String name;

  ItemCategsWid(
      {@required this.color, @required this.assets, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(left: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: color),
            child: Image.asset(assets),
          ),
          SizedBox(
            height: 5,
          ),
          Text(name)
        ],
      ),
    );
  }
}
