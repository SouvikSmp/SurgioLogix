//
//  NewSaleFourViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 26/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "NewSaleFourViewController.h"
#import "CustomViewX.h"
#import "SaleInvoiceLastViewController.h"
#import "GlobalHeader.h"

@interface NewSaleFourViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic)CustomViewX *customView;
@property (weak, nonatomic) IBOutlet UIView *setupBarSuperView;
@property (weak, nonatomic) IBOutlet UITableView *fourTable;
@end

@implementation NewSaleFourViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    if(_customView==nil)
        _customView=[[CustomViewX alloc]initWithFrame:CGRectMake(10, 0, 300, 40)];
    
    int widthCenter=(_setupBarSuperView.frame.size.width-300)/2;
    int heightCenter=(_setupBarSuperView.frame.size.height-40)/2;
    _customView.frame=CGRectMake(widthCenter, heightCenter, 300, 42);
    [_customView roundAllView:4];
    _fourTable.delegate=self;
    _fourTable.delegate=self;
    //    [_cutomView disableAllimageView:1];
    //    [_cutomView roundAllView];
    [_setupBarSuperView addSubview:_customView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backClicked:(id)sender
{
    [self PopViewControolWithTransition:kCATransitionFromRight];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  5;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"salefourcell"];
    
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"salefourcell"];
    }
    cell.textLabel.text=@"weeeeee";
    
    return  cell;
    
}

- (IBAction)submitClicked:(id)sender
{
    SaleInvoiceLastViewController *lastControl;
    if(IS_IPAD)
        lastControl=[IPADSTORY instantiateViewControllerWithIdentifier:SaleInvoice];
    else
        lastControl=[IPHONESTORY instantiateViewControllerWithIdentifier:SaleInvoice];
    
    
    [self PushViewController:lastControl TransitationFrom:kCATransitionFade];
    
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
