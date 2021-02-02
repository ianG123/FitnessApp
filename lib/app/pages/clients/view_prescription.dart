import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'FormsA.dart';
import 'clients_controller.dart';
import 'estimate_calorie.dart';
import 'fitness_test.dart';
import 'goalsB.dart';

class ViewPrescription extends StatefulWidget {
  final String title;
  const ViewPrescription({Key key, this.title = "09/14/20"}) : super(key: key);

  @override
  _ViewPrescriptionState createState() => _ViewPrescriptionState();
}

class _ViewPrescriptionState
    extends ModularState<ViewPrescription, ClientsController> {
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
            child: Text("delete"),
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
                Icon(
                  Icons.blur_circular_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Diet Prescription',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            )),
        MyMenu(
            title: "Estimated Calorie Requirements",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Calories & Macronutrients",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Food Exchange",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Activity & Meal Plan",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
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
                Text('Exercise Prescription',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            )),
        MyMenu(
            title: "Exercise Calories Burned",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Steps to Distance Converter",
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
                Icon(
                  Icons.blur_circular_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Diet Prescription',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            )),
        MyMenu(
            title: "Estimated Calorie Requirements",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Calories & Macronutrients",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Food Exchange",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Activity & Meal Plan",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
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
                Text('Exercise Prescription',
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ],
            )),
        MyMenu(
            title: "Exercise Calories Burned",
            icon: Icons.blur_circular_outlined,
            warna: Colors.blue),
        MyMenu(
            title: "Steps to Distance Converter",
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
                          MaterialPageRoute(builder: (context) => EstimateCalorie()),
                        );
        },
        splashColor: Colors.blue[50],
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image(
                  image: AssetImage("assets/Folder.png"),
                  width: 60,
                  height: 60,
                  fit: BoxFit.scaleDown,
                  alignment: FractionalOffset.center),
                  SizedBox(width: 15,),
              Text(title, style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
