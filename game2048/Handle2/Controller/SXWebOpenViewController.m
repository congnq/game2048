//
//  SXWebOpenViewController.m
//  game2048
//
//  Created by Cong Nguyen on 11/28/17.
//  Copyright © 2017 Sun Xi. All rights reserved.
//

#import "SXWebOpenViewController.h"

@interface SXWebOpenViewController () <UIWebViewDelegate>

@end

@implementation SXWebOpenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *encodedString=[self.dataObject.wapurl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    [self.webview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:encodedString]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    NSLog(@"%@",error);
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
