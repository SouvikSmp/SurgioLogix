//
//  SaleViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 25/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "SaleViewController.h"
#import "GlobalHeader.h"
#import "NewSaleInvoiceViewController.h"
@interface SaleViewController ()

@end

@implementation SaleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)newClickClicked:(id)sender {
    
   //SaleInvoice1
    
    NewSaleInvoiceViewController *sale1;
    if(IS_IPAD)
        sale1=[IPADSTORY instantiateViewControllerWithIdentifier:SaleInvoice1];
    else
        sale1=[IPHONESTORY instantiateViewControllerWithIdentifier:SaleInvoice1];
    
    [self PushViewController:sale1 TransitationFrom:kCATransitionFade];
    
}
- (IBAction)sacnButtonClicked:(id)sender {
    
    
}

- (IBAction)createNewClicked:(id)sender {
    
    
}

- (IBAction)backClicked:(id)sender {
 [self PopViewControolWithTransition:kCATransitionFromRight];   
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
