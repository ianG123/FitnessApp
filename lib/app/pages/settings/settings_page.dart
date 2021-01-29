import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'business.dart';
import 'groups.dart';
import 'settings_controller.dart';

class SettingsPage extends StatefulWidget {
  final String title;
  const SettingsPage({Key key, this.title = "Settings"}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState
    extends ModularState<SettingsPage, SettingsController> {
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
      Businesstab(
          title: "Business", icon: Icons.account_balance, warna: Colors.blue),
      GroupTab(
          title: "Groups", icon: Icons.people_alt_rounded, warna: Colors.blue),
      Locationpage(
          title: "Default Units",
          icon: Icons.straighten_rounded,
          warna: Colors.blue),
      MyMenu(
          title: "Upgrade to Company Account",
          icon: Icons.account_tree_rounded,
          warna: Colors.blue),
      DateFormat(
          title: "Date Format",
          icon: Icons.date_range_rounded,
          warna: Colors.blue),
      LocSettings(
          title: "Location Settings",
          icon: Icons.location_on_rounded,
          warna: Colors.blue),
    ],
  );
}

GridView buildTabletGridView({@required Orientation orientation}) {
  return GridView.count(
    crossAxisCount: orientation == Orientation.portrait ? 4 : 5,
    children: <Widget>[
      Businesstab(
          title: "Business", icon: Icons.account_balance, warna: Colors.blue),
      GroupTab(
          title: "Groups", icon: Icons.people_alt_rounded, warna: Colors.blue),
      Locationpage(
          title: "Default Units",
          icon: Icons.straighten_rounded,
          warna: Colors.blue),
      MyMenu(
          title: "Upgrade to Company Account",
          icon: Icons.account_tree_rounded,
          warna: Colors.blue),
      DateFormat(
          title: "Date Format",
          icon: Icons.date_range_rounded,
          warna: Colors.blue),
      LocSettings(
          title: "Location Settings",
          icon: Icons.location_on_rounded,
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
                icon: Icon(Icons.settings),
                color: Colors.white,
                iconSize: 36,
                onPressed: () {},
              ),
              Text(
                'Settings',
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
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class Businesstab extends StatelessWidget {
  Businesstab({this.title, this.icon, this.warna});

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
            MaterialPageRoute(builder: (context) => BusinessPage()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class GroupTab extends StatelessWidget {
  GroupTab({this.title, this.icon, this.warna});

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
            MaterialPageRoute(builder: (context) => GroupPage()),
          );
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class Locationpage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Default Units',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Imperial (eg: inches, miles, lbs)",
                            style: TextStyle(fontSize: 15),
                          ),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Metric (eg: cm, km, kgs)",
                              style: TextStyle(fontSize: 15)),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              })
                        ],
                      )
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Do something like updating SharedPreferences or User Settings etc.
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
          });
        });
  }

  Locationpage({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          await showInformationDialog(context);
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class DateFormat extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> showInformationDialoga(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Date Format',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dates: D/M/YY (Birthdates: D/M/YY)",
                            style: TextStyle(fontSize: 12),
                          ),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Dates: D/M/YY (Birthdates: D/M/YY)",
                              style: TextStyle(fontSize: 12)),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              })
                        ],
                      )
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Do something like updating SharedPreferences or User Settings etc.
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
          });
        });
  }

  DateFormat({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          await showInformationDialoga(context);
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}

class LocSettings extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> showInformationDialoga(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          final TextEditingController _textEditingController =
              TextEditingController();
          bool isChecked = false;
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Location Settings',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue)),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Zip Code",
                            style: TextStyle(fontSize: 12),
                          ),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              }),
                              SizedBox(width: 10,), 
                              Text("Postal Code",
                              style: TextStyle(fontSize: 12)),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              })
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("State",
                              style: TextStyle(fontSize: 11)),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              }),
                               SizedBox(width: 1,), 
                              Text("Province",
                              style: TextStyle(fontSize: 11)),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              }),
                               SizedBox(width: 1,), 
                              Text("Territory",
                              style: TextStyle(fontSize: 11)),
                          Checkbox(
                              value: isChecked,
                              onChanged: (checked) {
                                setState(() {
                                  isChecked = checked;
                                });
                              })
                        ],
                      )
                    ],
                  )),
              actions: <Widget>[
                TextButton(
                  child: Text('Close'),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Do something like updating SharedPreferences or User Settings etc.
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
          });
        });
  }

  LocSettings({this.title, this.icon, this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () async {
          await showInformationDialoga(context);
        },
        splashColor: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 70.0, color: warna),
              Text(title, style: new TextStyle(fontSize: 17.0)),
            ],
          ),
        ),
      ),
    );
  }
}
