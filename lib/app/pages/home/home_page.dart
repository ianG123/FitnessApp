import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:prototype/app/modules/batteriesdashboard/batteriesdashboard_page.dart';
import 'package:prototype/app/modules/clientdashboard/clientdashboard_page.dart';
import 'package:prototype/app/pages/batteries/batteries_page.dart';
import 'package:prototype/app/pages/clients/clients_page.dart';
import 'package:prototype/app/pages/settings/settings_page.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      drawer: buildPhoneGridView(orientation: orientation),
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        // leading: Icon(Icons.chevron_left),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.grey),
        ),
        //       actions: <Widget>[
        //   FlatButton(
        //     textColor: Colors.white,
        //     onPressed: () {},
        //     child: Text("Save"),
        //     shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
        //   ),
        // ],
      ),
      body: useMobileLayout
          ? buildPhoneGridView(orientation: orientation)
          : buildTabletGridView(orientation: orientation),
      bottomNavigationBar: Botnav(),
    );
  }
}

GridView buildPhoneGridView({@required Orientation orientation}) {
  return GridView.count(
    padding: EdgeInsets.all(20),
    crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
    children: <Widget>[
      MyMenu(
        title: "Clients",
      ),
      Batteries(
          title: "Batteries",
          icon: Icons.battery_alert_outlined,
          warna: Colors.blue),
      Settings(
          title: "Settings",
          icon: Icons.settings_applications_outlined,
          warna: Colors.blue),
    ],
  );
}

GridView buildTabletGridView({@required Orientation orientation}) {
  return GridView.count(
    crossAxisCount: orientation == Orientation.portrait ? 4 : 5,
    children: <Widget>[
      MyMenu(
        title: "Clients",
      ),
      Batteries(
          title: "Batteries",
          icon: Icons.battery_alert_outlined,
          warna: Colors.blue),
      Settings(
          title: "Settings",
          icon: Icons.settings_applications_outlined,
          warna: Colors.blue),
    ],
  );
}

class Botnav extends StatefulWidget {
  @override
  _BotnavState createState() => _BotnavState();
}

class _BotnavState extends State<Botnav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.5,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Color(0xff3D73DD),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(5.0),
          )),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: [
              IconButton(
                icon: new Image.asset("assets/Vector.png"),
                color: Colors.white,
                iconSize: 30,
                onPressed: () {},
              ),
              Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: new Image.asset("assets/Group.png"),
                color: Colors.white,
                iconSize: 36,
                onPressed: () {},
              ),
              Text(
                'Clients',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: new Image.asset("assets/Group (1).png"),
                color: Colors.white,
                iconSize: 36,
                onPressed: () {},
              ),
              Text(
                'Help',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna, this.icona});

  final String title;
  final ImageIcon icona;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ClientsPage()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/Clients.png"),
                  width: 80,
                  height: 80,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  Settings({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SettingsPage()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/Settings.png"),
                  width: 80,
                  height: 80,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class Batteries extends StatelessWidget {
  Batteries({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BatteriesPage()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/heart beat pulse.png"),
                  width: 80,
                  height: 80,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}
