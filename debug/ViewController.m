//
//  ViewController.m
//  debug
//
//  Copyright © 2019 diggmind. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initWebview];
}

- (void)initWebview {
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    NSString *url1 = @"http://localhost:8080/gk?t=t";
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, width, height)];
    [webView setDelegate:self];
    NSString *urlAddress = url1;
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    
    [self.view addSubview:webView];
}

@end
