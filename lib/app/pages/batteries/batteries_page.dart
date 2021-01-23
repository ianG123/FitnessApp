import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'batteries_controller.dart';

class BatteriesPage extends StatefulWidget {
  final String title;
  const BatteriesPage({Key key, this.title = "Batteries"}) : super(key: key);

  @override
  _BatteriesPageState createState() => _BatteriesPageState();
}

class _BatteriesPageState
    extends ModularState<BatteriesPage, BatteriesController> {
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
