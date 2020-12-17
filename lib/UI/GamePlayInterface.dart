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

      current = engine.current.tile;
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
                    children: [


                      //left
                      RaisedButton
                        (onPressed: (){
                        setState(() {
                          engine.current = engine.current.left;
                          current = engine.current.tile;
                        });
                      },
                        child: Text(current.actions[0]),
                      ),

                      //left
                      RaisedButton
                        (onPressed: (){
                        setState(() {
                          engine.current = engine.current.right;
                          current = engine.current.tile;
                        });
                      },
                        child: Text(current.actions[1]),
                      ),

                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}
