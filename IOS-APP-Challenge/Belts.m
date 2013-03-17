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
        }else if ([suitColor isEqualToString:@"BROWN"]){
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

-(NSMutableSet *) validColorForShoes:(Shoes *) shoes{
    NSMutableSet *possibilities;
    if (![[shoes color] isEqualToString: @"NOCOLOR"]) {
        possibilities = [[NSMutableSet alloc] initWithObjects:
                         [shoes color],
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
                                   nil];
    [possibilities addObject:@"RANDOMPATTERN"];
    return possibilities;
}

@end
