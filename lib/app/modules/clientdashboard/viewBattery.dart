import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:prototype/app/modules/clientdashboard/fitnessTest.dart';

import 'clientdashboard_controller.dart';

final Color backgroundColor = Color(0xff3D73DD);

class ViewBatteryClient extends StatefulWidget {
  final String title;
  const ViewBatteryClient({Key key, this.title = "Businesstab"}) : super(key: key);

  @override
  _ViewBatteryClientState createState() => _ViewBatteryClientState();
}

class _ViewBatteryClientState
    extends ModularState<ViewBatteryClient, ClientdashboardController> {
  //use 'controller' variable to access controller


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: dashboard(context),
    );
  }

  Widget dashboard(context) {
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
                    'View Battery 1',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  InkWell(
                      child: Text('Select',
                      style:TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                      onTap: () {
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FitnessTest()),
            );
                      }),
                ]),
            SizedBox(height: 48),
            
            Container(
              height: 600,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: ListView(
                  padding: EdgeInsets.only(top: 1),
                  children: <Widget>[
                    SizedBox(height:15),
                    Container(
                        height:30,
                        padding: EdgeInsets.all(8),
                        color: Colors.blue,
                        child: Text('Body Composition',
                            style:TextStyle(
                              color: Colors.white,
                            ))),
                    SizedBox(height:15),
                    MyMenu(
                        title: "Body Weight",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                    MyMenutwo(
                        title: "Jackson-Polluck 3-Pinch Body Fat",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                    SizedBox(height:15),
                    Container(
                        height:30,
                        padding: EdgeInsets.all(8),
                        color: Colors.blue,
                        child: Text('Circumference',
                            style:TextStyle(
                              color: Colors.white,
                            ))),
                    SizedBox(height:15),
                    MyMenuthree(
                        title: "Body Weight",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                    MyMenufour(
                        title: "Jackson-Polluck 3-Pinch Body Fat",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45),
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
                        icon: Icon(Icons.view_module),
                        color: Colors.white,
                        iconSize: 36,
                        onPressed: () {},
                      ),
                      Text(
                        'Add',
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
                        icon: Icon(Icons.edit),
                        color: Colors.white,
                        iconSize: 36,
                        onPressed: () {},
                      ),
                      Text(
                        'Edit',
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
                        icon: Icon(Icons.visibility),
                        color: Colors.white,
                        iconSize: 36,
                        onPressed: () {},
                      ),
                      Text(
                        'View',
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
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenutwo extends StatelessWidget {
  MyMenutwo({this.title, this.icon, this.warna});

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
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}
class MyMenuthree extends StatelessWidget {
  MyMenuthree({this.title, this.icon, this.warna});

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
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenufour extends StatelessWidget {
  MyMenufour({this.title, this.icon, this.warna});

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
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenufive extends StatelessWidget {
  MyMenufive({this.title, this.icon, this.warna});

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
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}
