//
//  ViewController.m
//  webkittest
//
//  Created by Petr Dvorak on 11/23/11.
//  Copyright (c) 2011 Inmite. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ViewController

@synthesize webView;
@synthesize progressView;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // necessary, looks slightly better with this...
    webView.layer.shadowColor = [UIColor blackColor].CGColor;
    webView.layer.shadowOffset = CGSizeMake(0, -2);
    webView.layer.shadowOpacity = 1.0;
    
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.inmite.eu/"]]];
}

- (void)webView:(IMTWebView *)_webView didReceiveResourceNumber:(int)resourceNumber totalResources:(int)totalResources {
    [self.progressView setProgress:((float)resourceNumber) / ((float)totalResources)];
    if (resourceNumber == totalResources) {
        _webView.resourceCount = 0;
        _webView.resourceCompletedCount = 0;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.webView = nil;
    self.progressView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
