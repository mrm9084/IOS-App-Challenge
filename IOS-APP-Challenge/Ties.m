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
    [possiblilities addObject:@"RANDOMCOLOR"];
    return possiblilities;
}

-(NSMutableSet *) validColorForPocketSquare:(PocketSquare *) pocketSquare{
    NSMutableSet *possibilities;
    if (![[pocketSquare color] isEqualToString: @"NOCOLOR"]) {
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [pocketSquare color],
                         @"WHITE",
                         nil];
    }else{
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         @"WHITE",
                         @"BLACK",
                         @"BURGUNDY",
                         @"YELLOW",
                         @"SILVER",
                         @"BLUE",
                         @"GREEN",
                         nil];
    }
    return possibilities;
}

-(NSMutableSet *) validColorForShirt:(Shirt *) shirt{
    NSMutableSet *possiblilities;
    if (![[shirt color] isEqualToString: @"NOCOLOR"]) {
        Color shirtColor = [shirt _Color];
        switch (shirtColor) {
            case PINK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BLACK",
                                  @"BURGUNDY",
                                  @"SILVER",
                                  @"BLUE",
                                  nil];
                break;
            case LIGHTBLUE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BURGUNDY",
                                  @"YELLOW",
                                  @"SILVER",
                                  @"BLUE",
                                  @"GREEN",
                                  nil];
                break;
            case WHITE:
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"BLACK",
                                  @"WHITE",
                                  @"BURGUNDY",
                                  @"YELLOW",
                                  @"SILVER",
                                  @"BLUE",
                                  @"GREEN",
                                  nil];
                break;
            case YELLOW:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BLACK",
                                  @"SILVER",
                                  @"BLUE",
                                  nil];
                break;
            case LAVENDER:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BLACK",
                                  @"SILVER",
                                  nil];
                break;
            case TEAL:
            case RED:
            case DARKPURPLE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BLACK",
                                  @"SILVER",
                                  nil];
                break;
            case AQUA:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BLACK",
                                  @"SILVER",
                                  @"BLUE",
                                  nil];
                break;
            case MINT:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BLACK",
                                  @"SILVER",
                                  @"GREEN",
                                  nil];
                break;
            case ROYALBLUE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BLACK",
                                  @"SILVER",
                                  @"BLUE",
                                  nil];
                break;
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"WHITE",
                                  @"BLACK",
                                  @"WHITE",
                                  @"BURGUNDY",
                                  @"YELLOW",
                                  @"SILVER",
                                  @"BLUE",
                                  @"GREEN",
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"BLACK",
                          @"WHITE",
                          @"BURGUNDY",
                          @"YELLOW",
                          @"SILVER",
                          @"BLUE",
                          @"GREEN",
                          nil];
    }
    return possiblilities;
}
-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possiblilities = [[outfit _Ties] validPatternWithPocketSquare:[outfit _PocketSquare]];
    [possiblilities addObject:@"RANDOMPATTERN"];
    return possiblilities;
}

-(NSMutableSet *) validPatternWithPocketSquare: (PocketSquare *) pocketSquare{
    NSMutableSet *possiblilities;
    if(![[pocketSquare color] isEqualToString: @"NOPATTERN"]){
        switch ([pocketSquare _Pattern]) {
            case PLAID:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"SOLID",
                                  @"STRIP",
                                  @"POCODOT",
                                  nil];
                break;
            case POCODOT:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"SOLID",
                                  @"STRIP",
                                  @"PLAID",
                                  nil];
                break;
            case STRIP:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"SOLID",
                                  @"POCODOT",
                                  @"PLAID",
                                  nil];
                break;
            case PLAIN:
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"SOLID",
                                  @"STRIP",
                                  @"POCODOT",
                                  @"PLAID",
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"SOLID",
                          @"STRIP",
                          @"POCODOT",
                          @"PLAID",
                          nil];
    }
    return possiblilities;
    
}
@end
