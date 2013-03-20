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
@synthesize suitType = _suitType;

-(id)initWithSuitType:(NSString *) suitType{
    if (self = [super init]) {
        suit = [[Suit alloc] init];
        [suit setColor:@"NOCOLOR"];
        [suit setPattern:@"NOPATTERN"];
        
        jeans = [[Jeans alloc] init];
        [jeans setColor:@"NOCOLOR"];
        [jeans setPattern:@"NOPATTERN"];
        
        kahakis = [[Kahakis alloc] init];
        [kahakis setColor:@"NOCOLOR"];
        [kahakis setPattern:@"NOPATTERN"];
        
        socks = [[Socks alloc] init];
        [socks setColor:@"NOCOLOR"];
        [socks setPattern:@"NOPATTERN"];
        
        shoes = [[Shoes alloc] init];
        [shoes setColor:@"NOCOLOR"];
        [shoes setPattern:@"NOPATTERN"];
        
        belt = [[Belts alloc] init];
        [belt setColor:@"NOCOLOR"];
        [belt setPattern:@"NOPATTERN"];
        
        ties = [[Ties alloc] init];
        [ties setColor:@"NOCOLOR"];
        [ties setPattern:@"NOPATTERN"];
        
        pocketSquare = [[PocketSquare alloc] init];
        [pocketSquare setColor:@"NOCOLOR"];
        [pocketSquare setPattern:@"NOPATTERN"];
        
        shirt = [[Shirt alloc] init];
        [shirt setColor:@"NOCOLOR"];
        [shirt setPattern:@"NOPATTERN"];
        
        blazer = [[Blazer alloc] init];
        [blazer setColor:@"NOCOLOR"];
        [blazer setPattern:@"NOPATTERN"];
        
        dressPants = [[DressPants alloc] init];
        [dressPants setColor:@"NOCOLOR"];
        [dressPants setPattern:@"NOPATTERN"];
        
        [self setSuitType:suitType];
        
        if ([suitType isEqualToString:@"Business"]) {
            itemArray = [[NSArray alloc] initWithObjects:
                        suit,
                        ties,
                        pocketSquare,
                        shirt,
                        belt,
                        socks,
                        shoes,
                        nil];
        }else{
        
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
    }
    return self;
}

- (NSString *)description {
    NSMutableString *description = [[NSMutableString alloc] init];
    NSLog(@"HI there %@",[self suitType]);
    for (ClothesItem *item in itemArray) {
        description = [NSString stringWithFormat: @"%@%@",description,item.description];
    }
    return description;
}

-(void) completeOutfit{
    for (ClothesItem *item in itemArray) {
        if ([[item color] isEqualToString: @"NOCOLOR"] || [[item color] isEqualToString: @"RANDOMCOLOR"]) {
            NSMutableSet *validOutfit = [self getValidColorFor:item];
            NSMutableArray *arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
            NSNumber *size = [[NSNumber alloc] initWithInt:[arraycolors count]];
            NSString *colorString = arraycolors[(arc4random() % size.intValue)];
            [item setColor:colorString];
        }
        if ([[item color] isEqualToString: @"NOCOLOR"] || [[item color] isEqualToString: @"RANDOMCOLOR"]) {
            NSMutableSet *validOutfit = [self getValidPatternFor:item];
            NSMutableArray *arrayPatterns = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
            NSLog(@"second %d",[arrayPatterns count]);
            NSNumber *size = [[NSNumber alloc] initWithInt:[arrayPatterns count]];
            NSLog(@"%d",size.intValue);
            NSString *patternString = arrayPatterns[(arc4random() % size.intValue)];
            [item setPattern:patternString];
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
@end
