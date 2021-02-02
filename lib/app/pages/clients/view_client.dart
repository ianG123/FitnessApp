import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'assessments.dart';
import 'clients_controller.dart';
import 'edit_client.dart';
import 'forms.dart';

class ViewClient extends StatefulWidget {
  final String title;
  const ViewClient({Key key, this.title = "View Client"}) : super(key: key);

  @override
  _ViewClientState createState() => _ViewClientState();
}

class _ViewClientState extends ModularState<ViewClient, ClientsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditClient()),
            );
          },
        ),
      ),
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => SelectTest()),
              // );
            },
            child: Text(
              "Delete",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: SingleChildScrollView(child: Forms()),
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
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 1),
            Center(
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.person_pin,
                    color: Colors.blue,
                    size: 100,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'John Robbert',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: <Widget>[
                Row(
                  children: [
                    Icon(Icons.people_alt_rounded),
                    SizedBox(width: 10),
                    Text('Male'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.date_range),
                SizedBox(width: 10),
                Container(width: 137, child: Text('12/12/1990')),
                SizedBox(width: 10),
                Icon(Icons.date_range),
                SizedBox(width: 10),
                Container(width: 137, child: Text('25yr')),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: <Widget>[
                    Icon(Icons.local_phone_rounded),
                    SizedBox(width: 10),
                    Text('662-754-8357'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children:<Widget> [
                Row(
                  children: <Widget>[
                    Icon(Icons.email),
                    SizedBox(width: 10),
                    Text('johnrobbert@gmail.com'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on_rounded),
                    SizedBox(width: 10),
                    Text('345 Elm St.'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on_rounded),
                    SizedBox(width: 10),
                    Text('Kansas City'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on_rounded),
                    SizedBox(width: 10),
                    Text('MO 66715'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.people_alt_rounded),
                    SizedBox(width: 10),
                    Text('Main Group'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.people_alt_rounded),
                    SizedBox(width: 10),
                    Text('Sub Group'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on_rounded),
                    SizedBox(width: 10),
                    Text('Location'),
                  ],
                ),
              ],
            ),
             SizedBox(height: 20),
            Container(
              height: 300,
              child: Container(
                padding: EdgeInsets.all(0),
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
          // Navigator.push(
          //                 context,
          //                 MaterialPageRoute(builder: (context) => PrescriptionPage()),
          //               );
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
                          MaterialPageRoute(builder: (context) => Assessments()),
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
