//
//  IMTWebView.h
//  webkittest
//
//  Created by Petr Dvorak on 11/23/11.
//  Copyright (c) 2011 Inmite. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IMTWebView;

@protocol IMTWebViewProgressDelegate <NSObject>
@optional
- (void) webView:(IMTWebView*)webView didReceiveResourceNumber:(int)resourceNumber totalResources:(int)totalResources;
@end

@interface IMTWebView : UIWebView {
}

@property (nonatomic, assign) int resourceCount;
@property (nonatomic, assign) int resourceCompletedCount;

@property (nonatomic, assign) IBOutlet id<IMTWebViewProgressDelegate> progressDelegate;

@end
