//
//  Outfit.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Suit.h"
#import "Jeans.h"
#import "Kahakis.h"
#import "Socks.h"
#import "Shoes.h"
#import "Belts.h"
#import "Ties.h"
#import "PocketSquare.h"
#import "Shirt.h"
#import "Blazer.h"
#import "DressPants.h"


@interface Outfit : NSObject

@property(strong,nonatomic) Suit *_Suit;
@property(strong,nonatomic) Jeans *_Jeans;
@property(strong,nonatomic) Kahakis *_Kahakis;
@property(strong,nonatomic) Socks *_Socks;
@property(strong,nonatomic) Shoes *_Shoes;
@property(strong,nonatomic) Belts *_Belt;
@property(strong,nonatomic) Ties *_Ties;
@property(strong,nonatomic) PocketSquare *_PocketSquare;
@property(strong,nonatomic) Shirt *_Shirt;
@property(strong,nonatomic) Blazer *_Blazer;
@property(strong,nonatomic) DressPants *_DressPants;
@property(strong,nonatomic) NSArray *itemArray;

- (NSString *)description;
-(void) completeOutfit;
-(NSMutableSet *) getValidColorFor:(ClothesItem *) clothesItem;
-(NSMutableSet *) getValidPatternFor:(ClothesItem *) clothesItem;





@end
