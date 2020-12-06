import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:flutter/material.dart';

class ButtonWid extends StatelessWidget {
  double width;
  double height;
  String text;

  ButtonWid({@required this.width, @required this.height, @required this.text});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              ColorsH.button1,
              ColorsH.button2,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Container(
          constraints: BoxConstraints(minWidth: width, minHeight: height),
          // min sizes for Material buttons
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: ColorsH.white),
          ),
        ),
      ),
    );
  }
}
