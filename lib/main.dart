import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 1000){return Desktop();}
          else{return Mobile();}
        }
      )
    );
  }
}

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(child: Container(),),
                  Expanded(
                    child: Container(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('About me'),
                          Text('Work'),
                          Text('Contact')
                        ],
                     )
                    )
                  )
                ],
              )
            ),
            Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Column(children: <Widget>[
                        CircleAvatar(
                          maxRadius: 250,
                          backgroundImage: NetworkImage('http://www.simpsons-art.ru/personas/bart.png'),
                          ),            
                        Text(
                          'Kirill Borodin',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                        Text('student')
                      ],)
                    )
                  ),
                  Expanded(child: Container(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[Text('Student of grammar school number one')],)))
                ],
              )
            )
          ],
        )
    );
  }
}


class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Container(
              child: Column(children: <Widget>[
                CircleAvatar(
                  maxRadius: 200,
                  backgroundImage: NetworkImage('http://www.simpsons-art.ru/personas/bart.png'),
              ), 
            ],)
          )
        ),
        Expanded(flex: 5,child: Container(child: Column(children: <Widget>[Text(
                    'Kirill Borodin',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Text('student')],),),),
        Expanded(
          flex: 2,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('About me'),
                Text('Work'),
                Text('Contact')
              ],
            )
          )
        ),
        Expanded(flex: 2,child: Container(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[Text('Student of grammar school number one')],)))
      ],),
    );
  }
}



  