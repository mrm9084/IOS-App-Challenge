//
//  PocketViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/15/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "PocketViewController.h"
#import "PocketViewCell.h"

@interface PocketViewController ()

@end

@implementation PocketViewController

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
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - CollectionView Datasource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PocketViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PocketViewCell" forIndexPath:indexPath];
    NSArray *textArray = [[NSArray alloc] initWithObjects:
                          @"Lay your pocket square on a flat surface.  Fold one side in so that you have the look of two triangles - creating two tips.",
                          @"To create the third tip, fold in one side as shown in picture above.",
                          @"This step creates the base which will keep the pocket square in place. Fold in the opposite side and make sure to create a strong fold with the palm of your hand.",
                          @"Now fold in the sides to create a rectangle with points that will fit into your Suit pocket.",
                          @"Place the folded pocket square into your pocket and you are done.", nil];
    NSArray *imageArray = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"ps1.png"],
                           [UIImage imageNamed:@"ps2.png"],
                           [UIImage imageNamed:@"ps3.png"],
                           [UIImage imageNamed:@"ps4.png"],
                           [UIImage imageNamed:@"ps5.png"],
                           nil];
    
    cell.TextView.text= textArray[indexPath.row];
    cell.ImageView.image = imageArray[indexPath.row];
    cell.ImageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
    cell.contentView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];    return cell;
}

#pragma mark - UICollectionView Deleate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
}

@end
