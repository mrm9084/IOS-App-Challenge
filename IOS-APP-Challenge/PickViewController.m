//
//  PickViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/15/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "PickViewController.h"

@interface PickViewController ()

@end

@implementation PickViewController

NSMutableArray *arraycolors;
NSMutableArray *patterncolors;

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
    self.pickerView.delegate = self;
    arraycolors = [[NSMutableArray alloc] initWithObjects:
                   @"White",@"Pale Yellow",@"LightBlue",@"Mint",@"Dark Purple",@"Lavendar",  nil];
    patterncolors = [[NSMutableArray alloc] initWithObjects:
                   @"solid", @"striped", nil];
	self.patternView.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark -UIPickerView DataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [arraycolors count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [arraycolors objectAtIndex:row];
}
#pragma mark -UIPickerView DataSource
- (NSInteger)numberOfComponentsInpatternView:(UIPickerView *)patternView{
    return 1;
}
-(NSInteger)patternView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [patterncolors count];
}
- (NSString *)patternView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [patterncolors objectAtIndex:row];
}

@end
