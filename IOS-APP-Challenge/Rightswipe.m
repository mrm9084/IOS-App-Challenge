//
//  Rightswipe.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/18/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "Rightswipe.h"

@implementation Rightswipe
UISwipeGestureRecognizer *left = [[UISwipeGestureRecognizer alloc] initWithTarget: action:@selector(leftSwipe)];
[left setDirection:UISwipeGestureRecognizerDirectionLeft];
@end
