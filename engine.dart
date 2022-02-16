/* 
  This file contains the code for the GameEngine
*/

import 'player.dart';

class GameEngine {
/* 
  Create a property round as int
  In the constructor assign the round property to 1
*/
int round;

GameEngine({
  this.round=1
});


/* 
  Below create a loop in the function to run till the 
  _subEngine returns true
  The function should have two Player model as parameters 
*/
  void startGame(Player player1, Player player2) {
    //Display Fight information details as seen in the screenshot

    print("--------------------------------------");
    print("Round ${round}: ${player1.name} attack's ${player2.name}");
    print("--------------------------------------");

    //Assign _subEngine here
    bool dontfight = _subEngine(player1, player2);

    //Verify match results from _subEngine


    if(!dontfight){
      //Display Fight information details as seen in the screenshot


      print("--------------------------------------");
      print("Round ${round}: ${player2.name} attack's ${player1.name}");
      print("--------------------------------------");

      //Assign _subEngine here
      bool dontfight = _subEngine(player2, player1);

      //Verify match results from _subEngine
      if(!dontfight){
        round++;
        startGame(player1, player2);
      }
    }

  }

/* 
  Below, return a bool from the function 
  checking the health of a player if it's less or equal to 0
  The function should have two Player model as parameters
*/
  _subEngine(Player attacker, Player bleeder) {
    //Assign the player's attack
    int blows_weight = attacker.attack;

    //Display the health status of the players as seen in the screenshot

    print("${attacker.name}'s health: ${attacker.health}");
    print("${bleeder.name}'s health: ${bleeder.health}\n");


    //Display name and attack of the attacking player as seen in the screenshot
    print("${attacker.name} attacks with ${blows_weight}");





    //Calculate and update the new health of the player who was attacked
    bleeder.health = bleeder.health - blows_weight;
    print("${bleeder.name}'s health: ${bleeder.health}\n");

    /*
    Verify the fight round 
      if Game Over: Display player health and a win message with player name
      else: Display player health and continue   
    */
    if(bleeder.health<=0){
      print("${bleeder.name} is dead ${attacker.name} wins the fight");
      return true;
    }else{
      return false;
    }
  }
}
