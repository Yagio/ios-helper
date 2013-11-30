//
//  CollectionHelper.m
//  Aprendendo
//
//  Created by Rafael Lossurdo on 30/11/13.
//  Copyright (c) 2013 Rafael Lossurdo. All rights reserved.
//

#import "CollectionHelper.h"

@implementation CollectionHelper

@synthesize list;

-(id)init {
    list = [NSMutableArray new];
    return self;
}

-(void) add:(NSObject *) value {
    [list addObject:(id) value];
}

-(long)size {
    return [list count];
}

-(void)clear {
    list = [NSMutableArray new];
}

-(BOOL)isEmpty {
    return list.count==0;
}

-(NSString *)description {
    return list.description;
}

-(BOOL)contains:(NSObject *)value {
    return [list containsObject:value];
}

-(void)remove:(NSObject *)value {
    [list removeObject:value];
}

@end
