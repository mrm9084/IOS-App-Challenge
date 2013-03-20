//
//  PresentOutfitViewController.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/17/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Outfit.h"

@interface PresentOutfitViewController : UIViewController

@property(strong,nonatomic) Outfit *outfit;
@property (weak, nonatomic) IBOutlet UITextView *presentOutfit;


@end
