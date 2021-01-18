import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:prototype/app/modules/batteriesdashboard/selectTest.dart';

import 'FormsDate.dart';
import 'clientdashboard_controller.dart';
import 'editClient.dart';
import 'prescriptiondate.dart';

final Color backgroundColor = Color(0xff3D73DD);
enum SingingCharacter { lafayette, jefferson }

class PrescriptionPage extends StatefulWidget {
  final String title;
  const PrescriptionPage({Key key, this.title = "Businesstab"}) : super(key: key);

  @override
  _PrescriptionPageState createState() => _PrescriptionPageState();
}

class _PrescriptionPageState
    extends ModularState<PrescriptionPage, ClientdashboardController> {
  //use 'controller' variable to access controller
  SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 110),
        child: FloatingActionButton(
          child: Icon(Icons.add ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditClient()),
            );
          },
        ),
      ),
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
                    'Prescription',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  InkWell(
                      child: Text('Save',
                      style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                      onTap: () {}),
                ]),
            SizedBox(height: 30),
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
              height: 600,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: ListView(
                  padding: EdgeInsets.only(top: 1),
                  children: <Widget>[
                    MyMenu(
                        title: "09/14/2020",
                        icon: Icons.support ,
                        warna: Colors.blue),
                    MyMenutwo(
                        title: "09/14/2020",
                        icon: Icons.support ,
                        warna: Colors.blue),
                    MyMenuthree(
                        title: "09/14/2020",
                        icon: Icons.support ,
                        warna: Colors.blue),
                    MyMenufour(
                        title: "09/14/2020",
                        icon: Icons.support ,
                        warna: Colors.blue),
                    MyMenufive(
                        title: "09/14/2020",
                        icon: Icons.support ,
                        warna: Colors.blue),
                  ],
                ),
              ),
            ),
            SizedBox(height: 4),
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
        onTap: () {
          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PrescriptionD()),
                        );
        },
        splashColor: Colors.blue[50],
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 60.0, color: warna),
              SizedBox(width: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0)),
              SizedBox(width: 140,),
              Icon(Icons.radio_button_off, size: 40.0, color: warna),
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
              Icon(icon, size: 60.0, color: warna),
              SizedBox(width: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0)),
              SizedBox(width: 140,),
              Icon(Icons.radio_button_off, size: 40.0, color: warna),
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
              Icon(icon, size: 60.0, color: warna),
              SizedBox(width: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0)),
              SizedBox(width: 140,),
              Icon(Icons.radio_button_off, size: 40.0, color: warna),
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
              Icon(icon, size: 60.0, color: warna),
              SizedBox(width: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0)),
              SizedBox(width: 140,),
              Icon(Icons.radio_button_off, size: 40.0, color: warna),
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
              Icon(icon, size: 60.0, color: warna),
              SizedBox(width: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0)),
              SizedBox(width: 140,),
              Icon(Icons.radio_button_off, size: 40.0, color: warna),
            ],
          ),
        ),
      ),
    );
  }
}
