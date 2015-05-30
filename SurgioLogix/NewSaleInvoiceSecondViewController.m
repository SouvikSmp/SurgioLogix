//
//  newSaleInvo.m
//  order-form_1
//
//  Created by Student on 18/05/15.
//  Copyright (c) 2015 Karmick. All rights reserved.
//

#import "NewSaleInvoiceSecondViewController.h"
#import "NewSaleInvoiceViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "CustomViewX.h"
#import "GlobalHeader.h"
#import "NewSaleThirdViewController.h"


@interface NewSaleInvoiceSecondViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIView *topBar;
@property (weak, nonatomic) IBOutlet UIView *lastView;
@property (weak, nonatomic) IBOutlet UIView *stepBarSuperView;
@property (weak, nonatomic) IBOutlet UIScrollView *mainScroll;

@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *stateTextField;
@property (weak, nonatomic) IBOutlet UITextField *zipCodeTextField;


@property(strong,nonatomic)CustomViewX *cutomView;
@property (assign)NSInteger height;
@property(assign)NSInteger actualHeight;

@end

@implementation NewSaleInvoiceSecondViewController
@synthesize topBar,lastView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [topBar setBackgroundColor:UIColorFromRGB(0x262626)];
    [lastView setBackgroundColor:UIColorFromRGB(0x3b3b3b)];
    
    if(_cutomView==nil)
        _cutomView=[[CustomViewX alloc]initWithFrame:CGRectMake(10, 0, 300, 40)];
    
    int widthCenter=(_stepBarSuperView.frame.size.width-300)/2;
    int heightCenter=(_stepBarSuperView.frame.size.height-40)/2;
    _cutomView.frame=CGRectMake(widthCenter, heightCenter, 300, 42);
//    [_cutomView disableAllimageView:2];
    [_cutomView roundAllView:2];
    [_stepBarSuperView addSubview:_cutomView];
    
    [self setAllDelegates];
    _actualHeight=_mainScroll.frame.size.height;

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

-(void)setAllDelegates{
    _addressTextField.delegate=self;
    _cityTextField.delegate=self;
    _stateTextField.delegate=self;
    _zipCodeTextField.delegate=self;
    __weak UIColor *color = [UIColor blackColor];
    _addressTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"ADDRESS" attributes:@{NSForegroundColorAttributeName: color}];
    _cityTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"CITY" attributes:@{NSForegroundColorAttributeName: color}];
    _stateTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"STATE" attributes:@{NSForegroundColorAttributeName: color}];
    _zipCodeTextField.attributedPlaceholder= [[NSAttributedString alloc] initWithString:@"ZIP CODE" attributes:@{NSForegroundColorAttributeName: color}];
    color=nil;
    
}
-(void)increaseScrollSize{
    _height=ACTUALHEIGHT;
    if(IPHONE4SHEIGHT>=_height){
        
        _actualHeight= _mainScroll.frame.size.height+100;
        _mainScroll.contentSize=CGSizeMake(_mainScroll.frame.size.width, _actualHeight);
        
    }
    
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    _mainScroll.contentSize=CGSizeMake(_mainScroll.frame.size.width, [self getHeight]);
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    return  YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    _mainScroll.contentSize=CGSizeMake(_mainScroll.frame.size.width,_actualHeight);
    [textField resignFirstResponder];
    return  YES;
}

-(int)getHeight{
    _height=ACTUALHEIGHT;
    if(IPHONE4SHEIGHT==_height){
        return  _mainScroll.frame.size.height+150;
    }
    else if(IPHONE5HEIGHT==_height){
        return  _mainScroll.frame.size.height+150;
    }
    else if(IPHONE6HEIGHT==_height){
        return  _mainScroll.frame.size.height+100;
    }
    else if(IPHONE6PLUSHEIGHT==_height){
        return  _mainScroll.frame.size.height+1000;
    }
    return  _mainScroll.frame.size.height+50;
}

- (IBAction)nextClicked:(id)sender {
    
    
    NewSaleThirdViewController *thirdControl;
    if(IS_IPAD)
        thirdControl=[IPADSTORY instantiateViewControllerWithIdentifier:SaleInvoice3];
        else
    thirdControl=[IPHONESTORY instantiateViewControllerWithIdentifier:SaleInvoice3];
    [self PushViewController:thirdControl TransitationFrom:kCATransitionFade];
    
}
- (IBAction)backClicked:(id)sender {
    [self PopViewControolWithTransition:kCATransitionFromRight];
}


@end
