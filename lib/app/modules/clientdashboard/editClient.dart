import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:prototype/app/modules/batteriesdashboard/selectTest.dart';

import 'clientdashboard_controller.dart';

final Color backgroundColor = Color(0xff3D73DD);
enum SingingCharacter { lafayette, jefferson }
class EditClient extends StatefulWidget {
  final String title;
  const EditClient({Key key, this.title = "Businesstab"}) : super(key: key);

  @override
  _EditClientState createState() => _EditClientState();
}

class _EditClientState
    extends ModularState<EditClient, ClientdashboardController> {
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
                    'Edit Client',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  InkWell(
                      child: Text(
                        'Update',
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
              height: 600,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'First Name',
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
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Last Name',
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
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text('Gender'),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                flex: 1,
                                child: Row(
                                  children: [
                                    Radio(
                                        value: 1, groupValue: 'null', onChanged: (index) {}),
                                    Expanded(
                                        child: Text(
                                          'Male',
                                          maxLines: 2,
                                        ))
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Radio(
                                        value: 1, groupValue: 'null', onChanged: (index) {}),
                                    Text('Female')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Date Of Birth',
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
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Age',
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
                        ),
                      ],
                    ),
                    SizedBox(height: 1),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone',
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
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
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
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Street Address',
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
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'City',
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
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'State',
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
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Postal Code',
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
                        ),
                      ],
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
