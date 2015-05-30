//
//  NewSaleThirdViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 25/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "NewSaleThirdViewController.h"
#import "NewSaleFourViewController.h"
#import "GlobalHeader.h"
#import "CustomViewX.h"
@interface NewSaleThirdViewController ()
@property (weak, nonatomic) IBOutlet UIView *setupBarSuperView;
@property(strong,nonatomic)CustomViewX *customView;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollContainer;

@property (assign)NSInteger height;
@property(assign)NSInteger actualHeight;

@end

@implementation NewSaleThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if(_customView==nil)
        _customView=[[CustomViewX alloc]initWithFrame:CGRectMake(10, 0, 300, 40)];
    
    int widthCenter=(_setupBarSuperView.frame.size.width-300)/2;
    int heightCenter=(_setupBarSuperView.frame.size.height-40)/2;
    _customView.frame=CGRectMake(widthCenter, heightCenter, 300, 42);
    [_customView roundAllView:3];
    //    [_cutomView disableAllimageView:1];
    //    [_cutomView roundAllView];
    [_setupBarSuperView addSubview:_customView];
    [self setScrollSize];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setScrollSize{
    _height=ACTUALHEIGHT;
    if(IPHONE4SHEIGHT>=_height){
        
        _actualHeight= _scrollContainer.frame.size.height+100;
        _scrollContainer.contentSize=CGSizeMake(_scrollContainer.frame.size.width, _actualHeight);
        
    }
}

- (IBAction)uploadPhotoClocked:(id)sender {
    
}
- (IBAction)nextClicked:(id)sender {
    
    NewSaleFourViewController *fourthControl;
    if(IS_IPAD)
        fourthControl=[IPADSTORY instantiateViewControllerWithIdentifier:SaleInvoice4];
    else
        fourthControl=[IPHONESTORY instantiateViewControllerWithIdentifier:SaleInvoice4];
    
    
    [self PushViewController:fourthControl TransitationFrom:kCATransitionFade];
    
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
