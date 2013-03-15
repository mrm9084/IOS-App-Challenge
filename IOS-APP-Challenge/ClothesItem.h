//
//  ClothesItem2.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Color.h"
#import "Pattern.h"
@class Outfit;

@interface ClothesItem : NSObject
    @property(assign,nonatomic) Color _Color;
    @property(assign,nonatomic) Pattern _Pattern;

-(NSMutableSet *) validColor:(Outfit *) outfit;
-(NSMutableSet *) validPattern:(Outfit *) outfit;


@end
