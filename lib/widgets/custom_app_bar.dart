import 'package:flutter/material.dart';
import 'package:flutter_covid/config/palette.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  SimpleHiddenDrawerController control;
  final double height;
  final AssetImage image;
  final String title;
  MyCustomAppBar({
    Key key,
    @required this.height,
    @required this.control,
    @required this.image,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //padding: EdgeInsets.all(60),

          child: Stack(
            children: <Widget>[
              Hero(
                tag: 'photo',
                child: Image(
                  height: height + 24,
                  width: MediaQuery.of(context).size.width,
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black26,
                height: height + 24,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 150.0),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50.0),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 45,
                            ),
                            onPressed: () {
                              control.toggle();
                            },
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10.0, top: 50.0),
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    title,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 8, right: 10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

/*

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  SimpleHiddenDrawerController control;
  final String title;
  final double contentHeight = 200.0;

  CustomAppBar(this.control, this.title);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          // SizedBox(height: 30,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(),
              Hero(
                tag: 'Appbar',
                child: Card(
                  child: InkWell(
                    onTap: () {
                      control.toggle();
                    },
                    child: Container(
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      width: 50,
                      height: 50,
                    ),
                  ),
                  /*  child: MaterialButton(

                    height: 50,
                    minWidth: 50,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      control.toggle();
                    },
                  ), */
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Hero(
                tag: 'title',
                transitionOnUserGestures: true,
                child: Card(
                  elevation: 10,
                  /* shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                    ),
                  ), */
                  child: InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 50,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              // color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget kBackBtn = Icon(
    Icons.menu,
    color: Colors.black,
  );
  @override
  Size get preferredSize => Size.fromHeight(contentHeight);
}*/
