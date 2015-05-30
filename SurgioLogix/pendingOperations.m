//
//  pendingOperations.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 14/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "pendingOperations.h"

@implementation pendingOperations
- (NSMutableDictionary *)downloadsInProgress {
    if (!_downloadsInProgress) {
        _downloadsInProgress = [[NSMutableDictionary alloc] init];
    }
    return _downloadsInProgress;
}

- (NSOperationQueue *)downloadQueue {
    if (!_downloadQueue) {
        _downloadQueue = [[NSOperationQueue alloc] init];
        _downloadQueue.name = @"Download Queue";
        _downloadQueue.maxConcurrentOperationCount = 1;
    }
    return _downloadQueue;
}
@end
