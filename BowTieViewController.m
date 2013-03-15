//
//  BowTieViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/15/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "BowTieViewController.h"
#import "BowTieViewCell.h"

@interface BowTieViewController ()

@end

@implementation BowTieViewController

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
    BowTieViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"BowView" forIndexPath:indexPath];
    NSArray *textArray = [[NSArray alloc] initWithObjects:
                          @"Place the bow tie around your neck, situating it so that end A is about two inches longer than end B.",
                          @"Cross end A over end B.",
                          @"Bring end A up and under the loop.",
                          @"Now double end B over itself to form the front base loop of the bow tie.",
                          @"Loop end A over the center of the loop you just formed.",
                          @"Holding everything in place, double end A back on itself and poke it through the loop behind the bow tie.",
                         nil];
    
    NSArray *imageArray = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"bow1.png"],
                           [UIImage imageNamed:@"bow2.png"],
                           [UIImage imageNamed:@"bow3.png"],
                           [UIImage imageNamed:@"bow4.png"],
                           [UIImage imageNamed:@"bow5.png"],
                           [UIImage imageNamed:@"bow6.png"],
                           nil];
    
    cell.TextView.text= textArray[indexPath.row];
    cell.ImageView.image = imageArray[indexPath.row];
    cell.ImageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
    cell.contentView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
    return cell;
}

#pragma mark - UICollectionView Deleate

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
}


@end
