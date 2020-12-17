import 'package:hindsight/Utils/ActionTree.dart';

import 'resources.dart';

class Engine {
  Action current = ActionTree().root;


}
  class Tile {

    String title; ///Text to show to the user action the current action
    List<String> actions; ///Possible actions the user can take

    Tile({ String text, List<String> actions }) {
      this.title = text;
      this.actions = actions;
    }
  }
