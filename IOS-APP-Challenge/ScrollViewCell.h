//
//  ScrollViewCell.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/14/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UITextView *TextView;
@property (weak, nonatomic) IBOutlet UIImageView *ImageView;

@end
