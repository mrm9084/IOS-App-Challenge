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
    
    return possiblilities;
}

-(NSMutableSet *) valdSockColor:(Socks *) sock{
    NSMutableSet *possiblilities;
    if(sock !=NULL){
        switch ([sock _Color]) {
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:BLACK],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case BROWN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:BROWN],
                                  nil];
                break;
            case GRAY:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case GRAYARGYLE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case BROWNARGYLE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:BROWN],
                                  nil];
                break;
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:BLACK],
                                  [NSNumber numberWithInt:BROWN],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt:NAVY],
                          [NSNumber numberWithInt:GRAY],
                          [NSNumber numberWithInt:CHARCOAL],
                          [NSNumber numberWithInt:BLACK],
                          [NSNumber numberWithInt:BROWN],
                          [NSNumber numberWithInt:OLIVE],
                          nil];
    }
    return possiblilities;

}

-(NSMutableSet *) validShirtColor:(Shirt *)shirt{
    NSMutableSet *possiblilities;
    if (shirt != NULL) {
        Color shirtColor = [shirt _Color];
        switch (shirtColor) {
            case AQUA:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  nil];
                break;
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
                
            case MINT:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: OLIVE],
                                  nil];
                break;
            case WHITE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:BLACK],
                                  [NSNumber numberWithInt:BROWN],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case YELLOW:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case LIGHTBLUE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  nil];
                break;
            case PINK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case LAVENDER:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case DARKPURPLE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case RED:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  nil];
                break;
            case ROYALBLUE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case TEAL:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  nil];
                break;
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:BLACK],
                                  [NSNumber numberWithInt:BROWN],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt:NAVY],
                          [NSNumber numberWithInt:GRAY],
                          [NSNumber numberWithInt:CHARCOAL],
                          [NSNumber numberWithInt:BLACK],
                          [NSNumber numberWithInt:BROWN],
                          [NSNumber numberWithInt:OLIVE],
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validShoesColor:(Shoes *)shoes{
    NSMutableSet *possiblilities;
    if (shoes != NULL) {
        Color shoesColor = [shoes _Color];
        switch (shoesColor) {
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:BLACK],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case BROWN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:BROWN],
                                  nil];
                break;
            case GRAY:
                
                break;
            case CORDOVAN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  nil];
                break;
                
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:BLACK],
                                  [NSNumber numberWithInt:BROWN],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt:NAVY],
                          [NSNumber numberWithInt:GRAY],
                          [NSNumber numberWithInt:CHARCOAL],
                          [NSNumber numberWithInt:BLACK],
                          [NSNumber numberWithInt:BROWN],
                          [NSNumber numberWithInt:OLIVE],
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validBeltColor:(Belts *)belt{
    NSMutableSet *possiblilities;
    if (belt != NULL) {
        Color shoesColor = [belt _Color];
        switch (shoesColor) {
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:BLACK],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
            case BROWN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:BROWN],
                                  nil];
                break;
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:NAVY],
                                  [NSNumber numberWithInt:GRAY],
                                  [NSNumber numberWithInt:CHARCOAL],
                                  [NSNumber numberWithInt:BLACK],
                                  [NSNumber numberWithInt:BROWN],
                                  [NSNumber numberWithInt:OLIVE],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt:NAVY],
                          [NSNumber numberWithInt:GRAY],
                          [NSNumber numberWithInt:CHARCOAL],
                          [NSNumber numberWithInt:BLACK],
                          [NSNumber numberWithInt:BROWN],
                          [NSNumber numberWithInt:OLIVE],
                          nil];
    }
    return possiblilities;

}

-(NSMutableSet *) validPattern:(ClothesItem *)clothesItem{
    NSMutableSet *possiblilities;
    if (![clothesItem isMemberOfClass:[Shirt class]]){
        return NULL;
    }
    Shirt *shirt = ((Shirt *) clothesItem);
    if (shirt != NULL) {
        Pattern pattern = [shirt _Pattern];
        switch (pattern) {
            case PLAIN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt:PLAIN],
                                  [NSNumber numberWithInt:PINSTRIPE],
                                  [NSNumber numberWithInt:PLAID],
                                  nil];
                break;
                
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects: [NSNumber numberWithInt:PLAIN], nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt:PLAIN],
                          [NSNumber numberWithInt:PINSTRIPE],
                          [NSNumber numberWithInt:PLAID],
                          nil];
    }
    return possiblilities;
}

@end
