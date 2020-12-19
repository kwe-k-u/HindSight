

import 'package:flutter/material.dart';

class Player{
  String name;
  int age = 0;
  String gender;
  bool enslaved = false;
  int failedEscapes = 0;
  int health = 100;


  Player(String name, String gender){
    this.name = name;
    this.gender = gender;
  }

  String getName() => this.name;

  String getGender() => this.gender;

  int getAge() => this.age;

  bool isEnslaved() => this.enslaved;

  int getFailedEscapes() => this.failedEscapes;

  int getHealth() => this.health;



  Map<String, dynamic>getMap(){
    Map<String, dynamic> map = {
      "name": getName(),
      "age": getAge(),
      "enslaved": isEnslaved(),
      'failedEscapes': getFailedEscapes(),
      "health" : getHealth(),
    

    };


  return map;
  }



  void fromMap(dynamic data){
    if (data.runtimeType == String)
      data = Map<String, dynamic>.from(data);

    //todo match data to attributes
  }




  void grow() => this.age++;

  void changeHealth(int effect){
    this.health += effect;
    //todo if health fits 0, let player die and end game
  }



}