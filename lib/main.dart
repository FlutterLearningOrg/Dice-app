import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.deepOrange,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftnumber = 1;
  int rightnumber = 6;

  void set_state_func(){
    setState(() {
      leftnumber =Random().nextInt(6)+1;
      rightnumber =Random().nextInt(6)+1;
    },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                set_state_func();
              },
              child: Image.asset('images/dice$leftnumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                set_state_func();
              },
              child: Image.asset('images/dice$rightnumber.png'),
            ),
          ),
//        Expanded(
//
//////          flex: 2,
////         child: Image(
////
////            //width: 200.0,
////            image: AssetImage('images/dice6.png'),
////          ),
//        ),
//        Expanded(
//
//////         flex: 15,
////          child: Image(
////            //width: 200.0,
////            image: AssetImage('images/dice6.png'),
//          //),
//        ),
        ],
      ),
    );
  }
}


