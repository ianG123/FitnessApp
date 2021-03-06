import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'FormsA.dart';
import 'chartComparison.dart';
import 'chart_report.dart';
import 'clients_controller.dart';
import 'goalsB.dart';
import 'text_report.dart';

class Reports extends StatefulWidget {
  final String title;
  const Reports({Key key, this.title = "Reports"}) : super(key: key);

  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends ModularState<Reports, ClientsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final double shortestSide = MediaQuery.of(context).size.shortestSide;
    final bool useMobileLayout = shortestSide < 600;
    final Orientation orientation = MediaQuery.of(context).orientation;
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
}

GridView buildPhoneGridView({@required Orientation orientation}) {
  return GridView.count(
    padding: EdgeInsets.all(20),
    crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
    children: <Widget>[
     MyMenu(
                        title: "Chart Report",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                    MyMenutwo(
                        title: "Comparison Report",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                    MyMenuthree(
                        title: "Text Report",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
    ],
  );
}

GridView buildTabletGridView({@required Orientation orientation}) {
  return GridView.count(
    crossAxisCount: orientation == Orientation.portrait ? 4 : 5,
    children: <Widget>[
     MyMenu(
                        title: "Chart Report",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                    MyMenutwo(
                        title: "Comparison Report",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
                    MyMenuthree(
                        title: "Text Report",
                        icon: Icons.blur_circular_outlined,
                        warna: Colors.blue),
    ],
  );
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
            MaterialPageRoute(builder: (context) => ChartsDemo()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/graph.png"),
                  width: 80,
                  height: 80,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(width: 20,),
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
            MaterialPageRoute(builder: (context) => ChartComparison()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/graph.png"),
                  width: 80,
                  height: 80,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(width: 20,),
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
        onTap: () {
           Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TextReport()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/TextR.png"),
                  width: 80,
                  height: 80,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(width: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0)),
            ],
          ),
        ),
      ),
    );
  }
}
