import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(onPressed: (){}, child: Text("New Game")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(onPressed: (){}, child: Text("Continue Game")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(onPressed: (){}, child: Text("About")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(onPressed: (){}, child: Text("Biblography")),
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
