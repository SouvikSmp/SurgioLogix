//
//  ResourceViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 14/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "ResourceViewController.h"

//#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0];

#


@implementation ResourceViewController
-(void)viewDidLoad
{
    
}
-(void)viewWillAppear:(BOOL)animated
{
    
}

-(void)didReceiveMemoryWarning
{
    
}
- (IBAction)backToPrevious:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
