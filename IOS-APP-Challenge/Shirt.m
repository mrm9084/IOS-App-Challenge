//
//  Shirt.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/10/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Outfit.h"


@implementation Shirt

-(NSMutableSet *) validColor:(Outfit *) outfit{
    NSMutableSet *possiblilities = [[outfit _Shirt] validColorWithSuit:[outfit _Suit]];
        [possiblilities intersectSet: [[outfit _Shirt] validColorWithSocks:[outfit _Socks]]];
        [possiblilities intersectSet: [[outfit _Shirt] validColorWithTie:[outfit _Ties]]];
        [possiblilities intersectSet: [[outfit _Shirt] validColorWithPocketSquare:[outfit _PocketSquare]]];
    
    return possiblilities;
}

-(NSMutableSet *) validPattern:(Outfit *) outfit{
    NSMutableSet *possiblilities;
    if ([[outfit _Ties] isMemberOfClass:[Ties class]]){
        if ([outfit _Ties] != NULL) {
            Pattern pattern = [[outfit _Ties] _Pattern];
            switch (pattern) {
                case PLAIN:
                    possiblilities = [[NSMutableSet alloc] initWithObjects:
                                    [NSNumber numberWithInt: STRIP],
                                    [NSNumber numberWithInt: POCODOT],
                                    [NSNumber numberWithInt: PLAID],
                                    nil];
                    break;
                
                default:
                    possiblilities = [[NSMutableSet alloc] initWithObjects:
                                      [NSNumber numberWithInt: PLAIN],
                                      nil];
                    break;
            }
        }else{
            possiblilities = [[NSMutableSet alloc] initWithObjects:
                              [NSNumber numberWithInt: PLAIN],
                              [NSNumber numberWithInt: STRIP],
                              [NSNumber numberWithInt: POCODOT],
                              [NSNumber numberWithInt: PLAID],
                              nil];
        }
        return possiblilities;
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: PLAIN],
                          [NSNumber numberWithInt: STRIP],
                          [NSNumber numberWithInt: POCODOT],
                          [NSNumber numberWithInt: PLAID],
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validColorWithSuit:(Suit *) suit{
    NSMutableSet *possiblilities;
    if(suit != NULL){
        Color suitColor = [suit _Color];
        switch (suitColor) {
            case NAVY:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: LAVENDER],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  nil];
                break;
            case BROWN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  nil];
                break;
            case OLIVE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: LAVENDER],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  nil];
                break;
            case GRAY:
            case CHARCOAL:
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: LAVENDER],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  [NSNumber numberWithInt: TEAL],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: WHITE],
                          [NSNumber numberWithInt: MINT],
                          [NSNumber numberWithInt: YELLOW],
                          [NSNumber numberWithInt: LIGHTBLUE],
                          [NSNumber numberWithInt: PINK],
                          [NSNumber numberWithInt: LAVENDER],
                          [NSNumber numberWithInt: DARKPURPLE],
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: RED],
                          [NSNumber numberWithInt: ROYALBLUE],
                          [NSNumber numberWithInt: TEAL],
                          [NSNumber numberWithInt: AQUA],
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validColorWithSocks:(Socks *) suit{
    NSMutableSet *possiblilities;
    if(suit != NULL){
        Color suitColor = [suit _Color];
        switch (suitColor) {
            case BLACK:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  nil];
                break;
            case BROWN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  nil];
                break;
            case BROWNARGYLE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  nil];
                break;
            case GRAY:
            case GRAYARGYLE:
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: LAVENDER],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  [NSNumber numberWithInt: TEAL],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: WHITE],
                          [NSNumber numberWithInt: MINT],
                          [NSNumber numberWithInt: YELLOW],
                          [NSNumber numberWithInt: LIGHTBLUE],
                          [NSNumber numberWithInt: PINK],
                          [NSNumber numberWithInt: LAVENDER],
                          [NSNumber numberWithInt: DARKPURPLE],
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: RED],
                          [NSNumber numberWithInt: ROYALBLUE],
                          [NSNumber numberWithInt: TEAL],
                          [NSNumber numberWithInt: AQUA],
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validColorWithTie: (Ties *) tie{
    NSMutableSet *possiblilities;
    if(tie != NULL){
        Color tieColor = [tie _Color];
        switch (tieColor) {
            case DUCIE:
                
                break;
            case BURGUNDY:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: TEAL],
                                  nil];
                break;
            case YELLOW:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: TEAL],
                                  nil];
                break;
            case BLUE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  [NSNumber numberWithInt: TEAL],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
            case GREEN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  [NSNumber numberWithInt: TEAL],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
            case BLACK:
            case SILVER:
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: LAVENDER],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  [NSNumber numberWithInt: TEAL],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: WHITE],
                          [NSNumber numberWithInt: MINT],
                          [NSNumber numberWithInt: YELLOW],
                          [NSNumber numberWithInt: LIGHTBLUE],
                          [NSNumber numberWithInt: PINK],
                          [NSNumber numberWithInt: LAVENDER],
                          [NSNumber numberWithInt: DARKPURPLE],
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: RED],
                          [NSNumber numberWithInt: ROYALBLUE],
                          [NSNumber numberWithInt: TEAL],
                          [NSNumber numberWithInt: AQUA],
                          nil];
    }
    return possiblilities;
}

-(NSMutableSet *) validColorWithPocketSquare: (PocketSquare *) pocketSquare{
    NSMutableSet *possiblilities;
    if(pocketSquare != NULL){
        Color tieColor = [pocketSquare _Color];
        switch (tieColor) {
            case DUCIE:
                
                break;
            case WHITE:
                
                break;
            case BURGUNDY:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: TEAL],
                                  nil];
                break;
            case YELLOW:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: TEAL],
                                  nil];
                break;
            case BLUE:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  [NSNumber numberWithInt: TEAL],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
            case GREEN:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  [NSNumber numberWithInt: TEAL],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
            case BLACK:
            case SILVER:
            default:
                possiblilities = [[NSMutableSet alloc] initWithObjects:
                                  [NSNumber numberWithInt: WHITE],
                                  [NSNumber numberWithInt: MINT],
                                  [NSNumber numberWithInt: YELLOW],
                                  [NSNumber numberWithInt: LIGHTBLUE],
                                  [NSNumber numberWithInt: PINK],
                                  [NSNumber numberWithInt: LAVENDER],
                                  [NSNumber numberWithInt: DARKPURPLE],
                                  [NSNumber numberWithInt: BLACK],
                                  [NSNumber numberWithInt: RED],
                                  [NSNumber numberWithInt: ROYALBLUE],
                                  [NSNumber numberWithInt: TEAL],
                                  [NSNumber numberWithInt: AQUA],
                                  nil];
                break;
        }
    }else{
        possiblilities = [[NSMutableSet alloc] initWithObjects:
                          [NSNumber numberWithInt: WHITE],
                          [NSNumber numberWithInt: MINT],
                          [NSNumber numberWithInt: YELLOW],
                          [NSNumber numberWithInt: LIGHTBLUE],
                          [NSNumber numberWithInt: PINK],
                          [NSNumber numberWithInt: LAVENDER],
                          [NSNumber numberWithInt: DARKPURPLE],
                          [NSNumber numberWithInt: BLACK],
                          [NSNumber numberWithInt: RED],
                          [NSNumber numberWithInt: ROYALBLUE],
                          [NSNumber numberWithInt: TEAL],
                          [NSNumber numberWithInt: AQUA],
                          nil];
    }
    return possiblilities;

}



@end
