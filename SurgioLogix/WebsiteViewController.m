//
//  WebsiteViewController.m
//  SurgioLogix
//
//  Created by Sayanta on 29/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "WebsiteViewController.h"
#import "SVProgressHUD.h"

@interface WebsiteViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *webViewSurgiologix;

@end

@implementation WebsiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlAddress = @"http://www.surgilogix.com/";
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    //URL Request Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [_webViewSurgiologix loadRequest:requestObj];
}

//delegate methods of UIwebview
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [SVProgressHUD show];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    
    [SVProgressHUD dismiss];
    
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    UIAlertView *alart=[[UIAlertView alloc] initWithTitle:@"Sorry" message:@"Internet connection is lost" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alart show];
}
/*- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
 {
 return YES;
 }*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backToPrevious:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}


@end
