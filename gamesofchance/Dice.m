//
//  Dice.m
//  gamesofchance
//
//  Created by steven byrne on 03/06/2014.
//  Copyright (c) 2014 sbyrne. All rights reserved.
//

#import "Dice.h"
@implementation Dice
{
    char repeat[4]; //instance variable to store keyboard input
}
@synthesize state, loopstate; //synthesizing the properties generates accessor methods for state and loopstate

-(int) roll {
    /*state controls the state of the dicegame itself whereas loopstate controls whether to continue playing or quit.
     Both are Boolean variables that are set to either 1 or 0 to indiictate state of ON/OFF, TRUE/FALSE etc.*/
    state = 1;
    loopstate = 1;
    /*This forms the basis of the Dice game. While state is set to 1(ON) set the value of an integer x to be equal to
     a random number between 1 and 6 inclusive. Output the resulting number to the console and Ask the user if they 
     want to play again before reading in their answer (either 'Yes" to continue or something else to quit*/
    while (self.state==1) {
        int x;
        x = arc4random_uniform(6) + 1;
        NSLog(@"You rolled a %i!", x);
        NSLog(@"Want to Play again? Type 'Yes'");
        scanf("%4s",repeat);
        /*Here is a conditional based on the players response. If they replied 'Yes', the loop just continues to its 
         next iteration of dice rolling before asking again whether they would like to play again.If however they type
         anything other than yes such as 'no' or 'bacon' it sets the state of the game to 0 indicating the game is
         finished before thanking the user for playing and returning a 0 value to terminate the program.*/
        if(strcmp(repeat, "Yes") == 0){
              
            continue;
                
        }
        else{
                
            self.state =0;
            NSLog(@"Thankyou for Playing!");
            return 0;
        }
        
    }
    return 0;
}
@end