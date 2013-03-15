//
//  DressPants.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "DressPants.h"
#import "Outfit.h"

@implementation DressPants

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possibilities = [[NSMutableSet alloc] initWithObjects:
                                   [NSNumber numberWithInt: NAVY],
                                   [NSNumber numberWithInt: BLACK],
                                   [NSNumber numberWithInt: GRAY],
                                   [NSNumber numberWithInt: CHARCOAL],
                                   [NSNumber numberWithInt: BROWN],
                                   [NSNumber numberWithInt: OLIVE],
                                   [NSNumber numberWithInt: TAN],
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
