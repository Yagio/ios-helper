//
//  UIWebViewHelper.m
//
//  Created by Rafael Lossurdo on 27/11/13.
//  Copyright (c) 2013 Rafael Lossurdo. All rights reserved.
//

#import "UIWebViewHelper.h"

@implementation UIWebViewHelper

// solicita webview a ser carregada com uma página
-(void) navigateTo:(NSString *)url withWebView:(UIWebView *) webView {
    NSURL *nsurl = [NSURL URLWithString:url];
    NSURLRequest *req = [NSURLRequest requestWithURL:nsurl];
    [webView loadRequest:req];
}

// exemplo de NSBundle:
// [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"/HTML"]
-(void)openHtmlFile:(NSString *) fileName withWebView:(UIWebView *)webView {
    NSString *vlr = [[NSBundle mainBundle] pathForResource:fileName ofType:@"html"];
    NSURL *nsurl = [NSURL fileURLWithPath:vlr];
    NSURLRequest *req = [NSURLRequest requestWithURL:nsurl];
    [webView loadRequest:req];
}

@end
