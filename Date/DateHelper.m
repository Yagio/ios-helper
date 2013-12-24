//
//  DateHelper.m
//
//  Created by Rafael Lossurdo on 24/12/13.
//  Copyright (c) 2013 Rafael Lossurdo. All rights reserved.
//

#import "DateHelper.h"

@implementation DateHelper

+(NSString *) convert:(NSDate *) from usingPattern:(NSString *) pattern {
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    [fmt setDateFormat:pattern];
    return [fmt stringFromDate:from];
}

+(NSString *) convertToday:(NSString *) pattern {
    return [self convert:[[NSDate alloc] init] usingPattern:pattern];
}

@end
