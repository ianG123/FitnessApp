import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'FormsA.dart';
import 'clients_controller.dart';
import 'goalsB.dart';
import 'reports.dart';

class FitnessTest extends StatefulWidget {
  final String title;
  const FitnessTest({Key key, this.title = "Fitness Test 1"}) : super(key: key);

  @override
  _FitnessTestState createState() => _FitnessTestState();
}

class _FitnessTestState extends ModularState<FitnessTest, ClientsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.chevron_left),
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.grey),
        ),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Reports()),
              );
            },
            child: Text(
              "Save",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
        // actions: <Widget>[
        //   PopUpOptionMenu(),
        // ],
      ),
      body: Forms(),
      bottomNavigationBar: Botnav(),
    );
  }
}

class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: 50,
                padding: EdgeInsets.all(14),
                color: Colors.blue,
                child: Row(
                  children: [
                    Icon(
                      Icons.blur_circular_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Body Composition',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ],
                )),
            Container(
                height: 50,
                padding: EdgeInsets.all(14),
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(
                      Icons.blur_circular_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Body Weight',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Weight(Lbs)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 220,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[200], width: 1.0),
                            ),
                            labelText: ' ',
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
            Container(
                height: 50,
                padding: EdgeInsets.all(14),
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(
                      Icons.blur_circular_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Jackson-Polluck 3-Pinch Body Fat',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Chest(mm)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 220,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[200], width: 1.0),
                            ),
                            labelText: ' ',
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Abdoment(mm)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 220,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[200], width: 1.0),
                            ),
                            labelText: ' ',
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
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Thigh(mm)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 220,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey[200], width: 1.0),
                            ),
                            labelText: ' ',
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
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50,
                padding: EdgeInsets.all(14),
                color: Colors.blue,
                child: Row(
                  children: [
                    Icon(
                      Icons.blur_circular_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Circumference',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ],
                )),
                Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Notes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[200], width: 1.0),
                      ),
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
                  
                  
                ],
              ),
            ),
          ],
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

enum MenuOption{Save, Draft, Discard}

class PopUpOptionMenu extends StatelessWidget {
  const PopUpOptionMenu({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context){
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text('Print Report'),
            value: MenuOption.Save,
          ),
          PopupMenuItem(
            child: Text('Save as PDF'),
            value: MenuOption.Draft,
          ),
          PopupMenuItem(
            child: Text('Share PDF'),
            value: MenuOption.Discard,
          ),
          PopupMenuItem(
            child: Text('Delete'),
            value: MenuOption.Discard,
          )
        ];
      }
    );
  }
}