//
//  Coin.m
//  gamesofchance
//
//  Created by steven byrne on 03/06/2014.
//  Copyright (c) 2014 sbyrne. All rights reserved.
//

#import "Coin.h"

@implementation Coin
{
    
}
-(NSString*) toss{
    int x;
    NSString* output;
    x = arc4random_uniform(2);
    if (x == 0) {
        output = @"Heads!";
    } else{
        output = @"Tails!";
    };
    return output;
}
@end
