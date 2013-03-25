//
//  SwatchViewController.m
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/21/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import "SwatchViewController.h"
#import "SwatchViewCell.h"
#import "Outfit.h"
#import "PresentOutfitViewController.h"

@interface SwatchViewController ()

@end

@implementation SwatchViewController{
    NSMutableArray *arraycolors;
    NSMutableArray *selected;
    NSArray *titles;
    bool type;
    bool swipe;
    
}
-(BOOL)canBecomeFirstResponder
{
    return YES;
}
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (event.subtype == UIEventSubtypeMotionShake)
    {
        [[self outfit] completeOutfit];
        [self performSegueWithIdentifier:@"Finish" sender:self];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString: @"OutfitSegueForward"]) {
        
        SwatchViewController *vc = ((SwatchViewController *) segue.destinationViewController);
        
        [vc setOutfit:[self outfit]];
        NSNumber *sum = [NSNumber numberWithInt:([[self page] intValue] + 1)];
        [vc setPage:sum];
        NSString *colorOrPatternString;
        if([self.collectionView.restorationIdentifier isEqual: @"SuitC"]){
            [[[self outfit] _Suit] setColor: colorOrPatternString];
        }else if([self.collectionView.restorationIdentifier isEqual: @"SuitP"]){
            [[[self outfit] _Suit] setPattern:colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"ShirtC"]){
            [[[self outfit] _Shirt] setColor: colorOrPatternString];
        }else if([self.collectionView.restorationIdentifier isEqual: @"ShirtP"]){
            [[[self outfit] _Shirt] setPattern:colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"TieC"]){
            [[[self outfit] _Ties] setColor: colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"TieP"]){
            [[[self outfit] _Ties] setPattern:colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"Belt"]){
            [[[self outfit] _Belt] setColor: colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"Socks"]){
            [[[self outfit] _Socks] setColor: colorOrPatternString];
        }

              

    }else if ([segue.identifier isEqualToString: @"OutfitSegueBackward"]){
        SwatchViewController *vc = ((SwatchViewController *) segue.destinationViewController);
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
    [self.view becomeFirstResponder];
    self.collectionView.dataSource = self;
   
    self.collectionView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];   
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
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
        NSArray *CollectionViewTitle = [[NSArray alloc] initWithObjects:
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
        [[self collectionView] setRestorationIdentifier:CollectionViewTitle[pageNumber.intValue]];

        
        if([self.collectionView.restorationIdentifier isEqual: @"SuitC"]){
            type = true;
            NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Suit]];
            arraycolors = [[validOutfit allObjects] mutableCopy];
        }else if([self.collectionView.restorationIdentifier isEqual: @"SuitP"]){
            type = false;
            NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Suit]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"ShirtC"]){
            type = true;
            NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Shirt]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }else if([self.collectionView.restorationIdentifier isEqual: @"ShirtP"]){
            type = false;
            NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Shirt]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"TieC"]){
            type = true;
            NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Ties]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"TieP"]){
            type = false;
            NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Ties]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"PocketSquareC"]){
            type = false;
            NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _PocketSquare]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"PocketSquareP"]){
            type = false;
            NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _PocketSquare]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"Belt"]){
            type = true;
            NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Belt]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"Shoes"]){
            type = true;
            NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Shoes]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"Socks"]){
            type = true;
            NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Socks]];
            arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
        }
        
        // Do any additional setup after loading the view.
        
        [self.navigationItem setHidesBackButton:YES];
        
    }
    


    

    
	// Do any additional setup after loading the view.


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
    
    if([self.collectionView.restorationIdentifier isEqual: @"SuitC"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Suit]];
        arraycolors = [[validOutfit allObjects] mutableCopy];
    }else if([self.collectionView.restorationIdentifier isEqual: @"SuitP"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Suit]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.collectionView.restorationIdentifier isEqual: @"ShirtC"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Shirt]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }else if([self.collectionView.restorationIdentifier isEqual: @"ShirtP"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Shirt]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.collectionView.restorationIdentifier isEqual: @"TieC"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Ties]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.collectionView.restorationIdentifier isEqual: @"TieP"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _Ties]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.collectionView.restorationIdentifier isEqual: @"PocketSquareC"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _PocketSquare]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.collectionView.restorationIdentifier isEqual: @"PocketSquareP"]){
        type = false;
        NSMutableSet *validOutfit = [[self outfit] getValidPatternFor:[[self outfit] _PocketSquare]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.collectionView.restorationIdentifier isEqual: @"Belt"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Belt]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.collectionView.restorationIdentifier isEqual: @"Shoes"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Shoes]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }
    else if([self.collectionView.restorationIdentifier isEqual: @"Socks"]){
        type = true;
        NSMutableSet *validOutfit = [[self outfit] getValidColorFor:[[self outfit] _Socks]];
        arraycolors = [NSMutableArray arrayWithArray:[validOutfit allObjects]];
    }


    return arraycolors.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SwatchViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SwatchViewCell" forIndexPath:indexPath];
    
    NSMutableDictionary *swatches = [[NSMutableDictionary alloc]init];
    [swatches setObject:[UIImage imageNamed:@"navy.PNG"] forKey:@"NAVY"];
    [swatches setObject:[UIImage imageNamed:@"black.PNG"] forKey:@"BLACK"];
    [swatches setObject:[UIImage imageNamed:@"grey.PNG"] forKey:@"GRAY"];
    [swatches setObject:[UIImage imageNamed:@"charcoal.PNG"] forKey:@"CHARCOAL"];
    [swatches setObject:[UIImage imageNamed:@"olive.PNG"] forKey:@"OLIVE"];
    [swatches setObject:[UIImage imageNamed:@"brown.PNG"] forKey:@"BROWN"];
    [swatches setObject:[UIImage imageNamed:@"aqua.PNG"] forKey:@"AQUA"];
    [swatches setObject:[UIImage imageNamed:@"lavender.PNG"] forKey:@"LAVENDER"];
    [swatches setObject:[UIImage imageNamed:@"lightblue.PNG"] forKey:@"LIGHTBLUE"];
    [swatches setObject:[UIImage imageNamed:@"mint.PNG"] forKey:@"MINT"];
    [swatches setObject:[UIImage imageNamed:@"pink.PNG"] forKey:@"PINK"];
    [swatches setObject:[UIImage imageNamed:@"purple.PNG"] forKey:@"DARKPURPLE"];
    [swatches setObject:[UIImage imageNamed:@"red.PNG"] forKey:@"RED"];
    [swatches setObject:[UIImage imageNamed:@"royalblue.PNG"] forKey:@"ROYALBLUE"];
    [swatches setObject:[UIImage imageNamed:@"white.PNG"] forKey:@"WHITE"];
    [swatches setObject:[UIImage imageNamed:@"yellow.PNG"] forKey:@"YELLOW"];
    [swatches setObject:[UIImage imageNamed:@"yellow.PNG"] forKey:@"RANDOMCOLOR"];
    cell.textView.text= arraycolors[indexPath.row];
    cell.imageView.image = [swatches valueForKey:arraycolors[indexPath.row]];
    cell.imageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
    cell.contentView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
    cell.textView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"back.png"]]];
   
    NSString *colorOrPatternString;
    
    if(cell.isSelected){
        colorOrPatternString=cell.textView.text;
        if([self.collectionView.restorationIdentifier isEqual: @"SuitC"]){
            [[[self outfit] _Suit] setColor: colorOrPatternString];
        }else if([self.collectionView.restorationIdentifier isEqual: @"SuitP"]){
            [[[self outfit] _Suit] setPattern:colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"ShirtC"]){
            [[[self outfit] _Shirt] setColor: colorOrPatternString];
        }else if([self.collectionView.restorationIdentifier isEqual: @"ShirtP"]){
            [[[self outfit] _Shirt] setPattern:colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"TieC"]){
            [[[self outfit] _Ties] setColor: colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"TieP"]){
            [[[self outfit] _Ties] setPattern:colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"Belt"]){
            [[[self outfit] _Belt] setColor: colorOrPatternString];
        }
        else if([self.collectionView.restorationIdentifier isEqual: @"Socks"]){
            [[[self outfit] _Socks] setColor: colorOrPatternString];
        }

        
    }
    
       

    return cell;
}


#pragma mark Navigation behavior
- (IBAction)goHome:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)dismissView:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}





@end
