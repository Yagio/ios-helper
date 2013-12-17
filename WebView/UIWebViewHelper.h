//
//  UIWebViewHelper.h
//
//  Created by Rafael Lossurdo on 27/11/13.
//  Copyright (c) 2013 Rafael Lossurdo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIWebViewHelper : NSObject

-(void) navigateTo:(NSString *) url withWebView: (UIWebView *) webView;
-(void) openHtmlFile:(NSString *) fileName withWebView: (UIWebView *) webView;

@end
