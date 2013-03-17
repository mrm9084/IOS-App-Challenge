//
//  PresentOutfitViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/17/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "PresentOutfitViewController.h"

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
    NSString *description = _outfit.description;
    [[self presentOutfit] setText:description];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
