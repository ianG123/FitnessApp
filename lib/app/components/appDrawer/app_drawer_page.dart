import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_drawer_controller.dart';

class AppDrawerPage extends StatefulWidget {
  final String title;
  const AppDrawerPage({Key key, this.title = "AppDrawer"}) : super(key: key);

  @override
  _AppDrawerPageState createState() => _AppDrawerPageState();
}

class _AppDrawerPageState
    extends ModularState<AppDrawerPage, AppDrawerController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
