import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({
    this.onPressed,
    this.icon,
    this.text,
  });
  Function onPressed;
  final Widget icon;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 16, right: 8),
                  child: icon,
                ),
                Expanded(child: text),
                Expanded(
                  child: Icon(Icons.navigate_next, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8, right: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
