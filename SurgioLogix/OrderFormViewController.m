//
//  ViewController.m
//  order-form_1
//
//  Created by Student on 14/05/15.
//  Copyright (c) 2015 Karmick. All rights reserved.
//

#import "OrderFormViewController.h"
#import "OrderTableCell.h"
#import "GlobalHeader.h"

@interface OrderFormViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UIView *topBar;
@property (weak, nonatomic) IBOutlet UIView *distInfoView;
@property (weak, nonatomic) IBOutlet UIView *shipInfoView;
@property (weak, nonatomic) IBOutlet UIView *lastView;
@property (weak, nonatomic) IBOutlet UIView *tableTopView;
@property (weak, nonatomic) IBOutlet UITableView *firstTable;
@property (weak, nonatomic) IBOutlet OrderTableCell *customTableCell;
@end

@implementation OrderFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.topBar setBackgroundColor:UIColorFromRGB(0x262626)];
    [self.tableTopView setBackgroundColor:UIColorFromRGB(0x636363)];
     [self.distInfoView setBackgroundColor:UIColorFromRGB(0x3b3b3b)];
     [self.shipInfoView setBackgroundColor:UIColorFromRGB(0x3b3b3b)];
     [self.lastView setBackgroundColor:UIColorFromRGB(0x3b3b3b)];
    _firstTable.delegate=self;
    _firstTable.dataSource=self;
   // [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleBlackTranslucent animated:NO];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}
//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
//{
//    return 20;
//}

//- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section
//{
//  return 20;
//}
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    UIView *view1=[[UIView alloc]init];
//    view1.frame=CGRectMake(10, 0, self.view.frame.size.width-20, 30);
//    
//    [view1 setBackgroundColor:UIColorFromRGB(0x636363)];
//    //view1.backgroundColor=[UIColor];
//    return view1;
//}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    OrderTableCell *cell = (OrderTableCell *)[tableView dequeueReusableCellWithIdentifier:@"OrderTableCell"];
    if (cell == nil) {
        cell=[[[NSBundle mainBundle] loadNibNamed:@"OrderTableCell" owner:self options:nil]objectAtIndex:0];
//        cell = _customTableCell;
//        _customTableCell = nil;
    }
    
    cell.tabLbl1.text = @"Am";
    cell.tabLbl2.text = @"pra";
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 23.0;
}

- (IBAction)backButtonClicked:(id)sender {
    
 [self PopViewControolWithTransition:kCATransitionFromRight];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
