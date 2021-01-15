import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'grouptab_controller.dart';

final Color backgroundColor = Color(0xff3D73DD);
enum SingingCharacter { lafayette, jefferson }
class TermsPage extends StatefulWidget {
  final String title;
  const TermsPage({Key key, this.title = "Grouptab"}) : super(key: key);

  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState
    extends ModularState<TermsPage, GrouptabController> {
  //use 'controller' variable to access controller
  SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: groups(context),
    );
  }

  Widget groups(context) {
    return Material(
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
                      child: Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.grey[800]),
                      onTap: () {}),
                  Text(
                    'Terms',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  Icon(Icons.toc_outlined, color: Colors.white),
                ]),
            SizedBox(height: 10),
            Container(
              height: 600,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20),
                    ListTile(
                      title: const Text('Coach'),
                      leading: Radio(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Instructor'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Professional'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Teacher'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Therapist'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Trainer'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Athlete'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Client'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Member'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Participant'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Patient'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Student'),
                      leading: Radio(
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() { _character = value; });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 83.2),
            Container(
              height: 80.5,
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
            )
          ],
        ),
      ),
    );
  }
}

