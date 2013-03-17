//
//  Socks.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Outfit.h"

@implementation Socks

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possiblilities = [[outfit _Socks] validShirtColor:[outfit _Shirt]];
    [possiblilities intersectSet: [[outfit _Socks] validShoesColor:[outfit _Shoes]]];
    [possiblilities intersectSet: [[outfit _Socks] validBeltColor: [outfit _Belt]]];
    [possiblilities intersectSet: [[outfit _Socks] validSuitColor: [outfit _Suit]]];
    [possiblilities addObject:@"RANDOMCOLOR"];
    return possiblilities;
}

-(NSMutableSet *) validSuitColor:(Suit *)suit{
    NSMutableSet *possiblilities;
    if(![[suit color] isEqualToString: @"NOCOLOR"]){
        NSString *suitColor = [suit color];
        if ([suitColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              nil];
        }else if ([suitColor isEqualToString:@"GRAY"] || [suitColor isEqualToString:@"CHARCOAL"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"GRAY",
                              @"GRAYARGYLE",
                              nil];
        }else if ([suitColor isEqualToString:@"OLIVE"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"GRAYARGYLE",
                              nil];
        }else if ([suitColor isEqualToString:@"BROWN"] || [suitColor isEqualToString:@"NAVY"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BROWN",
                              @"BROWNARGYLE",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"GRAY",
                              @"BROWN",
                              @"GRAYARGYLE",
                              @"BROWNARGYLE",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"BLACK",
                          @"GRAY",
                          @"BROWN",
                          @"GRAYARGYLE",
                          @"BROWNARGYLE",
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validShirtColor:(Shirt *)shirt{
    NSMutableSet *possiblilities;
    if (![[shirt color] isEqualToString: @"NOCOLOR"]) {
        NSString *shirtColor = [shirt color];
        if ([shirtColor isEqualToString:@"DARKPURPLE"] || [shirtColor isEqualToString:@"RED"] || [shirtColor isEqualToString:@"ROYALBLUE"] || [shirtColor isEqualToString:@"TEAL"] || [shirtColor isEqualToString:@"BLACK"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"GRAY",
                              @"GRAYARGYLE",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"GRAY",
                              @"BROWN",
                              @"GRAYARGYLE",
                              @"BROWNARGYLE",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"BLACK",
                          @"GRAY",
                          @"BROWN",
                          @"GRAYARGYLE",
                          @"BROWNARGYLE",
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validShoesColor:(Shoes *)shoes{
    NSMutableSet *possiblilities;
    if (![[shoes color] isEqualToString: @"NOCOLOR"]) {
        NSString *shoesColor = [shoes color];
        if ([shoesColor isEqualToString:@"BLACK"]) {
            
        }else if ([shoesColor isEqualToString:@"BROWN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BROWN",
                              @"BROWNARGYLE",
                              nil];
        }else if ([shoesColor isEqualToString:@"GRAY"]) {
            
        }else if ([shoesColor isEqualToString:@"CORDOVAN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BROWN",
                              @"BROWNARGYLE",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"GRAY",
                              @"BROWN",
                              @"GRAYARGYLE",
                              @"BROWNARGYLE",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"BLACK",
                          @"GRAY",
                          @"BROWN",
                          @"GRAYARGYLE",
                          @"BROWNARGYLE",
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
                              @"BLACK",
                              @"GRAY",
                              @"GRAYARGYLE",
                              nil];
        }else  if ([shoesColor isEqualToString:@"BROWN"]) {
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BROWN",
                              @"BROWNARGYLE",
                              nil];
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              @"BLACK",
                              @"GRAY",
                              @"BROWN",
                              @"GRAYARGYLE",
                              @"BROWNARGYLE",
                              nil];
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          @"BLACK",
                          @"GRAY",
                          @"BROWN",
                          @"GRAYARGYLE",
                          @"BROWNARGYLE",
                          nil];
    }
    return possiblilities;
    
}

@end
