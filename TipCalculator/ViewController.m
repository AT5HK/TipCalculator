//
//  ViewController.m
//  TipCalculator
//
//  Created by Auston Salvana on 7/10/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"
#import "Calculate.h"

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic) NSString *billAmountText;
@property (nonatomic) Calculate *calculate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.calculate = [[Calculate alloc]init];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    self.tipAmountLabel.text = [NSString stringWithFormat:@"Suggested tip amount: $%.2f",
                                [self.calculate calculateSuggestedTip:self.billAmountTextField.text]];
}

- (IBAction)giveTip:(id)sender {
    float tipToWaiter = [self.calculate CalculateActualTipWithBillAmount:self.billAmountTextField.text
                                                         percentageGiven:self.tipPercentageTextField.text];
    NSLog(@"You have tipped: $%.2f",tipToWaiter);
}
@end
