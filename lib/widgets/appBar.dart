import 'package:deliveryapp1mauriciolopez/helpers/colors.dart';
import 'package:deliveryapp1mauriciolopez/helpers/icons.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  Size size;

  AppBarWidget({@required this.size});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: ColorsH.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 40,
                width: size.width * 0.3,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Buscar',
                      prefixIcon:
                          Icon(IconsH.search, size: 20, color: ColorsH.morado),
                      hintStyle: TextStyle(color: ColorsH.border),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: ColorsH.border, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: ColorsH.border, width: 2),
                      ),
                      contentPadding: EdgeInsets.zero),
                )),
            Container(
                height: 40,
                width: size.width * 0.3,
                child: Center(
                  child: Text(
                    'Inicio',
                    style: TextStyle(color: ColorsH.morado, fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                )),
            Container(
              height: 40,
              width: size.width * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(IconsH.notification, size: 25, color: ColorsH.agua),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(IconsH.percent, size: 25, color: ColorsH.rosa),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
