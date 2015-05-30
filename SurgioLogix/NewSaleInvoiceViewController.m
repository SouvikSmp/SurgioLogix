//
//  new-sales-invoice.m
//  order-form_1
//
//  Created by Student on 18/05/15.
//  Copyright (c) 2015 Karmick. All rights reserved.
//

#import "NewSaleInvoiceViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "CustomViewX.h"
#import "GlobalHeader.h"
#import "NewSaleInvoiceSecondViewController.h"



@interface NewSaleInvoiceViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *topBar;
@property(retain,nonatomic)IBOutlet UIImageView *imgProfile;
@property (weak, nonatomic) IBOutlet UIView *lastView;
@property (weak, nonatomic) IBOutlet UIButton *uploadbutton;
@property (weak, nonatomic) IBOutlet UIView *stepBarSuperView;
@property(strong,nonatomic)CustomViewX *cutomView;
@property (weak, nonatomic) IBOutlet UIScrollView *SCROLLCONTAINER;
@property (weak, nonatomic) IBOutlet UITextField *salesRepTextFld;
@property (weak, nonatomic) IBOutlet UITextField *dateOfSurgeryTextFld;
@property (weak, nonatomic) IBOutlet UITextField *patientNameTextFld;
@property (assign)NSInteger height;
@property(assign)NSInteger actualHeight;






@end

@implementation NewSaleInvoiceViewController
@synthesize imgProfile,lastView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.topBar setBackgroundColor:UIColorFromRGB(0x262626)];
    [lastView setBackgroundColor:UIColorFromRGB(0x3b3b3b)];
    imgProfile.layer.backgroundColor=[[UIColor clearColor] CGColor];
    imgProfile.frame=CGRectMake(imgProfile.frame.origin.x, imgProfile.frame.origin.y, imgProfile.frame.size.height, imgProfile.frame.size.height) ;
    
    imgProfile.layer.cornerRadius=imgProfile.frame.size.height/2;
    imgProfile.layer.borderWidth=4.0;
    imgProfile.layer.masksToBounds = YES;
    imgProfile.layer.borderColor=[[UIColor whiteColor] CGColor];
    
    imgProfile.clipsToBounds = YES;
    _uploadbutton.titleLabel.numberOfLines=1;
    _uploadbutton.titleLabel.adjustsFontSizeToFitWidth=YES;
    if(_cutomView==nil)
        _cutomView=[[CustomViewX alloc]initWithFrame:CGRectMake(10, 0, 300, 40)];

    int widthCenter=(_stepBarSuperView.frame.size.width-300)/2;
    int heightCenter=(_stepBarSuperView.frame.size.height-40)/2;
    _cutomView.frame=CGRectMake(widthCenter, heightCenter, 300, 42);
    [_cutomView roundAllView:1];
//    [_cutomView disableAllimageView:1];
//    [_cutomView roundAllView];
    [_stepBarSuperView addSubview:_cutomView];
    
    
    [self setAllDelegates];
    _actualHeight=_SCROLLCONTAINER.frame.size.height;
    [self increaseScrollSize];
    
}

-(void)setAllDelegates{
    _salesRepTextFld.delegate=self;
    _dateOfSurgeryTextFld.delegate=self;
    _patientNameTextFld.delegate=self;
   __weak UIColor *color = [UIColor blackColor];
    _salesRepTextFld.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"SALES REP" attributes:@{NSForegroundColorAttributeName: color}];
    _dateOfSurgeryTextFld.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"DATE OF SURGERY" attributes:@{NSForegroundColorAttributeName: color}];
    _patientNameTextFld.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"PATIENT NAME" attributes:@{NSForegroundColorAttributeName: color}];
    color=nil;
    
}
-(void)increaseScrollSize{
    _height=ACTUALHEIGHT;
    if(IPHONE4SHEIGHT>=_height){
        
         _actualHeight= _SCROLLCONTAINER.frame.size.height+100;
    _SCROLLCONTAINER.contentSize=CGSizeMake(_SCROLLCONTAINER.frame.size.width, _actualHeight);
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)uploadButtonClicked:(id)sender
//This is the photo upload method
{
    
    
}
- (IBAction)NextButtonClicked:(id)sender
//All field validation checked here and go to the next page
{
    
    NewSaleInvoiceSecondViewController *invoice2;
    if(IS_IPAD)
        invoice2=[IPADSTORY instantiateViewControllerWithIdentifier:SaleInvoice2];
    else
        invoice2=[IPHONESTORY instantiateViewControllerWithIdentifier:SaleInvoice2];
   
    [self PushViewController:invoice2 TransitationFrom:kCATransitionFade];
    
}

- (IBAction)backButtonClicked:(id)sender
//This method used to go to the previos page
{
    [self PopViewControolWithTransition:kCATransitionFromRight];
  
}

- (IBAction)DropDownButtonClicked:(id)sender
//This method IS USED TO OPEN A DROP DOWN FOR SURGENTS
{
    
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    _SCROLLCONTAINER.contentSize=CGSizeMake(_SCROLLCONTAINER.frame.size.width, [self getHeight]);
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    return  YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    _SCROLLCONTAINER.contentSize=CGSizeMake(_SCROLLCONTAINER.frame.size.width,_actualHeight);
    [textField resignFirstResponder];
    return  YES;
}

-(int)getHeight{
    _height=ACTUALHEIGHT;
    if(IPHONE4SHEIGHT==_height){
        return  _SCROLLCONTAINER.frame.size.height+250;
    }
    else if(IPHONE5HEIGHT==_height){
     return  _SCROLLCONTAINER.frame.size.height+250;
    }
    else if(IPHONE6HEIGHT==_height){
     return  _SCROLLCONTAINER.frame.size.height+250;
    }
    else if(IPHONE6PLUSHEIGHT==_height){
     return  _SCROLLCONTAINER.frame.size.height+250;
    }
  return  _SCROLLCONTAINER.frame.size.height+50;
}





@end
