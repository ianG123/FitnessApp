import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'batteries_controller.dart';
import 'battery_name.dart';
import 'body_composition.dart';
import 'circumference.dart';

class SelectTest extends StatefulWidget {
  final String title;
  const SelectTest({Key key, this.title = "Select Test"}) : super(key: key);

  @override
  _SelectTestState createState() => _SelectTestState();
}

class _SelectTestState extends ModularState<SelectTest, BatteriesController> {
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

  GridView buildPhoneGridView({@required Orientation orientation}) {
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
      children: <Widget>[
        MyMenu(
            title: "Body Composition",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenutwo(
            title: "Circumference",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenuthree(
            title: "Cardiovascular",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenufour(
            title: "Flexibility/Mobility",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenufive(
            title: "Mascular Power",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenusix(
            title: "Speed",
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
            title: "Body Composition",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenutwo(
            title: "Circumference",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenuthree(
            title: "Cardiovascular",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenufour(
            title: "Flexibility/Mobility",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenufive(
            title: "Mascular Power",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenusix(
            title: "Speed",
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
            MaterialPageRoute(builder: (context) => BodyComposition()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/Web.png"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(height: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
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
            MaterialPageRoute(builder: (context) => Circumference()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/Web.png"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(height: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/Web.png"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(height: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/Web.png"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(height: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/Web.png"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(height: 20,),
             Text(title, style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenusix extends StatelessWidget {
  MyMenusix({this.title, this.icon, this.warna});

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
              Image(
                  image: AssetImage("assets/Web.png"),
                  width: 70,
                  height: 70,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(height: 20,),
              Text(title, style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
