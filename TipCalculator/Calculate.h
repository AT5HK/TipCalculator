//
//  Calculate.h
//  TipCalculator
//
//  Created by Auston Salvana on 7/10/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculate : NSObject

-(float)calculateSuggestedTip:(NSString*)theBillAmountText;
-(float)CalculateActualTipWithBillAmount:(NSString*)theBillAmountText percentageGiven:(NSString*)percentageText;
@end
