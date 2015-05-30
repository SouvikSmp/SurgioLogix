//
//  BlockHeader.h
//  EAZY
//
//  Created by Souvik on 03/03/15.
//  Copyright (c) 2015 Karmick. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



/*
 * Generic block constants for free usage over different classes.
 */
@protocol iOSBlocksProtocol <NSObject>

typedef void(^Completdatadownload)(id Datavalue, NSError *error);

@end