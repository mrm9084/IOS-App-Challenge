//
//  PocketSquare.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Outfit.h"

@implementation PocketSquare

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possiblilities = [[outfit _PocketSquare] validColorForShirt:[outfit _Shirt]];
    [possiblilities intersectSet:[[outfit _PocketSquare] validColorForTies:[outfit _Ties]]];
    [possiblilities addObject:@"RANDOMCOLOR"];
    return possiblilities;
}

-(NSMutableSet *) validColorForTies:(Ties *) ties{
    NSMutableSet *possibilities;
    if (![[ties color] isEqualToString: @"NOCOLOR"]) {
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [ties color],
                         nil];
    }else{
        possibilities = [[NSMutableSet alloc] initWithObjects:
                          @"BLACK",
                          @"WHITE",
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
                              @"BLACK",
                              @"SILVER",
                              @"BLUE",
                              nil];
        }else if ([shirtColor isEqualToString:@"LAVENDER"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"SILVER",
                              nil];
        }else if ([shirtColor isEqualToString:@"TEAL"] || [shirtColor isEqualToString:@"RED"] || [shirtColor isEqualToString:@"DARKPUTPLE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"SILVER",
                              nil];
        }else if ([shirtColor isEqualToString:@"AQUA"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"SILVER",
                              @"BLUE",
                              nil];
        }else if ([shirtColor isEqualToString:@"MINT"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"SILVER",
                              @"GREEN",
                              nil];
        }else if ([shirtColor isEqualToString:@"ROYALBLUE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"SILVER",
                              @"BLUE",
                              nil];
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
    NSMutableSet *possiblilities;
    if (![[[outfit _Ties] pattern] isEqualToString: @"NOCOLOR"]) {
        NSString *tiePattern = [[outfit _Ties] pattern];
        if ([tiePattern isEqualToString:@"PLAIN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"PLAIN",
                              @"STRIPE",
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
                          @"PLAIN",
                          @"STRIPE",
                          @"POLKADOT",
                          @"PLAID",
                          nil];
    }
    [possiblilities addObject:@"RANDOMPATTERN"];
    return possiblilities;
}

@end
