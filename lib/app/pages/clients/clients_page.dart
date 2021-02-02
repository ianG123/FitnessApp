import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'add_client.dart';
import 'clients_controller.dart';
import 'view_client.dart';

class ClientsPage extends StatefulWidget {
  final String title;
  const ClientsPage({Key key, this.title = "Clients"}) : super(key: key);

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends ModularState<ClientsPage, ClientsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600;
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddClient()),
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
        //       actions: <Widget>[
        //   FlatButton(
        //     textColor: Colors.white,
        //     onPressed: () {},
        //     child: Text("Save"),
        //     shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
        //   ),
        // ],
      ),
      body: useMobileLayout
          ? buildPhoneGridView(orientation: orientation)
          : buildTabletGridView(orientation: orientation),
      bottomNavigationBar: Botnav(),
    );
  }

  GridView buildPhoneGridView({@required Orientation orientation}) {
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
      children: <Widget>[
        MyMenu(
            title: "Clients",
            icon: Icons.account_circle_rounded,
            warna: Colors.blue),
        MyMenu(
            title: "Clients",
            icon: Icons.account_circle_rounded,
            warna: Colors.blue),
        MyMenu(
            title: "Clients",
            icon: Icons.account_circle_rounded,
            warna: Colors.blue),
        MyMenu(
            title: "Clients",
            icon: Icons.account_circle_rounded,
            warna: Colors.blue),
      ],
    );
  }

  GridView buildTabletGridView({@required Orientation orientation}) {
    return GridView.count(
      crossAxisCount: orientation == Orientation.portrait ? 4 : 5,
      children: <Widget>[
        MyMenu(
            title: "Clients",
            icon: Icons.account_circle_rounded,
            warna: Colors.blue),
        MyMenu(
            title: "Clients",
            icon: Icons.account_circle_rounded,
            warna: Colors.blue),
        MyMenu(
            title: "Clients",
            icon: Icons.account_circle_rounded,
            warna: Colors.blue),
        MyMenu(
            title: "Clients",
            icon: Icons.account_circle_rounded,
            warna: Colors.blue),
      ],
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
            MaterialPageRoute(builder: (context) => ViewClient()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: <Widget>[
                     Image(
                  image: AssetImage("assets/Profile.png"),
                  width: 60,
                  height: 60,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                    SizedBox(
                      width: 30,
                    ),
                     Image(
                  image: AssetImage("assets/32.png"),
                  width: 40,
                  height: 40,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('John\nRobert', style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5, bottom: 10),
                child: Text('Primary Group', style: new TextStyle(fontSize: 12.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
