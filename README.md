About
=====

This project is a simple demo of a custom UIWebView Subclass that is able to track resource loading progress.

This class use private methods from https://github.com/kennytm/iphone-private-frameworks - it is not AppStore safe.

Let me know if you have any luck making its way on the AppStore.

How to use
==========

* Use IMTWebView instead of the UIWebView - you can do this in both interface builder or code
* Implement IMTWebViewProgressDelegate method, for example like this:

```objective-c
// self.progressView is a UIProgressView instance
\- (void)webView:(IMTWebView *)webView didReceiveResourceNumber:(int)resourceNumber totalResources:(int)totalResources \{
    [self.progressView setProgress:((float)resourceNumber) / ((float)totalResources)];
\}
```

* ... no, nothing really...