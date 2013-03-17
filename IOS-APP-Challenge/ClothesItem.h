//
//  ClothesItem2.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Outfit;

@interface ClothesItem : NSObject
    @property(assign,nonatomic) NSString *color;
    @property(assign,nonatomic) NSString *pattern;

- (NSString *)description;
-(NSMutableSet *) validColor:(Outfit *) outfit;
-(NSMutableSet *) validPattern:(Outfit *) outfit;


@end
