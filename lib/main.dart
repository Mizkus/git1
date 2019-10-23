import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Desktop();
      } else {
        return Mobile();
      }
    }));
  }
}

class Desktop extends StatefulWidget {
  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  Widget about = Text('Student of grammar school number one');
  Widget works = Text('Works');
  Widget contact = Text('Contacts');
  Widget x = Text('Student of grammar school number one');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                Expanded(
                    child: Container(
                        child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      child: Text('About me'),
                      onPressed: () {
                        setState(() {
                          x = about;
                        });
                      },
                    ),
                    FlatButton(
                      child: Text('Work'),
                      onPressed: () {
                        setState(() {
                          x = works;
                        });
                      },
                    ),
                    FlatButton(
                      child: Text('Contact'),
                      onPressed: () {
                        setState(() {
                          x = contact;
                        });
                      },
                    ),
                  ],
                )))
              ],
            )),
        Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                        child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 250,
                      backgroundImage: NetworkImage(
                          'http://www.simpsons-art.ru/personas/bart.png'),
                    ),
                    Text(
                      'Kirill Borodin',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                    ),
                    Text('student')
                  ],
                ))),
                Expanded(
                    child: Container(
                        child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    x,
                  ],
                )))
              ],
            ))
      ],
    ));
  }
}

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  Widget about = Text('Student of grammar school number one');
  Widget works = Text('Works');
  Widget contact = Text('Contacts');
  Widget x = Text('Student of grammar school number one');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 8,
              child: Container(
                  child: Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 200,
                    backgroundImage: NetworkImage(
                        'http://www.simpsons-art.ru/personas/bart.png'),
                  ),
                ],
              ))),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'Kirill Borodin',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Text('student')
                ],
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    child: Text('About me'),
                    onPressed: () {
                      setState(() {
                        x = about;
                      });
                    },
                  ),
                  FlatButton(
                    child: Text('Work'),
                    onPressed: () {
                      setState(() {
                        x = works;
                      });
                    },
                  ),
                  FlatButton(
                    child: Text('Contact'),
                    onPressed: () {
                      setState(() {
                        x = contact;
                      });
                    },
                  ),
                ],
              ))),
          Expanded(
              flex: 2,
              child: Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  x,
                ],
              )))
        ],
      ),
    );
  }
}
