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
                                   @"NAVY",
                                   @"BLACK",
                                   @"GRAY",
                                   @"CHARCOAL",
                                   @"BROWN",
                                   @"OLIVE",
                                   @"TAN",
                                   nil];
    [possibilities addObject:@"RANDOMCOLOR"];
    return possibilities;
}
-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possibilities = [[NSMutableSet alloc] initWithObjects:
                                   @"PLAIN",
                                   @"PINSTRIPE",
                                   nil];
    [possibilities addObject:@"RANDOMPATTERN"];
    return possibilities;
}

@end
