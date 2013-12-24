//
//  DateHelper.h
//  receita
//
//  Created by Rafael Lossurdo on 24/12/13.
//  Copyright (c) 2013 Rafael Lossurdo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DateHelper : NSObject

+(NSString *) convert:(NSDate *) from usingPattern:(NSString *) pattern;
+(NSString *) convertToday:(NSString *) pattern;

@end
