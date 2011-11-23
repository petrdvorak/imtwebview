//
//  ViewController.h
//  webkittest
//
//  Created by Petr Dvorak on 11/23/11.
//  Copyright (c) 2011 Inmite. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IMTWebView.h"

@interface ViewController : UIViewController <IMTWebViewProgressDelegate>

@property (nonatomic, retain) IBOutlet IMTWebView *webView;
@property (nonatomic, retain) IBOutlet UIProgressView *progressView;

@end
