//
//  Shirt.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Outfit.h"


@implementation Shirt

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possiblilities = [[outfit _Shirt] validColorWithSuit:[outfit _Suit]];
    [possiblilities intersectSet: [[outfit _Shirt] validColorWithSocks:[outfit _Socks]]];
    [possiblilities intersectSet: [[outfit _Shirt] validColorWithTie:[outfit _Ties]]];
    [possiblilities intersectSet: [[outfit _Shirt] validColorWithPocketSquare:[outfit _PocketSquare]]];
    [possiblilities addObject:@"RANDOMCOLOR"];
    return possiblilities;
}

-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possiblilities;
    if (![[[outfit _Ties] pattern] isEqualToString: @"NOPATTERN"]) {
        NSString *pattern = [[outfit _Ties] pattern];
        if ([pattern isEqualToString:@"PLAIN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                            @"STRIP",
                            @"POCODOT",
                            @"PLAID",
                            nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                            @"PLAIN",
                            nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                        @"PLAIN",
                        @"STRIP",
                        @"POCODOT",
                        @"PLAID",
                        nil];
    }
    [possiblilities addObject:@"RANDOMPATTERN"];
    return possiblilities;
}

-(NSMutableSet *) validColorWithSuit:(Suit *) suit{
    NSMutableSet *possiblilities;
    if(![[suit color] isEqualToString: @"NOCOLOR"]){
        NSString *suitColor = [suit color];
        if ([suitColor isEqualToString:@"NAVY"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              @"YELLOW",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"LAVENDER",
                              @"AQUA",
                              nil];
        }else if ([suitColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              nil];
        }else if ([suitColor isEqualToString:@"BROWN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              nil];
        }else if ([suitColor isEqualToString:@"OLIVE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              @"YELLOW",
                              @"PINK",
                              @"LAVENDER",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"ROYALBLUE",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              @"YELLOW",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"LAVENDER",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"ROYALBLUE",
                              @"TEAL",
                              @"AQUA",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"WHITE",
                          @"MINT",
                          @"YELLOW",
                          @"LIGHTBLUE",
                          @"PINK",
                          @"LAVENDER",
                          @"DARKPURPLE",
                          @"BLACK",
                          @"RED",
                          @"ROYALBLUE",
                          @"TEAL",
                          @"AQUA",
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validColorWithSocks:(Socks *) suit{
    NSMutableSet *possiblilities;
    if(![[suit color] isEqualToString: @"NOCOLOR"]){
        NSString *suitColor = [suit color];
        if ([suitColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              nil];
        }else if ([suitColor isEqualToString:@"BROWN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              nil];
        }else if ([suitColor isEqualToString:@"BROWNARGYLE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              @"YELLOW",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"LAVENDER",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"ROYALBLUE",
                              @"TEAL",
                              @"AQUA",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"WHITE",
                          @"MINT",
                          @"YELLOW",
                          @"LIGHTBLUE",
                          @"PINK",
                          @"LAVENDER",
                          @"DARKPURPLE",
                          @"BLACK",
                          @"RED",
                          @"ROYALBLUE",
                          @"TEAL",
                          @"AQUA",
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validColorWithTie: (Ties *) tie{
    NSMutableSet *possiblilities;
    if(![[tie color] isEqualToString: @"NOCOLOR"]){
        NSString *tieColor = [tie color];
        if ([tieColor isEqualToString:@"DUCIE"]) {
            
        }else if ([tieColor isEqualToString:@"BURGUNDY"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"TEAL",
                              nil];
        }else if ([tieColor isEqualToString:@"YELLOW"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"LIGHTBLUE",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"TEAL",
                              nil];
        }else if ([tieColor isEqualToString:@"BLUE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"YELLOW",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"ROYALBLUE",
                              @"TEAL",
                              @"AQUA",
                              nil];
        }else if ([tieColor isEqualToString:@"GREEN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"LIGHTBLUE",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"ROYALBLUE",
                              @"TEAL",
                              @"AQUA",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              @"YELLOW",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"LAVENDER",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"ROYALBLUE",
                              @"TEAL",
                              @"AQUA",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"WHITE",
                          @"MINT",
                          @"YELLOW",
                          @"LIGHTBLUE",
                          @"PINK",
                          @"LAVENDER",
                          @"DARKPURPLE",
                          @"BLACK",
                          @"RED",
                          @"ROYALBLUE",
                          @"TEAL",
                          @"AQUA",
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validColorWithPocketSquare: (PocketSquare *) pocketSquare{
    NSMutableSet *possiblilities;
    if(![[pocketSquare  color] isEqualToString: @"NOCOLOR"]){
        NSString *tieColor = [pocketSquare color];
        if ([tieColor isEqualToString:@"DUCIE"]) {
            
        }else if ([tieColor isEqualToString:@"WHITE"]) {
            
        }else if ([tieColor isEqualToString:@"BURGUNDY"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"TEAL",
                              nil];
        }else if ([tieColor isEqualToString:@"YELLOW"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"LIGHTBLUE",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"TEAL",
                              nil];
        }else if ([tieColor isEqualToString:@"BLUE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"YELLOW",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"ROYALBLUE",
                              @"TEAL",
                              @"AQUA",
                              nil];
        }else if ([tieColor isEqualToString:@"GREEN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"LIGHTBLUE",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"ROYALBLUE",
                              @"TEAL",
                              @"AQUA",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"WHITE",
                              @"MINT",
                              @"YELLOW",
                              @"LIGHTBLUE",
                              @"PINK",
                              @"LAVENDER",
                              @"DARKPURPLE",
                              @"BLACK",
                              @"RED",
                              @"ROYALBLUE",
                              @"TEAL",
                              @"AQUA",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"WHITE",
                          @"MINT",
                          @"YELLOW",
                          @"LIGHTBLUE",
                          @"PINK",
                          @"LAVENDER",
                          @"DARKPURPLE",
                          @"BLACK",
                          @"RED",
                          @"ROYALBLUE",
                          @"TEAL",
                          @"AQUA",
                          nil];
    }
    return possiblilities;

}



@end
