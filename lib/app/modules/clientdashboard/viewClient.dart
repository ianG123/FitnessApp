import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:prototype/app/modules/batteriesdashboard/selectTest.dart';
import 'package:prototype/app/modules/clientdashboard/Forms.dart';
import 'package:prototype/app/modules/clientdashboard/assessment.dart';

import 'clientdashboard_controller.dart';
import 'editClient.dart';
import 'prescription.dart';

final Color backgroundColor = Color(0xff3D73DD);
enum SingingCharacter { lafayette, jefferson }
class ViewClient extends StatefulWidget {
  final String title;
  const ViewClient({Key key, this.title = "Businesstab"}) : super(key: key);

  @override
  _ViewClientState createState() => _ViewClientState();
}

class _ViewClientState
    extends ModularState<ViewClient, ClientdashboardController> {
  //use 'controller' variable to access controller
  SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 110),
        child: FloatingActionButton(
          child: Icon(Icons.edit_rounded ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditClient()),
            );
          },
        ),
      ),
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
                    'View Client',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  InkWell(
                      child: Text(
                        'Delete',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SelectTest()),
                        // );
                      }),
                ]),
            SizedBox(height: 10),
            Container(
              height: 683.1,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 1),
                    Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.person_pin,
                            color: Colors.blue,
                            size: 100,
                          ),
                          SizedBox(height: 5),
                          Text('John Robbert', style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    Text('Male'),
                     SizedBox(height: 2),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: Text('12/12/1990')
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 150,
                          child: Text('25yr')
                        ),
                      ],
                    ),
                     SizedBox(height: 2),
                    Text('662-754-8357'),
                    SizedBox(height: 2),
                    Text('johnrobbert@gmail.com'),
                    SizedBox(height: 2),
                    Text('345 Elm St.'),
                    SizedBox(height: 2),
                    Text('Kansas City'),
                    SizedBox(height: 2),
                    Text('MO 66715'),
                    SizedBox(height: 2),
                    Text('Main Group'),
                    SizedBox(height: 2),
                    Text('Sub Group'),
                    SizedBox(height: 2),
                    Text('Location'),
                    Container(
              height: 315,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: ListView(
                  padding: EdgeInsets.only(top: 1),
                  children: <Widget>[
                    MyMenu(
                        title: "Forms",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                        MyMenutwo(
                        title: "Assesments",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                        MyMenuThree(
                        title: "Prescription",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                    
                  ],
                ),
                
              ),
            ),
                  ],
                ),
              ),
            ),
            Botnav(),
          ],
        ),
      ),
    );
  }
}

class MyMenuThree extends StatelessWidget {
  MyMenuThree({this.title, this.icon, this.warna});

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
                          MaterialPageRoute(builder: (context) => PrescriptionPage()),
                        );
        },
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
        onTap: () {
          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AssessmentPage()),
                        );
        },
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
        onTap: () {
          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FormsPage()),
                        );
        },
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
            );
  }
}