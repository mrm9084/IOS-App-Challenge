//
//  ClothesItem.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "ClothesItem.h"
#import "Outfit.h"

@implementation ClothesItem

@synthesize color = _Color;
@synthesize pattern = _Pattern;

- (NSString *)description{
    NSString *description = [NSString stringWithFormat: @"%@ : ",[self class]];
    description = [NSString stringWithFormat: @"%@ %@",description,_Color];
    description = [NSString stringWithFormat: @"%@ , %@ \n",description,_Pattern];
    return description;
}

-(NSMutableSet *) validColor:(Outfit *) outfit{
    return NULL;
}
-(NSMutableSet *) validPattern:(Outfit *) outfit{
    return NULL;
}

@end
