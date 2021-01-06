import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'businessgroup.dart';
import 'businesstab_controller.dart';

final Color backgroundColor = Color(0xff3D73DD);

class BusinesstabPage extends StatefulWidget {
  final String title;
  const BusinesstabPage({Key key, this.title = "Businesstab"})
      : super(key: key);

  @override
  _BusinesstabPageState createState() => _BusinesstabPageState();
}

class _BusinesstabPageState
    extends ModularState<BusinesstabPage, BusinesstabController> {
  //use 'controller' variable to access controller

  Businesstab one;
  Widget currentPage;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: business(context),
    );
  }

  Widget business(context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      elevation: 8,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(left: 0, right: 0, top: 55),
        child: Column(
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                      child: Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.grey[800]),
                      onTap: () {}),
                  Text(
                    'Business',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  Icon(Icons.toc_outlined, color: Colors.white),
                ]),
            SizedBox(height: 10),
            Container(
              height: 600,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Businessgroup()),
                        );
                      },
                      child: Text(
                        'Business Name',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 40),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Upload Business Logo',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 83.2),
            Container(
              height: 80.5,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Color(0xff3D73DD),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(5.0),
                      bottom: Radius.circular(40.0))),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home),
                        color: Colors.white,
                        iconSize: 36,
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
                        icon: Icon(Icons.settings),
                        color: Colors.white,
                        iconSize: 36,
                        onPressed: () {},
                      ),
                      Text(
                        'Settings',
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
                        icon: Icon(Icons.info_outline),
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
            )
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class Businesstab extends StatelessWidget {
  Businesstab({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}