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
        NSString *shirtColor = [shirt color];
        if ([shirtColor isEqualToString:@"PINK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"BLACK",
                              @"BURGUNDY",
                              @"SILVER",
                              @"BLUE",
                              nil];
        }else if ([shirtColor isEqualToString:@"LIGHTBLUE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"BURGUNDY",
                              @"YELLOW",
                              @"SILVER",
                              @"BLUE",
                              @"GREEN",
                              nil];
        }else if ([shirtColor isEqualToString:@"WHITE"] || [shirtColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"WHITE",
                              @"BURGUNDY",
                              @"YELLOW",
                              @"SILVER",
                              @"BLUE",
                              @"GREEN",
                              nil];
        }else if ([shirtColor isEqualToString:@"YELLOW"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"BLACK",
                              @"SILVER",
                              @"BLUE",
                              nil];
        }else if ([shirtColor isEqualToString:@"LAVENDER"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"BLACK",
                              @"SILVER",
                              nil];
        }else if ([shirtColor isEqualToString:@"TEAL"] || [shirtColor isEqualToString:@"RED"] || [shirtColor isEqualToString:@"DARKPURPLE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"BLACK",
                              @"SILVER",
                              nil];
        }else if ([shirtColor isEqualToString:@"AQUA"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"BLACK",
                              @"SILVER",
                              @"BLUE",
                              nil];
        }else if ([shirtColor isEqualToString:@"MINT"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"BLACK",
                              @"SILVER",
                              @"GREEN",
                              nil];
        }else if ([shirtColor isEqualToString:@"ROYALBLUE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"BLACK",
                              @"SILVER",
                              @"BLUE",
                              nil];
        }else{
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
        NSString *pocketSquarePattern = [pocketSquare pattern];
        if ([pocketSquarePattern isEqualToString: @"PLAID"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"SOLID",
                              @"STRIPE",
                              @"POLKADOT",
                              nil];
        }else if ([pocketSquarePattern isEqualToString: @"POLKADOT"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"SOLID",
                              @"STRIPE",
                              @"PLAID",
                              nil];
        }else if ([pocketSquarePattern isEqualToString: @"STRIPE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"SOLID",
                              @"POLKADOT",
                              @"PLAID",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"SOLID",
                              @"STRIPE",
                              @"POLKADOT",
                              @"PLAID",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"SOLID",
                          @"STRIPE",
                          @"POLKADOT",
                          @"PLAID",
                          nil];
    }
    return possiblilities;
    
}
@end
