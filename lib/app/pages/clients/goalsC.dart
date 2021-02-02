import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'FormsA.dart';
import 'clients_controller.dart';
import 'goalsB.dart';

class GoalsC extends StatefulWidget {
  final String title;
  const GoalsC({Key key, this.title = "Goals"}) : super(key: key);

  @override
  _GoalsCState createState() => _GoalsCState();
}

class _GoalsCState extends ModularState<GoalsC, ClientsController> {
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
                          MaterialPageRoute(builder: (context) => GoalsB()),
                        );
          
            },
            child: Text("Update", style: TextStyle(fontWeight: FontWeight.bold),),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
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
                  child: Text('Header',
                      style: TextStyle(color: Colors.white, fontSize: 17))),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                   SizedBox(height: 25),
                  Text(
                    'Objectives',
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
                      labelText: '175.00',
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
                  SizedBox(height: 20),
                  Text(
                    'Outcome Goals',
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
                      labelText: '175.00',
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
                  SizedBox(height: 20),
                  Text(
                    'Behavioral Goals',
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
                      labelText: '175.00',
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
