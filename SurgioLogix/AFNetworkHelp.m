//
//  AFNetworkHelp.m
//  EAZY
//
//  Created by Souvik on 13/03/15.
//  Copyright (c) 2015 Karmick. All rights reserved.
//

#import "AFNetworkHelp.h"
#import "AFHTTPClient.h"
#import "AFImageRequestOperation.h"

@implementation AFNetworkHelp
static Completdatadownload completoperation;

//Send data in post to server

-(void)GetresponcedatausingDic:(NSDictionary *)keyvalue WithHostURL:(NSString *)Domainurl Withresult:(Completdatadownload)result
 {
     completoperation=[result copy];
     
      AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:Domainurl]];
      NSMutableURLRequest *request = [httpClient requestWithMethod:@"POST"
                                                             path:@""
                                                       parameters:keyvalue];
     
     AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
     [httpClient registerHTTPOperationClass:[AFHTTPRequestOperation class]];
     
     [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
         
//         DebugLog(@"Response: %@", [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding]);
         id response = [NSJSONSerialization JSONObjectWithData:operation.responseData options:kNilOptions error:nil];
         completoperation(response,nil);
         
         //HERE YOU HAVE A RESPONSE (your server answer)
     }
      failure:^(AFHTTPRequestOperation *operation, NSError *error)
      {
//         DebugLog(@"Error: %@", error.localizedDescription);
         completoperation(nil,error);
     }];
     
     [operation start];
     
 }
-(void)DownloadAndSetimageTo:(UIImageView *)imageView WithStringUrl:(NSString *)Stringurl
{
    UIActivityIndicatorView *activity=[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [imageView addSubview:activity];
    [activity setCenter:CGPointMake(imageView.center.x, imageView.center.y)];
    [activity startAnimating];
    
    NSURL *Url=[NSURL URLWithString:Stringurl];
    NSURLRequest *request=[NSURLRequest requestWithURL:Url];
    AFImageRequestOperation *requestnew=[AFImageRequestOperation imageRequestOperationWithRequest:request imageProcessingBlock:nil success:^(NSURLRequest *newre, NSHTTPURLResponse *responce, UIImage *image)
    {
        [activity stopAnimating];
        [imageView setImage:image];
    }
    failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error)
    {
        [activity stopAnimating];
//        DebugLog(@"The error name:%@",error.description);
    }];
    [requestnew start];
}

@end
