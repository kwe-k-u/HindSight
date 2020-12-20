import 'package:flutter/material.dart';


class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1. This application does not require internet connectivity as there is "
                "no need to communicate with external parties."),


            Divider(thickness: 1,),

            Text("2. The application requires access to your device's storage, in order to save the "
                "user's last visited museum pedastal. Beyond this data, nothing else is "
                "collected, saved or retrieved."),


            Divider(thickness: 1,),

            Text("3. This application does not use any third party product or service that may connect data for any purpose,"
                "inclusive of, but not limited to advertisement."),

          ],
        ),
      ),
    );
  }
}
