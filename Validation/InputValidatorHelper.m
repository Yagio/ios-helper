//
//  InputValidatorHelper.m
//
//  Created by Rafael Lossurdo on 26/12/13.
//  Copyright (c) 2013 Rafael Lossurdo. All rights reserved.
//

#import "InputValidatorHelper.h"

@implementation InputValidatorHelper

+(BOOL) textFieldIsEmpty:(UITextField *) textField {
    if(!textField) return YES;
    if([[textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqualToString:@""]) return YES;
    
    return NO;
}

@end
