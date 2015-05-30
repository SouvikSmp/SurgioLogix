//
//  ViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 07/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "ViewController.h"
#import "ResourceViewController.h"
#import "BroucherViewController.h"
#import "ProductsViewController.h"
#import "NewSaleInvoiceViewController.h"//NewSaleInvoiceViewController
#import "SaleViewController.h"
#import "OrderFormViewController.h"

@interface ViewController ()
{
    UIView *view;
}

@property (weak, nonatomic) IBOutlet UIButton *productButton;
@property (weak, nonatomic) IBOutlet UIButton *broucherButton;
@property (weak, nonatomic) IBOutlet UIButton *resourceButton;
@property (weak, nonatomic) IBOutlet UIButton *saleButton;
@property (weak, nonatomic) IBOutlet UIButton *orderFromButton;
@property (weak, nonatomic) IBOutlet UIButton *contactUsButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    _productButton.frame=CGRectMake( _productButton.frame.origin.x, _productButton.frame.origin.y, _productButton.frame.size.width, _productButton.frame.size.width);
    _broucherButton.frame=CGRectMake( _broucherButton.frame.origin.x, _broucherButton.frame.origin.y, _broucherButton.frame.size.width, _broucherButton.frame.size.width);
     _resourceButton.frame=CGRectMake( _resourceButton.frame.origin.x, _resourceButton.frame.origin.y, _resourceButton.frame.size.width, _resourceButton.frame.size.width);
     _saleButton.frame=CGRectMake( _saleButton.frame.origin.x, _saleButton.frame.origin.y, _saleButton.frame.size.width, _saleButton.frame.size.width);
     _orderFromButton.frame=CGRectMake( _orderFromButton.frame.origin.x, _orderFromButton.frame.origin.y, _orderFromButton.frame.size.width, _orderFromButton.frame.size.width);
     _contactUsButton.frame=CGRectMake( _contactUsButton.frame.origin.x, _contactUsButton.frame.origin.y, _contactUsButton.frame.size.width, _contactUsButton.frame.size.width);
    
    
}

- (IBAction)productClicked:(id)sender {
    
    ProductsViewController *productControl;
    if(IS_IPAD)
        productControl=[IPADSTORY instantiateViewControllerWithIdentifier:ProductControl];
    else
        productControl=[IPHONESTORY instantiateViewControllerWithIdentifier:ProductControl];
   
    [self PushViewController:productControl TransitationFrom:kCATransitionFade];
    
}
- (IBAction)resourceClicked:(id)sender {
    
    ResourceViewController *resource;
    if(IS_IPAD)
        resource=[IPADSTORY instantiateViewControllerWithIdentifier:ResourceControl];
    else
        resource=[IPHONESTORY instantiateViewControllerWithIdentifier:ResourceControl];

   
    [self PushViewController:resource TransitationFrom:kCATransitionFade];
    
    
}
- (IBAction)broucherClicked:(id)sender {
    
    BroucherViewController *broucherControl;
    if(IS_IPAD)
        broucherControl=[IPADSTORY instantiateViewControllerWithIdentifier:BroucherControl];
    else
        broucherControl=[IPHONESTORY instantiateViewControllerWithIdentifier:BroucherControl];
    
  
    [self PushViewController:broucherControl TransitationFrom:kCATransitionFade];
 
}
- (IBAction)salesClicked:(id)sender {
    
    SaleViewController *salecontrol;
    if(IS_IPAD)
        salecontrol=[IPADSTORY instantiateViewControllerWithIdentifier:saleControl];
    else
        salecontrol=[IPHONESTORY instantiateViewControllerWithIdentifier:saleControl];
    
   
    [self PushViewController:salecontrol TransitationFrom:kCATransitionFade];
    
}

- (IBAction)orderFormClicked:(id)sender {
    OrderFormViewController *ordercontrol;
    if(IS_IPAD)
        ordercontrol=[IPADSTORY instantiateViewControllerWithIdentifier:OrderControl];
    else
        ordercontrol=[IPHONESTORY instantiateViewControllerWithIdentifier:OrderControl];
    
    
    [self PushViewController:ordercontrol TransitationFrom:kCATransitionFade];
    
}
- (IBAction)contactUsClicked:(id)sender {
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Prepare segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    if ([[segue identifier] isEqualToString:@"rersourcecontrol"]){
//        ResourceViewController *assetsVC = [segue destinationViewController];
//       
//    }
}

@end
