//
//  Calculate.m
//  TipCalculator
//
//  Created by Auston Salvana on 7/10/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate

-(float)calculateSuggestedTip:(NSString*)theBillAmountText{
    
    float costOfBill =  [theBillAmountText floatValue];
    float suggestedTip = (costOfBill * 0.15);
    
    return suggestedTip;
}

-(float)CalculateActualTipWithBillAmount:(NSString*)theBillAmountText percentageGiven:(NSString*)percentageText;{
    
    return ([theBillAmountText floatValue] * [percentageText floatValue]);
}

@end
