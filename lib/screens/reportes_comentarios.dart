import 'package:flutter/material.dart';

class Coments extends StatefulWidget {
  Coments({Key key}) : super(key: key);

  @override
  _ComentsState createState() => _ComentsState();
}

class _ComentsState extends State<Coments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Container(
        child: Text("data"),
      ),
    );
  }
}
