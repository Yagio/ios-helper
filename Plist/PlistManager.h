//
//  PlistManager.h
//
//  Created by Rafael Lossurdo on 15/01/14.
//  Copyright (c) 2014 Rafael Lossurdo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlistManager : NSObject

-(id)init:(NSString *) resource;
-(BOOL)changeValue:(id) value forKey:(NSString *) key;

-(void)debug;

@end
