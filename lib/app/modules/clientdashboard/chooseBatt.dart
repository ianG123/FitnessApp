import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:prototype/app/modules/batteriesdashboard/selectTest.dart';

import 'clientdashboard_controller.dart';
import 'editClient.dart';
import 'goalsB.dart';

final Color backgroundColor = Color(0xff3D73DD);
enum SingingCharacter { lafayette, jefferson }

class ChooseBatt extends StatefulWidget {
  final String title;
  const ChooseBatt({Key key, this.title = "Businesstab"}) : super(key: key);

  @override
  _ChooseBattState createState() => _ChooseBattState();
}

class _ChooseBattState
    extends ModularState<ChooseBatt, ClientdashboardController> {
  //use 'controller' variable to access controller
  SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: groups(context),
    );
  }

  Widget groups(context) {
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
                            child: Icon(Icons.menu, color: Colors.grey[800]),
                            onTap: () {
                              // setState(() {
                              //   if (isCollapsed)
                              //     _controller.forward();
                              //   else
                              //     _controller.reverse();
                              //   isCollapsed = !isCollapsed;
                              // });
                            }),
                        Text(
                          'Choose Battery',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey[800],
                          ),
                        ),
                        Icon(Icons.toc_outlined, color: backgroundColor),
                      ]),
                  SizedBox(height: 1),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 320,
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                labelText: 'Search',
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Icon(Icons.filter_list_alt , color: Colors.black),
                    ],
                  ),
                  Container(
                    height: 590,
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: <Widget>[
                          MyMenu(
                              title: "Clients",
                              icon: Icons.account_circle_rounded,
                              warna: Colors.blue),
                          MyMenu(
                              title: "Batteries",
                              icon: Icons.account_circle_rounded,
                              warna: Colors.blue),
                          MyMenu(
                              title: "Settings",
                              icon: Icons.account_circle_rounded,
                              warna: Colors.blue),
                          MyMenu(
                              title: "Settings",
                              icon: Icons.account_circle_rounded,
                              warna: Colors.blue),
                          MyMenu(
                              title: "Settings",
                              icon: Icons.account_circle_rounded,
                              warna: Colors.blue),
                          MyMenu(
                              title: "Settings",
                              icon: Icons.account_circle_rounded,
                              warna: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 93.5,
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
                              icon: Icon(Icons.people_alt_rounded),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon, size: 50.0, color: warna),
                  SizedBox(width: 40,),
                  Icon(icon, size: 30.0, color: warna),

                ],
              ),
              SizedBox(height: 5),
              Text('Battery 1 Twoline', style: new TextStyle(fontSize: 17.0)),
              SizedBox(height: 5),
              Text('Testing', style: new TextStyle(fontSize: 15.0)),
              SizedBox(height: 10),
              Text('14-09-2020', style: new TextStyle(fontSize: 10.0, color: Colors.grey,)),
            ],
          ),
        ),
      ),
    );
  }
}