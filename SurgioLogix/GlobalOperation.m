//
//  GlobalOperation.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 08/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "GlobalOperation.h"
@interface GlobalOperation()

@end
@implementation GlobalOperation
@synthesize delegate;
- (id)initWithURL:(NSString *)str page:(NSString *)page  processName:(NSString *)strProcess delegate:(id<GlobalOperationDelegate>) delegatex{
    self = [super init];
   
    if( _record.URL !=nil && self != nil){
        NSLog(@"url not nil object not nil");
        _record.URL=[NSURL URLWithString:str];
        _record.PageName=page;
        self.delegate=delegatex;
    }
    return self;
}

// 3: Regularly check for isCancelled, to make sure the operation terminates as soon as possible.
-(void)main{
    @try {
        
        // Do the main work of the operation here.
          NSLog(@"main called");
        NSData *data=[[NSData alloc] initWithContentsOfURL:_record.URL];
        
        NSDictionary *dict=[NSDictionary dictionaryWithObjectsAndKeys:_record.URL,@"URL", nil];
        if (self.isCancelled) {
            data = nil;
            return;
        }
        [delegate getURLData:data ANDDictionary:dict];
        
    }
    @catch(...) {
        
        if (self.isCancelled)
            return;
        
        NSDictionary *dict=[NSDictionary dictionaryWithObjectsAndKeys:_record.URL,@"URL", nil];
        [delegate downloadFailedForURL:dict];
        // Do not rethrow exceptions.
    }
}





@end
