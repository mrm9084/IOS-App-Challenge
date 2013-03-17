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
@synthesize itemArray = itemArray;

-(id)init{
    if (self = [super init]) {
        suit = [[Suit alloc] init];
        [suit set_Color:NOCOLOR];
        [suit set_Pattern:NOPATTERN];
        
        jeans = [[Jeans alloc] init];
        [jeans set_Color:NOCOLOR];
        [jeans set_Pattern:NOPATTERN];
        
        kahakis = [[Kahakis alloc] init];
        [kahakis set_Color:NOCOLOR];
        [kahakis set_Pattern:NOPATTERN];
        
        socks = [[Socks alloc] init];
        [socks set_Color:NOCOLOR];
        [socks set_Pattern:NOPATTERN];
        
        shoes = [[Shoes alloc] init];
        [shoes set_Color:NOCOLOR];
        [shoes set_Pattern:NOPATTERN];
        
        belt = [[Belts alloc] init];
        [belt set_Color:NOCOLOR];
        [belt set_Pattern:NOPATTERN];
        
        ties = [[Ties alloc] init];
        [ties set_Color:NOCOLOR];
        [ties set_Pattern:NOPATTERN];
        
        pocketSquare = [[PocketSquare alloc] init];
        [pocketSquare set_Color:NOCOLOR];
        [pocketSquare set_Pattern:NOPATTERN];
        
        shirt = [[Shirt alloc] init];
        [shirt set_Color:NOCOLOR];
        [shirt set_Pattern:NOPATTERN];
        
        blazer = [[Blazer alloc] init];
        [blazer set_Color:NOCOLOR];
        [blazer set_Pattern:NOPATTERN];
        
        dressPants = [[DressPants alloc] init];
        [dressPants set_Color:NOCOLOR];
        [dressPants set_Pattern:NOPATTERN];
        
        itemArray = [[NSArray alloc] initWithObjects:
                     suit,
                     jeans,
                     kahakis,
                     socks,
                     shoes,
                     belt,
                     ties,
                     pocketSquare,
                     shirt,
                     blazer,
                     dressPants,
                     nil];
    }
    return self;
}

- (NSString *)description {
    NSMutableString *description = [[NSMutableString alloc] init];
    for (ClothesItem *item in itemArray) {
        description = [NSString stringWithFormat: @"%@%@",description,item.description];
    }
    return description;
}

-(void) completeOutfit{
    for (ClothesItem *item in itemArray) {
        if ([item _Color] == NOCOLOR || [item _Color] == RANDOMCOLOR) {
            NSMutableSet *validOutfit = [self getValidColorFor:item];
            NSMutableArray *arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
            NSLog(@"first %d",[arraycolors count]);
            NSNumber *size = [[NSNumber alloc] initWithInt:[arraycolors count]];
            NSLog(@"%d",size.intValue);
            NSNumber *colorNumber = arraycolors[(arc4random() % size.intValue)];
            [item set_Color:[self getColorEnumFromString:[self getEnumValueofColor:colorNumber]]];
        }
        if ([item _Color] == NOCOLOR || [item _Color] == RANDOMCOLOR) {
            NSMutableSet *validOutfit = [self getValidPatternFor:item];
            NSMutableArray *arrayPatterns = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
            NSLog(@"second %d",[arrayPatterns count]);
            NSNumber *size = [[NSNumber alloc] initWithInt:[arrayPatterns count]];
            NSLog(@"%d",size.intValue);
            NSNumber *patternNumber = arrayPatterns[(arc4random() % size.intValue)];
            [item set_Pattern:[self getPatternEnumFromString:[self getEnumValueofPattern:patternNumber]]];
        }
    }
    NSLog(@"%@",self);
}

-(NSMutableSet*) getValidColorFor:(ClothesItem *)clothesItem{
    return [clothesItem validColor: self];
}

-(NSMutableSet *) getValidPatternFor:(ClothesItem *)clothesItem{
    return [clothesItem validPattern: self];
}

-(Pattern) getPatternEnumFromString:(NSString *)value{
    Pattern pattern = NOPATTERN;
    if ([value isEqual: @"LEATHER"]) {
        pattern = LEATHER;
    } else if ([value isEqual: @"PINSTRIPE"]) {
        pattern = PINSTRIPE;
    } else if ([value isEqual: @"PLAID"]) {
        pattern = PLAID;
    } else if ([value isEqual: @"PLAIN"]) {
        pattern = PLAIN;
    } else if ([value isEqual: @"POCODOT"]) {
        pattern = POCODOT;
    } else if ([value isEqual: @"SOLID"]) {
        pattern = SOLID;
    } else if ([value isEqual: @"STRIP"]) {
        pattern = STRIP;
    } else if ([value isEqual: @"SUEDE"]) {
        pattern = SUEDE;
    }else{
        pattern = RANDOMPATTERN;
    }
    return pattern;
}

-(Color) getColorEnumFromString:(NSString *)value{
    Color color = NOCOLOR;
    if ([value isEqual: @"AQUA"]) {
        color = AQUA;
    }else if ([value isEqual: @"BLACK"]) {
        color = BLACK;
    }else if ([value isEqual: @"BLUE"]) {
        color = BLUE;
    }else if ([value isEqual: @"BROWN"]) {
        color = BROWN;
    }else if ([value isEqual: @"BROWNARGYLE"]) {
        color = BROWNARGYLE;
    }else if ([value isEqual: @"DUCIE"]) {
        color = DUCIE;
    }else if ([value isEqual: @"BRGUNDY"]) {
        color = BURGUNDY;
    }else if ([value isEqual: @"CHARCOAL"]) {
        color = CHARCOAL;
    }else if ([value isEqual: @"CORDOVAN"]) {
        color = CORDOVAN;
    }else if ([value isEqual: @"CREAM"]) {
        color = CREAM;
    }else if ([value isEqual: @"DARK"]) {
        color = DARK;
    }else if ([value isEqual: @"DARKPURPLE"]) {
        color = DARKPURPLE;
    }else if ([value isEqual: @"GRAY"]) {
        color = GRAY;
    }else if ([value isEqual: @"GRAYARGYLE"]) {
        color = GRAYARGYLE;
    }else if ([value isEqual: @"GREEN"]) {
        color = GREEN;
    }else if ([value isEqual: @"LAVENDER"]) {
        color = LAVENDER;
    }else if ([value isEqual: @"LIGHT"]) {
        color = LIGHT;
    }else if ([value isEqual: @"LIGHTBLUE"]) {
        color = LIGHTBLUE;
    }else if ([value isEqual: @"MINT"]) {
        color = MINT;
    }else if ([value isEqual: @"NAVY"]) {
        color = NAVY;
    }else if ([value isEqual: @"OLIVE"]) {
        color = OLIVE;
    }else if ([value isEqual: @"PINK"]) {
        color = PINK;
    }else if ([value isEqual: @"RED"]) {
        color = RED;
    }else if ([value isEqual: @"ROYALBLUE"]) {
        color = ROYALBLUE;
    }else if ([value isEqual: @"SILVER"]) {
        color = SILVER;
    }else if ([value isEqual: @"TAN"]) {
        color = TAN;
    }else if ([value isEqual: @"TEAL"]) {
        color = TEAL;
    }else if ([value isEqual: @"TWEED"]) {
        color = TWEED;
    }else if ([value isEqual: @"WHITE"]) {
        color = WHITE;
    }else if ([value isEqual: @"YELLOW"]) {
        color = YELLOW;
    }else{
        color = RANDOMCOLOR;
    }
    return color;
    
}

-(NSString *)getEnumValueofPattern:(NSNumber *)value{
    NSString *pattern = [[NSString alloc] init];
    switch (value.intValue) {
        case LEATHER:
            pattern = @"LEATHER";
            break;
        case PINSTRIPE:
            pattern = @"PINSTRIPE";
            break;
        case PLAID:
            pattern = @"PLAID";
            break;
        case PLAIN:
            pattern = @"PLAIN";
            break;
        case POCODOT:
            pattern = @"POCODOT";
            break;
        case SOLID:
            pattern = @"SOLID";
            break;
        case STRIP:
            pattern = @"STRIP";
            break;
        case SUEDE:
            pattern = @"SUEDE";
            break;
        default:
            pattern = @"RANDOM";
            break;
    }
    return pattern;
}

-(NSString *)getEnumValueofColor:(NSNumber *) value{
    NSString *color = [[NSString alloc] init];
    switch (value.intValue) {
        case AQUA:
            color = @"AQUA";
            break;
        case BLACK:
            color = @"BLACK";
            break;
        case BLUE:
            color = @"BLUE";
            break;
        case BROWN:
            color = @"BROWN";
            break;
        case BROWNARGYLE:
            color = @"BROWNARGYLE";
            break;
        case DUCIE:
            color = @"DUCIE";
            break;
        case BURGUNDY:
            color = @"BURGUNDY";
            break;
        case CHARCOAL:
            color = @"CHARCOAL";
            break;
        case CORDOVAN:
            color = @"CORDOVAN";
            break;
        case CREAM:
            color = @"CREAM";
            break;
        case DARK:
            color = @"DARK";
            break;
        case DARKPURPLE:
            color = @"DARKPURPLE";
            break;
        case GRAY:
            color = @"GRAY";
            break;
        case GRAYARGYLE:
            color = @"GRAYARGYLE";
            break;
        case GREEN:
            color = @"GREEN";
            break;
        case LAVENDER:
            color = @"LAVENDER";
            break;
        case LIGHT:
            color = @"LIGHT";
            break;
        case LIGHTBLUE:
            color = @"LIGHTBLUE";
            break;
        case MINT:
            color = @"MINT";
            break;
        case NAVY:
            color = @"NAVY";
            break;
        case OLIVE:
            color = @"OLIVE";
            break;
        case PINK:
            color = @"PINK";
            break;
        case RED:
            color = @"RED";
            break;
        case ROYALBLUE:
            color = @"ROYALBLUE";
            break;
        case SILVER:
            color = @"SILVER";
            break;
        case TAN:
            color = @"TAN";
            break;
        case TWEED:
            color = @"TWEED";
            break;
        case TEAL:
            color = @"TEAL";
            break;
        case WHITE:
            color = @"WHITE";
            break;
        case YELLOW:
            color = @"YELLOW";
            break;
        default:
            color = @"RANDOM";
            break;
    }
    return color;
}

@end
