//
//  PlistManager.m
//
//  Created by Rafael Lossurdo on 15/01/14.
//  Copyright (c) 2014 Rafael Lossurdo. All rights reserved.
//

#import "PlistManager.h"

@interface PlistManager() {
    NSString *res;
    NSURL *plistFile;
}
@end

@implementation PlistManager

#pragma mark - Constructor

-(id)init:(NSString *)resource {
    self = [super init];
    
    // attribute
    res = resource;
    
    // control plist file moving
    NSFileManager *fm = [NSFileManager defaultManager];
    
    NSURL *documentDir = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
    NSURL *plist = [documentDir URLByAppendingPathComponent:[resource stringByAppendingString:@".plist"]];
    
    if (![fm fileExistsAtPath:plist.path]) {
        NSLog(@"Plist file does not exists in Document Directory");
        NSURL *source = [[NSBundle mainBundle] URLForResource:resource withExtension:@"plist"];
        NSError *error;
        
        // move file from bundle to document dir
        NSLog(@"Moving file from bundle to Document Directory");
        BOOL moved = [fm copyItemAtURL:source toURL:plist error:&error];
        NSLog(@"Moved (1=YES)? %d", moved);
    } else {
        NSLog(@"Plist file already exists in Document Directory; does not need to be moved");
    }

    // attribute
    plistFile = plist;

    return self;
}

#pragma mark - Methods

-(BOOL)changeValue:(id) value forKey:(NSString *) key {
    NSMutableDictionary *plist = [[NSMutableDictionary alloc] initWithContentsOfFile:plistFile.path];
    [plist setValue:value forKey:key];
    NSLog(@"Writing plist file");
    return [plist writeToFile:plistFile.path atomically:YES];
}

-(void)debug {
    NSMutableDictionary *plist = [[NSMutableDictionary alloc] initWithContentsOfFile:plistFile.path];
    NSLog(@"DEBUG -> Plist content: %@", plist);
}

@end
