import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:flutter/material.dart';

class ItemIngreWid extends StatelessWidget {
  String asset;
  String name;

  ItemIngreWid({@required this.asset, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            asset,
            width: 160,
            height: 160,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(color: ColorsH.text4, fontSize: 10),
        ),
      ],
    );
  }
}
