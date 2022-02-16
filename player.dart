/* This file contains the model/blueprint for a player */

import 'dart:math';

class Player {
/* 
  Create properties
  1. name as string
  2. health as int
*/
String name;
int health;

Player({
   required this.name,
   required this.health,
});

// Create a getter function (attack) to return a random integer ranging from 0 to 50
int get attack{
Random random = new Random();
int ranNum = random.nextInt(51);
return ranNum;
}
}
