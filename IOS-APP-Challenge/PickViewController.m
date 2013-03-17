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
#import "Color.h"

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
    if ([segue.identifier isEqualToString: @"OutfitSegue"]) {
        
        PickViewController *vc = ((PickViewController *) segue.destinationViewController);
        [vc setOutfit:[self outfit]];
        NSNumber *sum = [NSNumber numberWithInt:([[self page] intValue] + 1)];
        [vc setPage:sum];
    }else if ([segue.identifier isEqualToString:@"Finish"]){
        PresentOutfitViewController *vc = ((PresentOutfitViewController *) segue.destinationViewController);
        [vc setOutfit:[self outfit]];
    }
    
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if (!swipe && [identifier isEqualToString: @"OutfitSegue"]){
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
        [self setOutfit: [[Outfit alloc] init]];
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
    
    if (pageNumber.intValue >= [titles count] - 1) {
        pageNumber = [NSNumber numberWithInt:[titles count] - 1];
        swipe = false;
    }else{
        swipe = true;
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
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *colorOrPatternString = [self pickerView:pickerView titleForRow:(row) forComponent:component];
    Color color;
    Pattern pattern;
    if (type) {
        color = [self getColorEnumFromString:colorOrPatternString];
    }else{
        pattern = [self getPatternEnumFromString:colorOrPatternString];
    }
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
        [[[self outfit] _Suit] set_Color: color];
    }else if([self.pickerView.restorationIdentifier isEqual: @"SuitP"]){
        [[[self outfit] _Suit] set_Pattern:pattern];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"ShirtC"]){
        [[[self outfit] _Shirt] set_Color: color];
    }else if([self.pickerView.restorationIdentifier isEqual: @"ShirtP"]){
        [[[self outfit] _Shirt] set_Pattern:pattern];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"TieC"]){
        [[[self outfit] _Ties] set_Color: color];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"TieP"]){
        [[[self outfit] _Ties] set_Pattern:pattern];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"Belt"]){
        [[[self outfit] _Belt] set_Color: color];
    }
    else if([self.pickerView.restorationIdentifier isEqual: @"Socks"]){
        [[[self outfit] _Socks] set_Color: color];
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
    if([arraycolors[row] isKindOfClass:[NSNumber class]]){
        if (type) {
            return [self getEnumValueofColor: arraycolors[row]];
        }else{
            return [self getEnumValueofPattern:arraycolors[row]];
        }
    }
    return [arraycolors objectAtIndex:row];
}

-(Pattern) getPatternEnumFromString:(NSString *)value{
    Pattern pattern = NOPATTERN;
    if ([value isEqual: @"LEATHER"]) {
        pattern = LEATHER;
    } else if ([value isEqual: @"PINSTRIPE"]) {
        pattern = PINSTRIPE;
    } else if ([value isEqual: @"PLAID"]) {
        pattern = PLAID;
    } else if ([value isEqual: @"PLAIN"]) {
        pattern = PLAIN;
    } else if ([value isEqual: @"POCODOT"]) {
        pattern = POCODOT;
    } else if ([value isEqual: @"SOLID"]) {
        pattern = SOLID;
    } else if ([value isEqual: @"STRIP"]) {
        pattern = STRIP;
    } else if ([value isEqual: @"SUEDE"]) {
        pattern = SUEDE;
    }else{
        pattern = RANDOMPATTERN;
    }
    return pattern;
}

-(Color) getColorEnumFromString:(NSString *)value{
    Color color = NOCOLOR;
    if ([value isEqual: @"AQUA"]) {
        color = AQUA;
    }else if ([value isEqual: @"BLACK"]) {
        color = BLACK;
    }else if ([value isEqual: @"BLUE"]) {
        color = BLUE;
    }else if ([value isEqual: @"BROWN"]) {
        color = BROWN;
    }else if ([value isEqual: @"BROWNARGYLE"]) {
        color = BROWNARGYLE;
    }else if ([value isEqual: @"DUCIE"]) {
        color = DUCIE;
    }else if ([value isEqual: @"BRGUNDY"]) {
        color = BURGUNDY;
    }else if ([value isEqual: @"CHARCOAL"]) {
        color = CHARCOAL;
    }else if ([value isEqual: @"CORDOVAN"]) {
        color = CORDOVAN;
    }else if ([value isEqual: @"CREAM"]) {
        color = CREAM;
    }else if ([value isEqual: @"DARK"]) {
        color = DARK;
    }else if ([value isEqual: @"DARKPURPLE"]) {
        color = DARKPURPLE;
    }else if ([value isEqual: @"GRAY"]) {
        color = GRAY;
    }else if ([value isEqual: @"GRAYARGYLE"]) {
        color = GRAYARGYLE;
    }else if ([value isEqual: @"GREEN"]) {
        color = GREEN;
    }else if ([value isEqual: @"LAVENDER"]) {
        color = LAVENDER;
    }else if ([value isEqual: @"LIGHT"]) {
        color = LIGHT;
    }else if ([value isEqual: @"LIGHTBLUE"]) {
        color = LIGHTBLUE;
    }else if ([value isEqual: @"MINT"]) {
        color = MINT;
    }else if ([value isEqual: @"NAVY"]) {
        color = NAVY;
    }else if ([value isEqual: @"OLIVE"]) {
        color = OLIVE;
    }else if ([value isEqual: @"PINK"]) {
        color = PINK;
    }else if ([value isEqual: @"RED"]) {
        color = RED;
    }else if ([value isEqual: @"ROYALBLUE"]) {
        color = ROYALBLUE;
    }else if ([value isEqual: @"SILVER"]) {
        color = SILVER;
    }else if ([value isEqual: @"TAN"]) {
        color = TAN;
    }else if ([value isEqual: @"TEAL"]) {
        color = TEAL;
    }else if ([value isEqual: @"TWEED"]) {
        color = TWEED;
    }else if ([value isEqual: @"WHITE"]) {
        color = WHITE;
    }else if ([value isEqual: @"YELLOW"]) {
        color = YELLOW;
    }else{
        color = RANDOMCOLOR;
    }
    return color;

}

-(NSString *)getEnumValueofPattern:(NSNumber *)value{
    NSString *pattern = [[NSString alloc] init];
    switch (value.intValue) {
        case LEATHER:
            pattern = @"LEATHER";
            break;
        case PINSTRIPE:
            pattern = @"PINSTRIPE";
            break;
        case PLAID:
            pattern = @"PLAID";
            break;
        case PLAIN:
            pattern = @"PLAIN";
            break;
        case POCODOT:
            pattern = @"POCODOT";
            break;
        case SOLID:
            pattern = @"SOLID";
            break;
        case STRIP:
            pattern = @"STRIP";
            break;
        case SUEDE:
            pattern = @"SUEDE";
            break;
        default:
            pattern = @"RANDOM";
            break;
    }
    return pattern;
}

-(NSString *)getEnumValueofColor:(NSNumber *) value{
    NSString *color = [[NSString alloc] init];
    switch (value.intValue) {
        case AQUA:
           color = @"AQUA";
            break;
        case BLACK:
            color = @"BLACK";
            break;
        case BLUE:
            color = @"BLUE";
            break;
        case BROWN:
            color = @"BROWN";
            break;
        case BROWNARGYLE:
            color = @"BROWNARGYLE";
            break;
        case DUCIE:
            color = @"DUCIE";
            break;
        case BURGUNDY:
            color = @"BURGUNDY";
            break;
        case CHARCOAL:
            color = @"CHARCOAL";
            break;
        case CORDOVAN:
            color = @"CORDOVAN";
            break;
        case CREAM:
            color = @"CREAM";
            break;
        case DARK:
            color = @"DARK";
            break;
        case DARKPURPLE:
            color = @"DARKPURPLE";
            break;
        case GRAY:
            color = @"GRAY";
            break;
        case GRAYARGYLE:
            color = @"GRAYARGYLE";
            break;
        case GREEN:
            color = @"GREEN";
            break;
        case LAVENDER:
            color = @"LAVENDER";
            break;
        case LIGHT:
            color = @"LIGHT";
            break;
        case LIGHTBLUE:
            color = @"LIGHTBLUE";
            break;
        case MINT:
            color = @"MINT";
            break;
        case NAVY:
            color = @"NAVY";
            break;
        case OLIVE:
            color = @"OLIVE";
            break;
        case PINK:
            color = @"PINK";
            break;
        case RED:
            color = @"RED";
            break;
        case ROYALBLUE:
            color = @"ROYALBLUE";
            break;
        case SILVER:
            color = @"SILVER";
            break;
        case TAN:
            color = @"TAN";
            break;
        case TWEED:
            color = @"TWEED";
            break;
        case TEAL:
            color = @"TEAL";
            break;
        case WHITE:
            color = @"WHITE";
            break;
        case YELLOW:
            color = @"YELLOW";
            break;
        default:
            color = @"RANDOM";
            break;
    }
       return color;
}
@end
