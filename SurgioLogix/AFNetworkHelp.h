//
//  AFNetworkHelp.h
//  EAZY
//
//  Created by Souvik on 13/03/15.
//  Copyright (c) 2015 Karmick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
#import "BlockHeader.h"
#import "AppDelegate.h"

@interface AFNetworkHelp : NSObject
-(void)GetresponcedatausingDic:(NSDictionary *)keyvalue WithHostURL:(NSString *)Domainurl Withresult:(Completdatadownload)result;
-(void)DownloadAndSetimageTo:(UIImageView *)imageView WithStringUrl:(NSString *)Stringurl;
@end
