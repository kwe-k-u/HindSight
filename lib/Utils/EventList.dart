

import 'package:flutter/cupertino.dart';
import 'package:hindsight/Utils/resources.dart';

//Using a single linked list to simulate thread of events
class EventList{
  Event head;
  Event current;




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
  String text = "";
  String title = "";
  String identifier = "";
  Image image;
  String url = "";
  String date = "";
  String reference = "";

  Event({String title, String text, String url, Event next, String reference, Image image, String date}){
   this.title = title;
   this.reference = reference;
   this.next = next;
   this.text = text;
   this.url = url;
   this.image = image;
   this.date = date;
   this.next.previous = this;
   //todo generate identifier
  }


}



