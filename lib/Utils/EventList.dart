

import 'package:flutter/cupertino.dart';

import 'Engine.dart';
//Using a single linked list to simulate thread of events
class EventList{
  Event head;




  EventList(){
    // root  =
  }

  Event findCurrent(String identifier){
    Event current = head;

    current = findCurrentRecursive(current, identifier);
    return current;
  }

  Event findCurrentRecursive(Event node, String identify){
    //if no such Event exists
    Event found;
    while (node != null){

      if (node.identifier.compareTo(identify) == 0)
        return node;

      node = node.next;
    }
    return found;
  }



}

class Event{
  Event previous;
  Event next;
  String identifier;
  Image image;
  String url;
  Tile tile;

  Event({Tile tile, String url}){
    this.tile = tile;
    this.url = url;
  }

  // void setRight(Act)

}




Event intro = new Event (
    tile: new Tile(
        text: "The setting ",
        actions: ["left run", "left stay"]),
);




Event right = new Event (tile: new Tile(text: "right", actions: ["right run", "right stay"]));