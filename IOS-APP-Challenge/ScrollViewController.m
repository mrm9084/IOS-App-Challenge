//
//  ScrollViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/14/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "ScrollViewController.h"
#import "ScrollViewCell.h"

@interface ScrollViewController ()

@end

@implementation ScrollViewController

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
    return 6;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ScrollViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ScrollViewCell" forIndexPath:indexPath];
    NSArray *textArray = [[NSArray alloc] initWithObjects:
                          @"Start with the wide end of your necktie on the right, extending about 12 inches below the narrow end on the left.", @"Then cross the wide end over the narrow end.", @"Bring the wide end around and behind the narrow end and turn back underneath", @"Pull the wide end through the loop and to the right and bring the wide end around front, over the narrow end from right to left.", @"Again, bring the wide end up and through the loop.", @"Then, bring the wide end down through the knot in front and using both hands, tighten the knot carefully and draw it up to the collar.", nil];
    NSArray *imageArray = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"Tie1.png"],
                           [UIImage imageNamed:@"Tie2.png"],
                           [UIImage imageNamed:@"Tie3.png"],
                           [UIImage imageNamed:@"Tie4.png"],
                           [UIImage imageNamed:@"Tie5.png"],
                           [UIImage imageNamed:@"Tie6.png"],
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

- (BOOL)canBecomeFirstResponder
{
    return YES;
}

@end
