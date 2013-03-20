//
//  PresentOutfitViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/17/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "PresentOutfitViewController.h"
#import "PickViewController.h"


@interface PresentOutfitViewController ()

@end

@implementation PresentOutfitViewController{
    
}
@synthesize outfit = _outfit;

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
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
    NSString *description = _outfit.description;
    [[self presentOutfit] setText:description];
    self.presentOutfit.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
