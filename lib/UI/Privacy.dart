import 'package:flutter/material.dart';


class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("1. This application does not require internet connectivity as there is "
                "no need to communicate with external parties."),

            Text("2. Data about the user is collected beyond what is neccessary for the "
                "operation of the game. This implies that beyond the name and gender supplied"
                " during the creation of a game avatar no other data is collected about the user"),

            Text("3. The application requires access to your device's storage, in order to save game "
                "progress made by the user. It is only this data(saved by the game on player's request) that is stored"
                " and read from the user's device."),

            Text("4. This application does not use any third party product or service that may connect data for any purpose,"
                "inclusive of, but not limited to advertisement."),

            Text("happy gaming".toUpperCase())
          ],
        ),
      ),
    );
  }
}
