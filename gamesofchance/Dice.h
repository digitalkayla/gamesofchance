//
//  Dice.h
//  gamesofchance
//
//  Created by steven byrne on 03/06/2014.
//  Copyright (c) 2014 sbyrne. All rights reserved.
//

#import <Foundation/Foundation.h>
/*The class declaration for Dice, it has the ParentClass NSObject. it declares one method called roll
 whch is used to simulate the rolling of the dice and also declares two properties for boolean variables
 state and loopstate*/
@interface Dice : NSObject
-(int) roll ;
@property int state ,loopstate;
@end
