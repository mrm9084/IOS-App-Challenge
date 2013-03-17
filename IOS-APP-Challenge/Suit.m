//
//  Suit.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Suit.h"
#import "Outfit.h"

@implementation Suit

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possiblilities = [[outfit _Suit] validShirtColor:[outfit _Shirt]];
    [possiblilities intersectSet: [[outfit _Suit] validShoesColor:[outfit _Shoes]]];
    [possiblilities intersectSet: [[outfit _Suit] validBeltColor:[outfit _Belt]]];
    [possiblilities addObject:@"RANDOMCOLOR"];
    return possiblilities;
}

-(NSMutableSet *) valdSockColor:(Socks *) sock{
    NSMutableSet *possiblilities;
    if(![[sock color] isEqualToString: @"NOCOLOR"]){
        NSString *sockColor = [sock color];
        if ([sockColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              @"BLACK",
                              @"OLIVE",
                              nil];
        }else if ([sockColor isEqualToString:@"BROWN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"BROWN",
                              nil];
        }else if ([sockColor isEqualToString:@"GRAY"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              @"OLIVE",
                              nil];
        }else if ([sockColor isEqualToString:@"GRAYARGYLE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              @"OLIVE",
                              nil];
        }else if ([sockColor isEqualToString:@"BROWNARGYLE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"BROWN",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"BLACK"
                              @"BROWN",
                              @"OLIVE",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"NAVY",
                          @"GRAY",
                          @"CHARCOAL",
                          @"BLACK",
                          @"BROWN",
                          @"OLIVE",
                          nil];
    }
    return possiblilities;

}

-(NSMutableSet *) validShirtColor:(Shirt *)shirt{
    NSMutableSet *possiblilities;
    if (![[shirt color] isEqualToString: @"NOCOLOR"]) {
        NSString *shirtColor = [shirt color];
        if ([shirtColor isEqualToString:@"AQUA"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              nil];
        }else if ([shirtColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              @"OLIVE",
                              nil];
        }else if ([shirtColor isEqualToString:@"MINT"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"BROWN",
                              @"OLIVE",
                              nil];
        }else if ([shirtColor isEqualToString:@"WHITE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"BLACK",
                              @"BROWN",
                              @"OLIVE",
                              nil];
        }else if ([shirtColor isEqualToString:@"YELLOW"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"OLIVE",
                              nil];
        }else if ([shirtColor isEqualToString:@"LIGHTBLUE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              nil];
        }else if ([shirtColor isEqualToString:@"PINK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"OLIVE",
                              nil];
        }else if ([shirtColor isEqualToString:@"LAVENDER"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"OLIVE",
                              nil];
        }else if ([shirtColor isEqualToString:@"DARKPURPLE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              @"OLIVE",
                              nil];
        }else if ([shirtColor isEqualToString:@"RED"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              nil];
        }else if ([shirtColor isEqualToString:@"ROYALBLUE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              @"OLIVE",
                              nil];
        }else if ([shirtColor isEqualToString:@"TEAL"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"BLACK",
                              @"BROWN",
                              @"OLIVE",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"NAVY",
                          @"GRAY",
                          @"CHARCOAL",
                          @"BLACK",
                          @"BROWN",
                          @"OLIVE",
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validShoesColor:(Shoes *)shoes{
    NSMutableSet *possiblilities;
    if (![[shoes color] isEqualToString: @"NOCOLOR"]) {
        NSString *shoesColor = [shoes color];
        if ([shoesColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              @"BLACK",
                              @"OLIVE",
                              nil];
        }else if ([shoesColor isEqualToString:@"BROWN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"BROWN",
                              nil];
        }else if ([shoesColor isEqualToString:@"GRAY"]) {
            
        }else if ([shoesColor isEqualToString:@"CORDOVAN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"BLACK",
                              @"BROWN",
                              @"OLIVE",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"NAVY",
                          @"GRAY",
                          @"CHARCOAL",
                          @"BLACK",
                          @"BROWN",
                          @"OLIVE",
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validBeltColor:(Belts *)belt{
    NSMutableSet *possiblilities;
    if (![[belt color] isEqualToString: @"NOCOLOR"]) {
        NSString *shoesColor = [belt color];
        if ([shoesColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"GRAY",
                              @"CHARCOAL",
                              @"BLACK",
                              @"OLIVE",
                              nil];
        }else if ([shoesColor isEqualToString:@"BROWN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"BROWN",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"NAVY",
                              @"GRAY",
                              @"CHARCOAL",
                              @"BLACK",
                              @"BROWN",
                              @"OLIVE",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"NAVY",
                          @"GRAY",
                          @"CHARCOAL",
                          @"BLACK",
                          @"BROWN",
                          @"OLIVE",
                          nil];
    }
    return possiblilities;

}

-(NSMutableSet *) validPattern:(ClothesItem *)clothesItem{
    NSMutableSet *possiblilities;
    if ([clothesItem isMemberOfClass:[Shirt class]]){
        Shirt *shirt = ((Shirt *) clothesItem);
        if (![[shirt pattern] isEqualToString: @"NOPATTERN"]) {
            NSString *pattern = [shirt pattern];
            if ([pattern isEqualToString:@"PLAIN"]) {
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  @"PLAIN",
                                  @"PINSTRIPE",
                                  @"PLAID",
                                  nil];
            }else{
                possiblilities = [[NSMutableSet alloc] initWithObjects: @"PLAIN", nil];
            }
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"PLAIN",
                              @"PINSTRIPE",
                              @"PLAID",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"PLAIN",
                          @"PINSTRIPE",
                          @"PLAID",
                          nil];
    }
    [possiblilities addObject:@"RANDOMPATTERN"];
    return possiblilities;
}

@end
