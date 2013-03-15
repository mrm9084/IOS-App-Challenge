//
//  ScrollViewController.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/14/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScrollViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
