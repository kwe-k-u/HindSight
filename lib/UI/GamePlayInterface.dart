import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hindsight/Utils/Engine.dart';

class GamePlayInterface extends StatefulWidget {
  @override
  _GamePlayInterfaceState createState() => _GamePlayInterfaceState();
}

class _GamePlayInterfaceState extends State<GamePlayInterface> {
  Engine engine = new Engine();
  Tile current;

  @override
  void initState() {
    super.initState();
    setState(() {

      current = engine.getNext("first");
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.15,
                child: Row(
                  children: [
                    Text("Escape tries"),
                    Text("Escape tries"),
                    Text("Date Jan 1880"),
                  ],
                ),
              ),


              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.4,
                child: Center(child: Text(current.title)),
              ),


              Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.4,
                  child: Column(
                    // children: [Text("some"),current.getChoices()],
                    children: buttonList(current.next),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }


  List<Widget> buttonList( List<String> d){
  List<Widget> buttons = [];
  print(current.actions.length);
  print(current.title);
  for (int index = 0; index < current.next.length; index++){
    buttons.add(RaisedButton(onPressed: (){
      setState(() {
        current = engine.getNext(current.next.elementAt(index));

      });
    },
      child: Text(current.actions.elementAt(index)),
    ));
  }

  return buttons;
  }
}
