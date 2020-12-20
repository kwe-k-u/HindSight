

import 'package:flutter/cupertino.dart';

//Using a single linked list to simulate thread of events
class EventList{
  Event head;




  EventList(){
    head = intro;
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
  String text;
  String identifier;
  Image image;
  String url;
  String date;

  Event({String text, String url, Event next, Event previous, Image image, String date}){
   this.previous = previous;
   this.next = next;
   this.text = text;
   this.url = url;
   this.image = image;
   this.date = date;
   //todo generate identifier
  }


}




Event intro = new Event (
);




Event right = new Event ();