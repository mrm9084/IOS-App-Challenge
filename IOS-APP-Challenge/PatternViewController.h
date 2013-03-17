//
//  PatternViewController.h
//  IOS-APP-Challenge
//
//  Created by Mentor on 3/15/13.
//  Copyright (c) 2013 Mentor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatternViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *patternView;

@end
