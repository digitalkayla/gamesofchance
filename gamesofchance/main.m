/*
main.m
gamesofchance
This program will allow the user to play a game of chance using a Coin or Dice
Created by steven byrne on 21/05/2014.
Copyright (c) 2014 sbyrne. All rights reserved.
 */
#import <Foundation/Foundation.h>
#import <stdlib.h>
#import "Coin.h"
#import "Dice.h"



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        char gameChoice [5]; // this C string array is used to capture the players choice of game
        int gameState = 1; // this integer is a boolean variable used to decide if the program is over
        NSLog(@"Choose your game of chance: Type 'Dice' or 'Coin'");
        scanf("%4s", gameChoice); //reads keyboard input into the varable gameChoice
        // NSLog(@"%s",gameChoice); DEBUG: Prints the output of what the user typed in
        /*If the string the player entered matches one of the strings requested("Dice" or "Coin"
         execute what is in the loop, otherwise terminate the program with an error message*/
        if (strcmp(gameChoice, "Dice") ==0|| strcmp(gameChoice, "Coin")==0){
            if(strcmp(gameChoice, "Dice") ==0){
                //Test the output of rolling the dice
                Dice *dice = [[Dice alloc]init];
                NSLog(@"%i",[dice roll]);
            }
            else if(strcmp(gameChoice, "Coin")==0){
                //Test the output of tossing the coin
                Coin *coin = [[Coin alloc]init];
                NSLog(@"%@",[coin toss]);
            }
        }
        else{
            NSLog(@"ERROR: Please choose either 'Dice' or 'Coin' when prompted.");
            return 0;
        }
        
    }
    return 0;
}

