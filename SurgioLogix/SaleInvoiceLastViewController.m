//
//  SaleInvoiceLastViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 27/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "SaleInvoiceLastViewController.h"

@interface SaleInvoiceLastViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *saleLastTable;
@property (weak, nonatomic) IBOutlet UITableView *saleLastTableLast;

@property (weak, nonatomic) IBOutlet UILabel *imageTag;
@property (weak, nonatomic) IBOutlet UILabel *qtyTag;
@property (weak, nonatomic) IBOutlet UILabel *productTag;
@property (weak, nonatomic) IBOutlet UILabel *descriptionTag;
@property (weak, nonatomic) IBOutlet UILabel *lotTag;
@property (weak, nonatomic) IBOutlet UILabel *unitPriceTag;
@property (weak, nonatomic) IBOutlet UILabel *extPriceTag;
@property (weak, nonatomic) IBOutlet UIView *headerContainer;


@end

@implementation SaleInvoiceLastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _saleLastTable.delegate=self;
    _saleLastTableLast.delegate=self;
    _saleLastTable.dataSource=self;
    _saleLastTableLast.dataSource=self;
    _saleLastTable.tag=1000;
    _saleLastTableLast.tag=1001;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView.tag==1000){
        return  10;
    }
    else if(tableView.tag==1001){
        return 8;
    }
    return  1;
    
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if(tableView.tag==1000){
      UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"saleCell"];
      if(cell==nil)
          cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"saleCell"];
      UILabel *beginLabel=[[UILabel alloc]initWithFrame:CGRectMake(5, 0,cell.contentView.frame.size.width/2-5 , 30)];
      beginLabel.text=@"weee";
      UILabel *lastLabel=[[UILabel alloc]initWithFrame:CGRectMake(cell.contentView.frame.size.width/2, 0,cell.contentView.frame.size.width/2 , 30)];
      lastLabel.text=@"eeeeee";
      [cell.contentView addSubview:beginLabel];
      [cell.contentView addSubview:lastLabel];
      
      
      return cell;
      
      
  }
  else if(tableView.tag==1001){
      
      UITableViewCell *cell1=[tableView dequeueReusableCellWithIdentifier:@"saleCell1"];
      if(cell1==nil){
          for(UIView *view in cell1.contentView.subviews){
              [view removeFromSuperview];
          }
      }
      if(cell1==nil)
          cell1=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"saleCell1"];
      
      //_imageTag.frame.size.width
//      UIView *container=[[UIView alloc]initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 40)];
      NSLog(@"%f %f %f  %f %f %f",_imageTag.frame.size.width,_qtyTag.frame.size.width,_productTag.frame.size.width,_descriptionTag.frame.size.width,_lotTag.frame.size.width,_unitPriceTag.frame.size.width);
      CGFloat paramLength=_headerContainer.frame.size.width/35;
      
      _imageTag.frame=CGRectMake(1, 4, paramLength*5, 21);
      _qtyTag.frame=CGRectMake(paramLength*5, 4, paramLength*3, 21);
      _productTag.frame=CGRectMake(paramLength*8, 4, paramLength*7, 21);
      _descriptionTag.frame=CGRectMake(paramLength*15, 4, paramLength*8, 21);
      _lotTag.frame=CGRectMake(paramLength*23, 4, paramLength*4, 21);
      _unitPriceTag.frame=CGRectMake(paramLength*27, 4, paramLength*4, 21);
      _extPriceTag.frame=CGRectMake(paramLength*31, 4, paramLength*4, 21);
      
      _imageTag.textAlignment=NSTextAlignmentCenter;
      _qtyTag.textAlignment=NSTextAlignmentCenter;
      _productTag.textAlignment=NSTextAlignmentCenter;
      _descriptionTag.textAlignment=NSTextAlignmentCenter;
      _lotTag.textAlignment=NSTextAlignmentCenter;
      _unitPriceTag.textAlignment=NSTextAlignmentCenter;
      _extPriceTag.textAlignment=NSTextAlignmentCenter;
      
      UILabel *imageLbl=[[UILabel alloc]initWithFrame:CGRectMake(_imageTag.frame.origin.x, 0, paramLength*5, 41)];
      
      UILabel *qtyLbl=[[UILabel alloc]initWithFrame:CGRectMake(_qtyTag.frame.origin.x, 0,paramLength*3 , 41)];
      UILabel *productLbl=[[UILabel alloc]initWithFrame:CGRectMake(_productTag.frame.origin.x, 0,paramLength*7 , 41)];
      UILabel *descriptionLbl=[[UILabel alloc]initWithFrame:CGRectMake(_descriptionTag.frame.origin.x, 0,paramLength*8 , 41)];
      UILabel *lotLbl=[[UILabel alloc]initWithFrame:CGRectMake(_lotTag.frame.origin.x, 0,paramLength*4 , 41)];
      UILabel *unitPriceLbl=[[UILabel alloc]initWithFrame:CGRectMake(_unitPriceTag.frame.origin.x, 0,paramLength*4 , 41)];

      UILabel *extPriceLbl=[[UILabel alloc]initWithFrame:CGRectMake(_extPriceTag.frame.origin.x, 0,paramLength*4 , 41)];
      
      imageLbl.layer.borderWidth=0.4;
      imageLbl.layer.borderColor=[UIColor blueColor].CGColor;
      qtyLbl.layer.borderWidth=0.4;
      qtyLbl.layer.borderColor=[UIColor blueColor].CGColor;
      productLbl.layer.borderWidth=0.4;
      productLbl.layer.borderColor=[UIColor blueColor].CGColor;
      descriptionLbl.layer.borderWidth=0.4;
      descriptionLbl.layer.borderColor=[UIColor blueColor].CGColor;
      lotLbl.layer.borderWidth=0.4;
      lotLbl.layer.borderColor=[UIColor blueColor].CGColor;
      unitPriceLbl.layer.borderWidth=0.4;
      unitPriceLbl.layer.borderColor=[UIColor blueColor].CGColor;
      extPriceLbl.layer.borderWidth=0.4;
      extPriceLbl.layer.borderColor=[UIColor blueColor].CGColor;
      
      
      imageLbl.textAlignment=NSTextAlignmentCenter;
      qtyLbl.textAlignment=NSTextAlignmentCenter;
      productLbl.textAlignment=NSTextAlignmentCenter;
      descriptionLbl.textAlignment=NSTextAlignmentCenter;
      lotLbl.textAlignment=NSTextAlignmentCenter;
      unitPriceLbl.textAlignment=NSTextAlignmentCenter;
      extPriceLbl.textAlignment=NSTextAlignmentCenter;
      
//      descriptionLbl.layer.borderWidth=0.4;
//      descriptionLbl.layer.borderColor=[UIColor blueColor].CGColor;
      
      imageLbl.text=@"21";
      qtyLbl.text=@"22";
      productLbl.text=@"23";
      descriptionLbl.text=@"24";
      lotLbl.text=@"25";
      unitPriceLbl.text=@"26";
      extPriceLbl.text=@"27";
      
      [cell1.contentView addSubview:imageLbl];
      [cell1.contentView  addSubview:qtyLbl];
      [cell1.contentView  addSubview:productLbl];
      [cell1.contentView  addSubview:descriptionLbl];
      [cell1.contentView  addSubview:lotLbl];
      [cell1.contentView  addSubview:unitPriceLbl];
      [cell1.contentView  addSubview:extPriceLbl];
//      [cell1.contentView addSubview:container];
      
      
      
      
      return  cell1;
  }
    return  nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(tableView.tag==1001){
        return  40;
    }
    else if (tableView.tag==1000)
    {
        return  30;
    }
    return 15;
    
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
