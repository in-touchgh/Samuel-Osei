import 'dart:io';

import 'engine.dart';
import 'player.dart';

/* 
In this coding challenge, you going to create a Fighter Game in Dart 
The fight is going to be between to players
*/

//Start coding in the main function
void main() {
  //Initialize the game engine
  GameEngine();

  //Initialize your Player models
  Player player1 = Player(name: "John", health: 100);
  Player player2 = Player(name: "Mark", health: 100);

  //Run the function startGame
  GameEngine().startGame(player1 , player2);

  exit(0);
}

/*
Native Dart coding challenge 
Created by Benjamin Dotse 
*/
