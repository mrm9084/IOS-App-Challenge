//
//  Kahakis.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Kahakis.h"

@implementation Kahakis

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possibilities = [[NSMutableSet alloc] initWithObjects:
                                   @"LIGHT",
                                   @"DARK",
                                   nil];
    [possibilities addObject:@"RANDOMCOLOR"];
    return possibilities;
}
-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possibilities = [[NSMutableSet alloc] initWithObjects:
                                   nil];
    [possibilities addObject:@"RANDOMPATTERN"];
    return possibilities;
}

@end
