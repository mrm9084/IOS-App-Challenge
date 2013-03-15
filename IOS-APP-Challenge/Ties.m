//
//  Ties.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved. //

#import "Ties.h"
#import "Outfit.h"

@implementation Ties
-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possiblilities = [[outfit _Ties] validColorForShirt:[outfit _Shirt]];
    [possiblilities intersectSet:[[outfit _Ties] validColorForPocketSquare:[outfit _PocketSquare]]];
    return possiblilities;
}

-(NSMutableSet *) validColorForPocketSquare:(PocketSquare *) pocketSquare{
    NSMutableSet *possibilities;
    if (pocketSquare == NULL) {
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [NSNumber numberWithInt:[pocketSquare _Color]],
                         [NSNumber numberWithInt: WHITE],
                         nil];
    }else{
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [NSNumber numberWithInt: WHITE],
                         [NSNumber numberWithInt: BLACK],
                         [NSNumber numberWithInt: BURGUNDY],
                         [NSNumber numberWithInt: YELLOW],
                         [NSNumber numberWithInt: SILVER],
                         [NSNumber numberWithInt: BLUE],
                         [NSNumber numberWithInt: GREEN],
                         nil];
    }
    return possibilities;
}

-(NSMutableSet *) validColorForShirt:(Shirt *) shirt{
    NSMutableSet *possiblilities;
    if (shirt != NULL) {
        Color shirtColor = [shirt _Color];
        switch (shirtColor) {
            case PINK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: BURGUNDY],
                                  [NSNumber numberWithInt: SILVER],
                                  [NSNumber numberWithInt: BLUE],
                                  nil];
                break;
            case LIGHTBLUE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BURGUNDY],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: SILVER],
                                  [NSNumber numberWithInt: BLUE],
                                  [NSNumber numberWithInt: GREEN],
                                  nil];
                break;
            case WHITE:
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BURGUNDY],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: SILVER],
                                  [NSNumber numberWithInt: BLUE],
                                  [NSNumber numberWithInt: GREEN],
                                  nil];
                break;
            case YELLOW:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: SILVER],
                                  [NSNumber numberWithInt: BLUE],
                                  nil];
                break;
            case LAVENDER:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: SILVER],
                                  nil];
                break;
            case TEAL:
            case RED:
            case DARKPURPLE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: SILVER],
                                  nil];
                break;
            case AQUA:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: SILVER],
                                  [NSNumber numberWithInt: BLUE],
                                  nil];
                break;
            case MINT:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: SILVER],
                                  [NSNumber numberWithInt: GREEN],
                                  nil];
                break;
            case ROYALBLUE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: SILVER],
                                  [NSNumber numberWithInt: BLUE],
                                  nil];
                break;
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: BURGUNDY],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: SILVER],
                                  [NSNumber numberWithInt: BLUE],
                                  [NSNumber numberWithInt: GREEN],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: WHITE],
                          [NSNumber numberWithInt: BURGUNDY],
                          [NSNumber numberWithInt: YELLOW],
                          [NSNumber numberWithInt: SILVER],
                          [NSNumber numberWithInt: BLUE],
                          [NSNumber numberWithInt: GREEN],
                          nil];
    }
    return possiblilities;
}
-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possiblilities = [[outfit _Ties] validPatternWithPocketSquare:[outfit _PocketSquare]];
    return possiblilities;
}

-(NSMutableSet *) validPatternWithPocketSquare: (PocketSquare *) pocketSquare{
    NSMutableSet *possiblilities;
    if(pocketSquare != NULL){
        switch ([pocketSquare _Pattern]) {
            case PLAID:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: SOLID],
                                  [NSNumber numberWithInt: STRIP],
                                  [NSNumber numberWithInt: POCODOT],
                                  nil];
                break;
            case POCODOT:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: SOLID],
                                  [NSNumber numberWithInt: STRIP],
                                  [NSNumber numberWithInt: PLAID],
                                  nil];
                break;
            case STRIP:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: SOLID],
                                  [NSNumber numberWithInt: POCODOT],
                                  [NSNumber numberWithInt: PLAID],
                                  nil];
                break;
            case PLAIN:
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: SOLID],
                                  [NSNumber numberWithInt: STRIP],
                                  [NSNumber numberWithInt: POCODOT],
                                  [NSNumber numberWithInt: PLAID],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: SOLID],
                          [NSNumber numberWithInt: STRIP],
                          [NSNumber numberWithInt: POCODOT],
                          [NSNumber numberWithInt: PLAID],
                          nil];
    }
    return possiblilities;
    
}
@end
