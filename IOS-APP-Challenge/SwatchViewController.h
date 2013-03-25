//
//  SwatchViewController.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/21/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Outfit.h"
#import "SwatchViewCell.h"
@interface SwatchViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSNumber *page;
@property (strong,nonatomic) Outfit *outfit;
- (IBAction)goHome:(id)sender;
- (IBAction)dismissView:(id)sender;



@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;
@end
