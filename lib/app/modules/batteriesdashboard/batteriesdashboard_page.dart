import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'batteriesdashboard_controller.dart';
import 'batteryname.dart';

final Color backgroundColor = Color(0xff3D73DD);

class BatteriesdashboardPage extends StatefulWidget {
  final String title;
  const BatteriesdashboardPage({Key key, this.title = "Batteriesdashboard"})
      : super(key: key);

  @override
  _BatteriesdashboardPageState createState() => _BatteriesdashboardPageState();
}

class _BatteriesdashboardPageState
    extends ModularState<BatteriesdashboardPage, BatteriesdashboardController> with SingleTickerProviderStateMixin  {
  //use 'controller' variable to access controller

  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.6).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 110),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BatteryName()),
            );
          },
        ),
      ),
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context),
          dashboard(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.perm_identity,
                  color: Colors.white,
                  size: 70,
                ),
                SizedBox(height: 10.0),
                Text(
                  'John Mayor',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 80.0),
                Row(
                  children: [
                    InkWell(
                        child: Icon(Icons.perm_identity, color: Colors.white),
                        onTap: () {}),
                    SizedBox(width: 13),
                    Text(
                      'My Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    InkWell(
                        child: Icon(Icons.public_outlined, color: Colors.white),
                        onTap: () {}),
                    SizedBox(width: 13),
                    Text(
                      'Visit ExRx.net',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    InkWell(
                        child: Icon(Icons.info_outline, color: Colors.white),
                        onTap: () {}),
                    SizedBox(width: 13),
                    Text(
                      'About Us',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    InkWell(
                        child: Icon(Icons.addchart_sharp, color: Colors.white),
                        onTap: () {}),
                    SizedBox(width: 13),
                    Text(
                      'Terms & Condition',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    InkWell(
                        child: Icon(Icons.tablet_android_outlined,
                            color: Colors.white),
                        onTap: () {}),
                    SizedBox(width: 13),
                    Text(
                      'App Tutorial',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    InkWell(
                        child: Icon(Icons.account_tree_outlined,
                            color: Colors.white),
                        onTap: () {}),
                    SizedBox(width: 13),
                    Text(
                      'Refer A Friend',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    InkWell(
                        child: Icon(Icons.logout, color: Colors.white),
                        onTap: () {}),
                    SizedBox(width: 13),
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.4 * screenWidth,
      bottom: 0,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
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
                          child: Icon(Icons.menu, color: Colors.grey[800]),
                          onTap: () {
                            setState(() {
                              if (isCollapsed)
                                _controller.forward();
                              else
                                _controller.reverse();
                              isCollapsed = !isCollapsed;
                            });
                          }),
                      Text(
                        'Batteries',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey[800],
                        ),
                      ),
                      Icon(Icons.toc_outlined, color: backgroundColor),
                    ]),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 320,
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              labelText: 'Search',
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
                    Icon(Icons.filter_list_alt , color: Colors.black),
                  ],
                ),
                Container(
                  height: 600,
                  child: Container(
                    padding: EdgeInsets.all(30.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: <Widget>[
                        MyMenu(
                            title: "Clients",
                            icon: Icons.account_circle_rounded,
                            warna: Colors.blue),
                        MyMenu(
                            title: "Batteries",
                            icon: Icons.account_circle_rounded,
                            warna: Colors.blue),
                        MyMenu(
                            title: "Settings",
                            icon: Icons.account_circle_rounded,
                            warna: Colors.blue),
                        MyMenu(
                            title: "Settings",
                            icon: Icons.account_circle_rounded,
                            warna: Colors.blue),
                        MyMenu(
                            title: "Settings",
                            icon: Icons.account_circle_rounded,
                            warna: Colors.blue),
                        MyMenu(
                            title: "Settings",
                            icon: Icons.account_circle_rounded,
                            warna: Colors.blue),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 93.5,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon, size: 50.0, color: warna),
                  SizedBox(width: 40,),
                  Icon(icon, size: 30.0, color: warna),

                ],
              ),
              SizedBox(height: 5),
              Text('Battery 1 Twoline', style: new TextStyle(fontSize: 17.0)),
              SizedBox(height: 5),
              Text('Testing', style: new TextStyle(fontSize: 15.0)),
              SizedBox(height: 10),
              Text('14-09-2020', style: new TextStyle(fontSize: 10.0, color: Colors.grey,)),
            ],
          ),
        ),
      ),
    );
  }
}