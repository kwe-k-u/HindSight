import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hindsight/UI/GamePlayInterface.dart';


class CreatePlayer extends StatefulWidget {
  @override
  _CreatePlayerState createState() => _CreatePlayerState();
}

class _CreatePlayerState extends State<CreatePlayer> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SafeArea(
        child: Scaffold(

          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create your player here"),

              Spacer(),

              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Avatar name"
                  ),
                  onChanged: (value){

                  },

                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top:8.0, bottom: 4.0),
                child: Text("Gender"),
              ),

              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [

                  RaisedButton.icon(
                    icon: Icon(Icons.person),
                    label: Text("Female"),
                    onPressed: (){

                    },
                  ),

                  RaisedButton.icon(
                    icon: Icon(Icons.person),
                    label: Text("Non-binary"),
                    onPressed: (){

                    },
                  ),

                  RaisedButton.icon(
                    icon: Icon(Icons.person),
                    label: Text("Male"),
                    onPressed: (){

                    },
                  )
                ],
              ),


              Spacer(),

              Container(
                padding: EdgeInsets.only(bottom: 12.0),
                child: RaisedButton(
                  child: Text("Create Avatar"),
                    onPressed: (){
                    //todo create player
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> GamePlayInterface()));
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
