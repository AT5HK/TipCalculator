//
//  ViewController.h
//  TipCalculator
//
//  Created by Auston Salvana on 7/10/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)calculateTip:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;
- (IBAction)giveTip:(id)sender;

@end

