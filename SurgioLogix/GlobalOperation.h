//
//  GlobalOperation.h
//  SurgioLogix
//
//  Created by Abdur Rahim on 08/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "recordObject.h"
@protocol GlobalOperationDelegate <NSObject>
@optional
-(void)getURLData:(NSData *)data ANDDictionary:(NSDictionary *)dict;
-(void)downloadFailedForURL:(NSDictionary *)dict;
@end

@interface GlobalOperation : NSOperation


@property(nonatomic,assign)recordObject *record;
@property(nonatomic,assign)id <GlobalOperationDelegate> delegate;

- (id)initWithURL:(NSString *)str page:(NSString *)page  processName:(NSString *)strProcess delegate:(id<GlobalOperationDelegate>) delegatex;
//- (void)start;
@end
