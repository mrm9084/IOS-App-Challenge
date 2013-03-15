//
//  Outfit.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Outfit.h"

@implementation Outfit

@synthesize _Suit = suit;
@synthesize _Jeans = jeans;
@synthesize _Kahakis = kahakis;
@synthesize _Socks = socks;
@synthesize _Shoes = shoes;
@synthesize _Belt = belt;
@synthesize _Ties = ties;
@synthesize _PocketSquare = pocketSquare;
@synthesize _Shirt = shirt;
@synthesize _Blazer = blazer;
@synthesize _DressPants = dressPants;

-(void) completeOutfit{      
}

-(NSMutableSet*) getValidColorFor:(ClothesItem *)clothesItem{
    return [clothesItem validColor: self];
}

-(NSMutableSet *) getValidPatternFor:(ClothesItem *)clothesItem{
    return [clothesItem validPattern: self];
}
@end
