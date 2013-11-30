//
//  CollectionHelper.h
//  Aprendendo
//
//  Created by Rafael Lossurdo on 30/11/13.
//  Copyright (c) 2013 Rafael Lossurdo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CollectionHelper : NSObject {
    @private
    NSMutableArray *list;
}

-(void) add:(NSObject *) value;
-(long) size;
-(void) clear;
-(BOOL) isEmpty;
-(BOOL) contains:(NSObject *) value;
-(void) remove:(NSObject *) value;

@property(nonatomic) NSMutableArray *list;

@end
