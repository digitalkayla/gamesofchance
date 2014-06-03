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
    
}
@synthesize state, loopstate;

-(int) roll {
    state = 1;
    loopstate = 1;
    char repeat[4];
    while (state==1) {
        int x;
        x = arc4random_uniform(6) + 1;
        NSLog(@"You rolled a %i !", x);
        NSLog(@"Want to Play again? Type 'Yes'");
        scanf("%4s",repeat);
        loopstate = 1;
        while (loopstate == 1){
            if(strcmp(repeat, "Yes") == 0){
                loopstate = 0;
                continue;
                
            }
            else{
                loopstate = 0;
                state =0;
                NSLog(@"Thankyou for Playing!");
                return 0;
            }
        }
    }
    return 0;
}
@end