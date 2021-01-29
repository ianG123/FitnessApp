import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'settings_controller.dart';

class Locations extends StatefulWidget {
  final String title;
  const Locations({Key key, this.title = "Locations"}) : super(key: key);

  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends ModularState<Locations, SettingsController> {
  //use 'controller' variable to access controller

  List<Item> _data = generateItems(1);

  Widget _buildListPanel(){
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded){
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item){
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded){
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body:Column(
            children: [
              ListTile(
                title:Text(item.expandedValue),
                trailing: Icon(Icons.delete),
                onTap:(){
                  setState(() {
                    _data.removeWhere((currentItem) => item == currentItem);
                  });
                }
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'Add SubGroup ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Icon(Icons.add_circle_outline, color: Colors.grey),
                    ],
                  ),
                ),
              ),
            ],
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

   @override
  Widget build(BuildContext context) {
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
            textColor: Colors.white,
            onPressed: () {},
            child: Text("Save"),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: groups(context),
      bottomNavigationBar: Botnav(),
    );
  }

  Widget groups(context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 600,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add Group ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Icon(Icons.add_circle_outline, color: Colors.grey),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildListPanel(),
                ],
              ),
            ),
          ),
        ],
      ),
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
    );
  }
}







class Item {
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({this.expandedValue, this.headerValue, this.isExpanded = false});

}

List<Item>generateItems(int numberOfItems){
  return List.generate(numberOfItems, (index){
    return Item(
      headerValue: 'Washington',
      expandedValue: 'Washington DC'
    );
  });
}