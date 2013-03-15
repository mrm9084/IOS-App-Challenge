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

@synthesize _Color = __Color;
@synthesize _Pattern = __Pattern;

-(NSMutableSet *) validColor:(Outfit *) outfit{
    return NULL;
}
-(NSMutableSet *) validPattern:(Outfit *) outfit{
    return NULL;
}

@end
