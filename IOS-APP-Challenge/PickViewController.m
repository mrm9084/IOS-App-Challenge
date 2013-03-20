//
//  PickViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/15/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "PickViewController.h"
#import "PresentOutfitViewController.h"
#import "Outfit.h"

@interface PickViewController ()

@end

@implementation PickViewController {
    NSMutableArray *arraycolors;
    NSMutableArray *selected;
    NSArray *titles;
    bool type;
    bool swipe;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"%@",segue.identifier);
    if ([segue.identifier isEqualToString: @"OutfitSegueForward"]) {
        
        PickViewController *vc = ((PickViewController *) segue.destinationViewController);
        
        [vc setOutfit:[self outfit]];
        NSNumber *sum = [NSNumber numberWithInt:([[self page] intValue] + 1)];
        [vc setPage:sum];
    }else if ([segue.identifier isEqualToString: @"OutfitSegueBackward"]){
        PickViewController *vc = ((PickViewController *) segue.destinationViewController);
        [vc setOutfit:[self outfit]];
        NSNumber *sum = [NSNumber numberWithInt:([[self page] intValue] - 1)];
        [vc setPage:sum];

    }else if ([segue.identifier isEqualToString:@"Finish"]){
        PresentOutfitViewController *vc = ((PresentOutfitViewController *) segue.destinationViewController);
        [vc setOutfit:[self outfit]];
    }
    
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if (!swipe && ([identifier isEqualToString: @"OutfitSegueForward"])){
        return false;
    }else if ([identifier isEqualToString: @"OutfitSegueBackward"] && [self page].intValue <= 0){
        return false;
    }
    if ([identifier isEqualToString:@"Finish"]) {
        [[self outfit] completeOutfit];
    }
    
    return true;
}

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
        if ([self outfit] == NULL){
            [self setOutfit: [[Outfit alloc] initWithSuitType: [self navigationItem].title]];
    }
    
    
    
    titles = [[NSArray alloc] initWithObjects:
              @"Pick a Suit Color",
               @"Pick a Suit Pattern",
               @"Pick a Shirt Color",
               @"Pick a Shirt Pattern",
               @"Pick a Tie Color",
               @"Pick a Tie Pattern",
               @"Pick a Pocket Square Color",
               @"Pick a Pocket Square Pattern",
               @"Pick a Belt Color",
               @"Pick a Shoe Color",
               @"Pick a Sock Color",
              nil];
    NSArray *scrollPickerTitle = [[NSArray alloc] initWithObjects:
                                  @"SuitC",
                                  @"SuitP",
                                  @"ShirtC",
                                  @"ShirtP",
                                  @"TieC",
                                  @"TieP",
                                  @"PocketSquareC",
                                  @"PocketSquareP",
                                  @"Belt",
                                  @"Shoes",
                                  @"Socks",
                                  nil];
    
    NSNumber *pageNumber = [self page];
    swipe = true;
    if (pageNumber.intValue >= ((int)([titles count] - 1))) {
        pageNumber = [NSNumber numberWithInt:[titles count] - 1];
        swipe = false;
    }
    if (pageNumber.intValue < 0){
        pageNumber = [NSNumber numberWithInt:0];
        swipe = false;
    }
   
    
    [[self TitleLabel] setText:titles[pageNumber.intValue]];
    [[self pickerView] setRestorationIdentifier:scrollPickerTitle[pageNumber.intValue]];
    
    self.pickerView.delegate = self;
    if([self.pickerView.restorationIdentifier isEqual: @"FormalSuit"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"Black",nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"FormalPattern"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"Solid", @"Pinstripe",nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"FormalTie"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"Black Tie",@"Black Bow-Tie", @"Silver Tie",nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"FormalPS"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"None", @"White", @"Silver",nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"FormalShirt"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"White", nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"SuitC"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Suit]];
        arraycolors = [[validOutfit allObjects] mutableCopy];
    }else if([self.pickerView.restorationIdentifier isEqual: @"SuitP"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Suit]];
       arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"ShirtC"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Shirt]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }else if([self.pickerView.restorationIdentifier isEqual: @"ShirtP"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Shirt]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"TieC"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Ties]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"TieP"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Ties]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"PocketSquareC"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _PocketSquare]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"PocketSquareP"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _PocketSquare]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"Belt"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Belt]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"Shoes"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Shoes]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"Socks"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Socks]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    [self pickerView:NULL didSelectRow:0 inComponent:0];
    // Do any additional setup after loading the view.
    
    [self.navigationItem setHidesBackButton:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *colorOrPatternString = [self pickerView:pickerView titleForRow:(row) forComponent:component];
    self.pickerView.delegate = self;
    if([self.pickerView.restorationIdentifier isEqual: @"FormalSuit"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"Black",nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"FormalPattern"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"Solid", @"Pinstripe",nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"FormalTie"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"Black Tie",@"Black Bow-Tie", @"Silver Tie",nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"FormalPS"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"None", @"White", @"Silver",nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"FormalShirt"])
        arraycolors = [[NSMutableArray alloc] initWithObjects:
                       @"White", nil];
    else if([self.pickerView.restorationIdentifier isEqual: @"SuitC"]){
        [[[self outfit] _Suit] setColor: colorOrPatternString];
    }else if([self.pickerView.restorationIdentifier isEqual: @"SuitP"]){
        [[[self outfit] _Suit] setPattern:colorOrPatternString];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"ShirtC"]){
        [[[self outfit] _Shirt] setColor: colorOrPatternString];
    }else if([self.pickerView.restorationIdentifier isEqual: @"ShirtP"]){
        [[[self outfit] _Shirt] setPattern:colorOrPatternString];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"TieC"]){
        [[[self outfit] _Ties] setColor: colorOrPatternString];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"TieP"]){
        [[[self outfit] _Ties] setPattern:colorOrPatternString];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"Belt"]){
        [[[self outfit] _Belt] setColor: colorOrPatternString];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"Socks"]){
        [[[self outfit] _Socks] setColor: colorOrPatternString];
    }
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

#pragma mark - back button behavior

- (IBAction)goHome:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)dismissView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:^{}];
}
@end
