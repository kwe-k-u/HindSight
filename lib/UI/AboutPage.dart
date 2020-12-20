import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {




    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text("Hindsight is a text based mobile game created by Kweku Appiah Acquaye"
                " as a final project for Capitalism and Slavery at Bard College, NY."),
          ),
        ),
      ),
    );
  }
}
