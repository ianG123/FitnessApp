import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'FormsA.dart';
import 'clients_controller.dart';
import 'fitness_test.dart';
import 'goalsB.dart';

class ViewBattery extends StatefulWidget {
  final String title;
  const ViewBattery({Key key, this.title = "View Battery 1"}) : super(key: key);

  @override
  _ViewBatteryState createState() => _ViewBatteryState();
}

class _ViewBatteryState extends ModularState<ViewBattery, ClientsController> {
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
        actions: <Widget>[
          FlatButton(
            textColor: Colors.blue,
            onPressed: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FitnessTest()),
                        );
            },
            child: Text("Select"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: useMobileLayout
          ? buildPhoneGridView(orientation: orientation)
          : buildTabletGridView(orientation: orientation),
      bottomNavigationBar: Botnav(),
    );
  }
  

  ListView buildPhoneGridView({@required Orientation orientation}) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        Container(
            height: 50,
            padding: EdgeInsets.all(14),
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.blur_circular_outlined,color: Colors.white,),
                SizedBox(width: 20,),
                Text('Body Composition',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            )),
        MyMenu(
            title: "Body Weight",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Jackson-Pollock 3-Pinch Body Fat",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        Container(
            height: 50,
            padding: EdgeInsets.all(14),
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.blur_circular_outlined,color: Colors.white,),
                SizedBox(width: 20,),
                Text('Circumference',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            )),
        MyMenu(
            title: "Body Weight",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Jackson-Pollock 3-Pinch Body Fat",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
      ],
    );
  }

  ListView buildTabletGridView({@required Orientation orientation}) {
    return ListView(
      children: <Widget>[
        Container(
            height: 50,
            padding: EdgeInsets.all(14),
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.blur_circular_outlined,color: Colors.white,),
                SizedBox(width: 20,),
                Text('Body Composition',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            )),
        MyMenu(
            title: "Body Weight",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Jackson-Pollock 3-Pinch Body Fat",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
       Container(
            height: 50,
            padding: EdgeInsets.all(14),
            color: Colors.blue,
            child: Row(
              children: [
                Icon(Icons.blur_circular_outlined,color: Colors.white,),
                SizedBox(width: 20,),
                Text('Circumference',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            )),
        MyMenu(
            title: "Body Weight",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Jackson-Pollock 3-Pinch Body Fat",
            icon: Icons.blur_circular_outlined,
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
        onTap: () {},
        splashColor: Colors.blue[50],
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               Image(
                  image: AssetImage("assets/Web.png"),
                  width: 60,
                  height: 60,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(width: 15,),
              Text(title, style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}