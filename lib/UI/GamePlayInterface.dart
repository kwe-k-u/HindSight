import 'dart:core';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hindsight/UI/homescreen.dart';
import 'package:hindsight/Utils/Engine.dart';
import 'package:hindsight/Utils/resources.dart';

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
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    RaisedButton.icon(
                      padding: EdgeInsets.only(right: 2.0),
                      label: Container(width: 0,height: 0,),
                      icon: Icon(Icons.home_outlined),
                      onPressed: (){
                        showDialog(context: context,
                        builder: (context) => AlertDialog(
                          content: Text("Do you wish to save your current progress? "),
                          actions: [
                            FlatButton(
                              child: Text("Cancel"),
                              onPressed: (){
                                Navigator.pop(context);

                              },
                            ),

                            FlatButton(
                              child: Text("Dont save"),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=> HomeScreen()));
                              },
                            ),

                            FlatButton(
                              child: Text("Save"),
                              onPressed: (){
                                //Todo save progress
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=> HomeScreen()));
                              },
                            ),
                          ],
                        ));
                      },
                    ),
                    Text("Health: 300"),
                    Text(engine.getDate(), style: TextStyle(
                      fontSize: 18.0
                    ),),
                    Text("Age: 10"),
                  ],
                ),
              ),
              Divider(thickness: 2.0,),


              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Center(child: Text(current.title)),
              ),


              Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.4,
                  child: Column(
                    children: [


                      //left
                      Container(
                        width: size.width * 0.8,
                        child: RaisedButton(
                          color: buttonColor,
                          onPressed: (){
                          setState(() {
                            engine.current = engine.current.left;
                            current = engine.current.tile;
                          });
                        },
                          child: Text(current.actions[0]),
                        ),
                      ),

                      //right
                      Container(
                        width: size.width * 0.8,
                        child: RaisedButton(
                          color: buttonColor,
                          onPressed: (){
                          setState(() {
                            engine.current = engine.current.right;
                            current = engine.current.tile;
                          });
                        },
                          child: Text(current.actions[1]),
                        ),
                      ),

                      //Attempt escape
                      Container(
                        width: size.width * 0.8,
                        child: RaisedButton(
                          color: buttonColor,
                          child: Text("Attempt escape (3)"),
                          onPressed: (){
                            double number = new Random().nextDouble();
                            if (number <= engine.current.escapeProbability)
                              print("success");
                            else
                              print("failure: changes minus one");
                          },
                        ),
                      )

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
