import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:prototype/app/modules/batteriesdashboard/selectTest.dart';

import 'clientdashboard_controller.dart';
import 'editClient.dart';
import 'goalsB.dart';

final Color backgroundColor = Color(0xff3D73DD);
enum SingingCharacter { lafayette, jefferson }

class GoalsA extends StatefulWidget {
  final String title;
  const GoalsA({Key key, this.title = "Businesstab"}) : super(key: key);

  @override
  _GoalsAState createState() => _GoalsAState();
}

class _GoalsAState
    extends ModularState<GoalsA, ClientdashboardController> {
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
                      child: Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.grey[800]),
                      onTap: () {}),
                  Text(
                    'Goals',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  InkWell(
                      child: Text(
                        'Save',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GoalsB()),
                        );
                      }),
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
                     Container(
                       width: 350,
                        height:40,
                        padding: EdgeInsets.all(8),
                        color: Colors.blue,
                        child: Text('Header',
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                            SizedBox(height: 5),
                            Text('Objectives'),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.0),),
                        labelText: '',
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
                    SizedBox(height: 5),
                     Text('Outcome Goals'),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.0),),
                        labelText: '',
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
                    SizedBox(height: 5),
                    Text('Behavioral Goals'),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1.0),),
                        labelText: '',
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
                    SizedBox(height: 1),
                    
                    SizedBox(height: 1),
                   
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
