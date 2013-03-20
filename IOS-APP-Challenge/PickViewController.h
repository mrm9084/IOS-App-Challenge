//
//  PickViewController.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/15/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Outfit.h"

@interface PickViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) IBOutlet UILabel *TitleLabel;
@property (strong, nonatomic) NSNumber *page;
@property (strong,nonatomic) Outfit *outfit;
- (IBAction)goHome:(id)sender;
- (IBAction)dismissView:(id)sender;


@end
