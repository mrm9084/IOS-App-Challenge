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

@property(assign,nonatomic) Suit *_Suit;
@property(assign,nonatomic) Jeans *_Jeans;
@property(assign,nonatomic) Kahakis *_Kahakis;
@property(assign,nonatomic) Socks *_Socks;
@property(assign,nonatomic) Shoes *_Shoes;
@property(assign,nonatomic) Belts *_Belt;
@property(assign,nonatomic) Ties *_Ties;
@property(assign,nonatomic) PocketSquare *_PocketSquare;
@property(assign,nonatomic) Shirt *_Shirt;
@property(assign,nonatomic) Blazer *_Blazer;
@property(assign,nonatomic) DressPants *_DressPants;

-(void) completeOutfit;
-(NSMutableSet *) getValidColorFor:(ClothesItem *) clothesItem;
-(NSMutableSet *) getValidPatternFor:(ClothesItem *) clothesItem;





@end
