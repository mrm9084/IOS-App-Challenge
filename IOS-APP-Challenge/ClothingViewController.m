//
//  ClothingViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/14/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "ClothingViewController.h"

@interface ClothingViewController ()

@end

@implementation ClothingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.colorcolectionView.dataSource = self;
    self.patterncollectionView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Collection View Data Source

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
        return 10;
    
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *color = [collectionView dequeueReusableCellWithReuseIdentifier:@"color" forIndexPath:indexPath];
    UICollectionViewCell *pattern = [collectionView dequeueReusableCellWithReuseIdentifier:@"pattern" forIndexPath:indexPath];
    
    color.backgroundColor = [UIColor blackColor];
    pattern.backgroundColor = [UIColor blueColor];
    
    return color, pattern;
}


@end
