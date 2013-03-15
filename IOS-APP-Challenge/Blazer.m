//
//  Blazer.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Blazer.h"

@implementation Blazer

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possibilities = [[NSMutableSet alloc] initWithObjects:
                                   [NSNumber numberWithInt: NAVY],
                                   [NSNumber numberWithInt: BLACK],
                                   [NSNumber numberWithInt: GRAY],
                                   [NSNumber numberWithInt: CHARCOAL],
                                   [NSNumber numberWithInt: BROWN],
                                   [NSNumber numberWithInt: OLIVE],
                                   [NSNumber numberWithInt: TWEED],
                                   [NSNumber numberWithInt: BURGUNDY],
                                   [NSNumber numberWithInt: CREAM],
                                   nil];
    return possibilities;
}
-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possibilities = [[NSMutableSet alloc] initWithObjects:
                                   [NSNumber numberWithInt: PLAIN],
                                   [NSNumber numberWithInt: PINSTRIPE],
                                   nil];
    return possibilities;
}

@end
