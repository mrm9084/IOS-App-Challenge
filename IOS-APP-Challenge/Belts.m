//
//  Belts.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Outfit.h"

@implementation Belts

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possibilities = [[outfit _Belt] validColorForSuit:[outfit _Suit]];
    [possibilities intersectSet: [[outfit _Belt] validColorForShoes:[outfit _Shoes]]];
    return possibilities;
}

-(NSMutableSet *) validColorForSuit:(Suit *) suit{
    NSMutableSet *possibilities;
    if(suit != NULL){
        Color suitColor = [suit _Color];
        switch (suitColor) {
            case NAVY:
                possibilities = [[NSMutableSet alloc] initWithObjects:
                                 [NSNumber numberWithInt: CORDOVAN],
                                 [NSNumber numberWithInt: BROWN],
                                 nil];
                break;
            case BROWN:
                possibilities = [[NSMutableSet alloc] initWithObjects:
                                 [NSNumber numberWithInt: BROWN],
                                 nil];
                break;
            case GRAY:
            case CHARCOAL:
            case BLACK:
            case OLIVE:
            default:
                possibilities = [[NSMutableSet alloc] initWithObjects:
                                 [NSNumber numberWithInt: BLACK],
                                 nil];
                break;
        }
    }else{
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [NSNumber numberWithInt: BLACK],
                         [NSNumber numberWithInt: GRAY],
                         [NSNumber numberWithInt: CORDOVAN],
                         [NSNumber numberWithInt: BROWN],
                         nil];
    }
    return possibilities;
}

-(NSMutableSet *) validColorForShoes:(Shoes *) shoes{
    NSMutableSet *possibilities;
    if (shoes == NULL) {
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [NSNumber numberWithInt:[shoes _Color]],
                         nil];
    }else{
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [NSNumber numberWithInt: BLACK],
                         [NSNumber numberWithInt: GRAY],
                         [NSNumber numberWithInt: CORDOVAN],
                         [NSNumber numberWithInt: BROWN],
                         nil];
    }
    return possibilities;
}

-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possibilities = [[NSMutableSet alloc] initWithObjects:
                                   nil];
    return possibilities;
}

@end
