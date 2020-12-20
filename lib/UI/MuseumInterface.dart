import 'dart:core';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hindsight/Utils/EventList.dart';
import 'package:hindsight/Utils/resources.dart';

class MuseumInterface extends StatefulWidget {
  @override
  _MuseumInterfaceState createState() => _MuseumInterfaceState();
}

class _MuseumInterfaceState extends State<MuseumInterface> {
  EventList list = new EventList();

  @override
  void initState() {
    super.initState();
    setState(() {

      list.current = list.head;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Container(
                padding: EdgeInsets.symmetric(horizontal:12.0),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(child: Text(list.current.title,
                style: TextStyle(
                  // fontFamily: ,
                  fontWeight: FontWeight.bold,
                ),)),
              ),



              Container(
                padding: EdgeInsets.symmetric(horizontal:12.0),
                height: MediaQuery.of(context).size.height * 0.4,
                child: Center(child: Text(list.current.text)),
              ),



              Container(
                padding: EdgeInsets.only(left: 4.0),
                child: Center(child: Text("Reference:\n ${list.current.reference}")),
              ),


              Container(
                  child: Column(
                    children: [


                      //left
                      Container(
                        width: size.width * 0.8,
                        child: RaisedButton(
                          color: buttonColor,
                          onPressed: (){
                          setState(() {
                            list.current = list.current.next;
                            if (list.current == null)
                              list.current = list.head;
                          });
                        },
                          child: Text("Next pedastal"),
                        ),
                      ),

                      //right
                      Container(
                        width: size.width * 0.8,
                        child: RaisedButton(
                          color: buttonColor,
                          onPressed: (){
                          setState(() {
                            list.current = list.current.previous;
                            if (list.current == null)
                              list.current = list.head;
                          });
                        },
                          child: Text("Previous pedastal"),
                        ),
                      ),

                      //Attempt escape
                      Container(
                        width: size.width * 0.8,
                        child: RaisedButton(
                          color: buttonColor,
                          child: Text("Random pedastal"),
                          onPressed: (){
                            int number = new Random().nextInt(14);
                            list.current = list.head;
                            for (int index = 0; index < number; index++) {
                              list.current = list.current.next;
                            }
                            setState(() {

                            });
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
