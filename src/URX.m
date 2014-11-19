//
//  URX.m
//  One Day Gym Pass
//
//  Created by Nathaniel on 11/14/14.
//
//

#import "URX.h"
#import <URXWidgets/URXWidgets.h>

@implementation URX
UIWebView *webView;
-(CDVPlugin*) initWithWebView:(UIWebView*)theWebView{
    webView = theWebView;
    self = [super initWithWebView: theWebView];
    return self;
}
- (void) searchSongify: (CDVInvokedUrlCommand*)command{
    NSArray *arguments = command.arguments;
    NSString *callbackId = command.callbackId;
    CDVPluginResult *pluginResult = nil;
    NSString *javaScript = nil;
    NSMutableArray *returnArgs = [[NSMutableArray alloc] init];
    
    NSString *search = [arguments objectAtIndex: 0];
    
    URXListenButtonView *buttonView = [[URXListenButtonView alloc] init];
    buttonView.initialQuery = search;
    [self.viewController.view insertSubview:buttonView aboveSubview:webView];
    
    [buttonView sendActionsForControlEvents:UIControlEventTouchDown];
    [buttonView sendActionsForControlEvents:UIControlEventTouchUpInside];
    
    [buttonView removeFromSuperview];
    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsArray:returnArgs];
    javaScript = [pluginResult toSuccessCallbackString:callbackId];
    [self writeJavascript:[NSString stringWithFormat:@"window.setTimeout(function (){%@;},0);", javaScript]];
}
@end
