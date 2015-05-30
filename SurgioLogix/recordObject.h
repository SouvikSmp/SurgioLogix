//
//  recordObject.h
//  SurgioLogix
//
//  Created by Abdur Rahim on 14/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface recordObject : NSObject
@property (nonatomic, strong) NSString *PageName;  // To store the name of image
@property (nonatomic, strong) NSString *ProcessName;
@property (nonatomic, strong) NSURL *URL; // To store the URL of the image
@property (nonatomic, getter = isFailed) BOOL failed; // Return Yes if image failed to be downloaded
@end
