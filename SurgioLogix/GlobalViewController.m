//
//  GlobalViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 22/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "GlobalViewController.h"

@interface GlobalViewController ()

@end

@implementation GlobalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)PushViewController:(UIViewController *)viewController TransitationFrom:(NSString *)TransitationDirection
{
    CATransition *Transition=[CATransition animation];
    [Transition setDuration:0.2f];
    [Transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [Transition setType:kCATransitionPush];
    [Transition setSubtype:TransitationDirection];
    [[[[self navigationController] view] layer] addAnimation:Transition forKey:nil];
    [[self navigationController] pushViewController:viewController animated:NO];
}
-(void)PopViewControolWithTransition:(NSString *)TransitationDirection{
    CATransition *Transition=[CATransition animation];
    [Transition setDuration:0.2f];
    [Transition setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
    [Transition setType:kCATransitionPush];
    [Transition setSubtype:TransitationDirection];
    [[[[self navigationController] view] layer] addAnimation:Transition forKey:nil];
    [[self navigationController]popViewControllerAnimated:NO];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
