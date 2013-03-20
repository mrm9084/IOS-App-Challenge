//
//  Shoes.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Outfit.h"

@implementation Shoes

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possibilities = [[outfit _Shoes] validColorForSuit:[outfit _Suit]];
    [possibilities intersectSet: [[outfit _Shoes] validColorForBelts:[outfit _Belt]]];
    [possibilities addObject:@"RANDOMCOLOR"];
    return possibilities;
}

-(NSMutableSet *) validColorForSuit:(Suit *) suit{
    NSMutableSet *possibilities;
    if(![[suit color] isEqualToString: @"NOCOLOR"]){
        NSString *suitColor = [suit color];
        if ([suitColor isEqualToString:@"NAVY"]) {
            possibilities = [[NSMutableSet alloc] initWithObjects:
                             @"CORDOVAN",
                             @"BROWN",
                             nil];
        }else if ([suitColor isEqualToString:@"Brown"]) {
            possibilities = [[NSMutableSet alloc] initWithObjects:
                             @"BROWN",
                             nil];
        }else{
            possibilities = [[NSMutableSet alloc] initWithObjects:
                             @"BLACK",
                             nil];
        }
    }else{
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         @"BLACK",
                         @"GRAY",
                         @"CORDOVAN",
                         @"BROWN",
                         nil];
    }
    return possibilities;
}

-(NSMutableSet *) validColorForBelts:(Belts *) belts{
    NSMutableSet *possibilities;
    if (![[belts color] isEqualToString: @"NOCOLOR"]) {
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [belts color],
                         nil];
    }else{
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         @"BLACK",
                         @"GRAY",
                         @"CORDOVAN",
                         @"BROWN",
                         nil];
    }
    return possibilities;
}
-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possibilities = [[NSMutableSet alloc] initWithObjects:
                                   @"LEATHER",
                                   @"SUEDE",
                                   nil];
    [possibilities addObject:@"RANDOMPATTERN"];
    return possibilities;
}

@end
