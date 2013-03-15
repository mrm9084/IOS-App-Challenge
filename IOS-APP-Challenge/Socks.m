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
  
    return possiblilities;
}

-(NSMutableSet *) validSuitColor:(Suit *)suit{
    NSMutableSet *possiblilities;
    if(suit !=NULL){
        switch ([suit _Color]) {
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  nil];
                break;
            case GRAY:
            case CHARCOAL:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAY],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  nil];
                break;
            case OLIVE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  nil];
                break;
            case BROWN:
            case NAVY:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: BROWNARGYLE],
                                  nil];
                break;
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAY],
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  [NSNumber numberWithInt: BROWNARGYLE],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: GRAY],
                          [NSNumber numberWithInt: BROWN],
                          [NSNumber numberWithInt: GRAYARGYLE],
                          [NSNumber numberWithInt: BROWNARGYLE],
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validShirtColor:(Shirt *)shirt{
    NSMutableSet *possiblilities;
    if (shirt != NULL) {
        Color shirtColor = [shirt _Color];
        switch (shirtColor) {
            case DARKPURPLE:
            case RED:
            case ROYALBLUE:
            case TEAL:
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAY],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  nil];
                break;
            case AQUA:
            case MINT:
            case WHITE:
            case YELLOW:
            case LIGHTBLUE:
            case PINK:
            case LAVENDER:
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAY],
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  [NSNumber numberWithInt: BROWNARGYLE],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: GRAY],
                          [NSNumber numberWithInt: BROWN],
                          [NSNumber numberWithInt: GRAYARGYLE],
                          [NSNumber numberWithInt: BROWNARGYLE],
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
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAY],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  nil];
                break;
            case BROWN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: BROWNARGYLE],
                                  nil];
                break;
            case GRAY:
                
                break;
            case CORDOVAN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: BROWNARGYLE],
                                  nil];
                break;
                
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAY],
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  [NSNumber numberWithInt: BROWNARGYLE],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: GRAY],
                          [NSNumber numberWithInt: BROWN],
                          [NSNumber numberWithInt: GRAYARGYLE],
                          [NSNumber numberWithInt: BROWNARGYLE],
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
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAY],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  nil];
                break;
            case BROWN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: BROWNARGYLE],
                                  nil];
                break;
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: GRAY],
                                  [NSNumber numberWithInt: BROWN],
                                  [NSNumber numberWithInt: GRAYARGYLE],
                                  [NSNumber numberWithInt: BROWNARGYLE],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: GRAY],
                          [NSNumber numberWithInt: BROWN],
                          [NSNumber numberWithInt: GRAYARGYLE],
                          [NSNumber numberWithInt: BROWNARGYLE],
                          nil];
    }
    return possiblilities;
    
}

@end
