import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'clients_controller.dart';
import 'goalsA.dart';

class FormsA extends StatefulWidget {
  final String title;
  const FormsA({Key key, this.title = "09/14/20 Forms"}) : super(key: key);

  @override
  _FormsAState createState() => _FormsAState();
}

class _FormsAState extends ModularState<FormsA, ClientsController> {
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
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => AddClient()),
            // );
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
            onPressed: () {},
            child: Text("Delete"),
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
        MyMenu(
            title: "Goals",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Curent Activity & Interests",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Current Diet",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
       Container(
            height: 50,
            padding: EdgeInsets.all(14),
            color: Colors.blue,
            child: Text('Informed Consent',
                style: TextStyle(color: Colors.white, fontSize: 17))),
        MyMenu(
            title: "Fitness Testing Consent Form",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Fitness Testing and Exercise Part",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
      ],
    );
  }

  ListView buildTabletGridView({@required Orientation orientation}) {
    return ListView(
      children: <Widget>[
        MyMenu(
            title: "Goals",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Curent Activity & Interests",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Current Diet",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
         Container(
            height: 50,
            padding: EdgeInsets.all(14),
            color: Colors.blue,
            child: Text('Informed Consent',
                style: TextStyle(color: Colors.white, fontSize: 17))),
        MyMenu(
            title: "Fitness Testing Consent Form",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Fitness Testing and Exercise Part",
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
        onTap: () {
          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GoalsA()),
                        );
        },
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
              SizedBox(width: 20,),
              Text(title, style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

