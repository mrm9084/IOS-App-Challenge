//
//  PatternViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/15/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "PatternViewController.h"

@interface PatternViewController ()

@end

@implementation PatternViewController
NSMutableArray *arraypatterns;


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
    self.patternView.delegate = self;
    arraypatterns = [[NSMutableArray alloc] initWithObjects:
                   @"solid",@"striped",  nil];
    
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
    
    return [arraypatterns count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [arraypatterns objectAtIndex:row];
}



@end
