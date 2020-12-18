

import 'package:flutter/cupertino.dart';

import 'Engine.dart';
//Using a tree to simulate the action thread over a timeline of events
class ActionTree{
  Action root;




  ActionTree(){
    root = new Action(tile: new Tile(text: "start text", actions: ["go left", 'go right']),);
    root.left = left;
    root.right = right;
  }

  Action findCurrent(String identifier){
    Action current = root;

    current = findCurrentRecursive(root, identifier);
    return current;
  }

  Action findCurrentRecursive(Action node, String identify){
    //if no such action exists
    if (node.left == null && node.right == null)
      return null;

    //if this action is the correct action
    if (node.identifier.compareTo(identify) == 0)
      return node;

    if (node.left != null)
      findCurrentRecursive(node.left,identify);//traversing left branch

    if (node.right != null)
      findCurrentRecursive(node.right,identify); //traversing right branch

    return null;
  }



}

class Action{
  Action right;
  Action left;
  String identifier;
  Image image;
  String summary;
  double escapeProbability = 0.5;
  Tile tile;

  Action({Tile tile, double escapeProbability,String summary}){
    this.tile = tile;
    this.escapeProbability = escapeProbability;
    this.summary = summary;
  }

  // void setRight(Act)

}




Action left = new Action (tile: new Tile(text: "left", actions: ["left run", "left stay"]));
Action right = new Action (tile: new Tile(text: "right", actions: ["right run", "right stay"]));