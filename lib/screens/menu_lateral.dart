import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'screens.dart';
import 'package:flutter_covid/widgets/widgets.dart';
import 'package:flutter_covid/config/palette.dart';
import 'package:flutter_covid/widgets/custom_app_bar.dart';

class MenuHome extends StatelessWidget {
  String Nombre;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SimpleHiddenDrawer(
      menu: Menu(),
      screenSelectedBuilder: (position, controller) {
        Widget screenCurrent;

        switch (position) {
          case 0:
            screenCurrent = HomeScreen();
            Nombre = "Restaurantes";
            break;
          case 1:
            screenCurrent = StatsScreen();
            Nombre = "Configuración";
            break;
          case 2:
            screenCurrent = Coments();
            Nombre = "Reportes";
            break;
        }

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: MyCustomAppBar(
            control: controller,
            height: 250,
            image: AssetImage('assets/images/rest.png'),
            title: Nombre,
          ),
          //CustomAppBar(controller, Nombre),
          body: screenCurrent,
        );
      },
    );
  }
}

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  SimpleHiddenDrawerController controller;
  @override
  void didChangeDependencies() {
    controller = SimpleHiddenDrawerController.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Palette.secundaryColor,
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
              ),
              Text(
                'Menú',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              DrawerItem(
                text: Text(
                  'Restaurantes',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                icon: Icon(Icons.bookmark_border, color: Colors.white),
                onPressed: () {
                  controller.setSelectedMenuPosition(0);
                },
              ),
              DrawerItem(
                text: Text(
                  'Reportes y Comentarios',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                icon: Icon(Icons.feedback, color: Colors.white),
                onPressed: () {
                  controller.setSelectedMenuPosition(2);
                },
              ),
              DrawerItem(
                text: Text(
                  'Configuración',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () {
                  controller.setSelectedMenuPosition(1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/* lass Menu_home extends StatefulWidget {
  Menu_home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Menu_home> {
  List<ScreenHiddenDrawer> itens = new List();

 @override
   /*void initState() {
    itens.add(
      new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Restaurantes",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 15.0),
          colorLineSelected: Colors.orange,
        ),
        HomeScreen(),
      ),
    );

    itens.add(
      new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Metodos de pago",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 15.0),
          colorLineSelected: Colors.orange,
        ),
        StatsScreen(),
      ),
    );
    itens.add(
      new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Reportes y comentarios",
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 15.0),
          colorLineSelected: Colors.orange,
        ),
        Coments(),
      ),
    );

    super.initState(); */
  } */

/*   Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurpleAccent,
      backgroundColorAppBar: Colors.orange,
      screens: itens,
      //    typeOpen: TypeOpen.FROM_RIGHT,
      //    disableAppBarDefault: false,
      //    enableScaleAnimin: true,
      //    enableCornerAnimin: true,
      slidePercent: 55.0,
      verticalScalePercent: 90.0,
      contentCornerRadius: 40.0,
      //    iconMenuAppBar: Icon(Icons.menu),
      //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    whithAutoTittleName: true,
      //    styleAutoTittleName: TextStyle(color: Colors.red),
      //    actionsAppBar: <Widget>[],
      //    backgroundColorContent: Colors.blue,
      //    elevationAppBar: 4.0,
      //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
      //    enableShadowItensMenu: true,
      //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
} */

/* class Menu extends StatefulWidget {
  @override
  _SecondSreenState createState() => _MenuState();
}

class _MenuState extends State<SecondSreen> {
  SimpleHiddenDrawerController controller;

  @override
  void didChangeDependencies() {
    controller = SimpleHiddenDrawerController.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.cyan,
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                controller.setSelectedMenuPosition(0);
              },
              child: Text("Menu 1"),
            ),
            RaisedButton(
              onPressed: () {
                controller.setSelectedMenuPosition(1);
              },
              child: Text("Menu 2"),
            )
          ],
        ),
      ),
    );
  }
}
 */
