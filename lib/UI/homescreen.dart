import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hindsight/UI/AboutPage.dart';
import 'package:hindsight/UI/BibliographyPage.dart';
import 'package:hindsight/UI/MuseumInterface.dart';
import 'package:hindsight/UI/Privacy.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MuseumInterface()));
                },
                    child: Text("Enter Museum")),
              ),


              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: OutlinedButton(onPressed: (){
              //     Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutPage()));
              //   }, child: Text("About")),
              // ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BiblographyPage()));
                }, child: Text("Bibliography")),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PrivacyPage()));
                }, child: Text("Privacy")),
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                    onPressed: (){
                      SystemNavigator.pop();
                    },
                    child: Text("Exit")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
