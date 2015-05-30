//
//  GlobalViewController.h
//  SurgioLogix
//
//  Created by Abdur Rahim on 22/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GlobalViewController : UIViewController
-(void)PushViewController:(UIViewController *)viewController TransitationFrom:(NSString *)TransitationDirection;
-(void)PopViewControolWithTransition:(NSString *)TransitationDirection;
@end
