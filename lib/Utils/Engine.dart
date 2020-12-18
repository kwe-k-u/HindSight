import 'package:hindsight/Utils/ActionTree.dart';
import 'package:hindsight/Utils/PlayerObject.dart';

import 'resources.dart';

class Engine {
  Action current = ActionTree().root;
  List<int> __date = [1,1880]; //0: month index   1: year
  Player player;


  Engine([bool restart = false]){
    if (restart ) { //continue old game
      //todo create from saved data
      this.getSavedData();
    } else { //create new game
      // player = new Player();//todo set name and gender

    }
  }



  void getSavedData(){
    //todo get data saved on device and set all attributes
  }


  String getDate() =>"${months[__date[0]]} ${__date[1]}";


//todo add information popup
}



  class Tile {


    String title; ///Text to show to the user action the current action
    List<String> actions; ///Possible actions the user can take

    Tile({ String text, List<String> actions }) {
      this.title = text;
      this.actions = actions;
    }
  }
