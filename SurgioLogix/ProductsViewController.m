//
//  ProductsViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 14/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "ProductsViewController.h"
#import "ProductTableCell.h"
@interface ProductsViewController()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *productsTable;

@end
@implementation ProductsViewController
-(void)viewDidAppear:(BOOL)animated{
    
}
-(void)viewDidLoad{
    _productsTable.delegate=self;
    _productsTable.dataSource=self;
}
-(void)didReceiveMemoryWarning{
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 174.0 ;
}
- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 174.0 ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 13;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
//    static NSString *simpleTableIdentifier = @"ProductTableCell";
//    
//    ProductTableCell *cell = (ProductTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//    if (cell == nil)
//    {
//       cell = [[[NSBundle mainBundle] loadNibNamed:@"ProductsTableCell" owner:self options:nil]objectAtIndex:0];
////         = [nib ];
//        
//    }
////    cell.cellomage.center=cell.center;
//    cell.cellomage.center=CGPointMake(cell.center.x, cell.center.y-40);
//    cell.cellomage.center=CGPointMake(cell.center.x, cell.center.y+40);
//    cell.cellomage.image=[UIImage imageNamed:@"amniotic_tissue_icon"];
//    cell.cellLabel.text=@"weeeeeee";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"producttablecell"];
    if(cell==nil){
        cell=[[UITableViewCell alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 174)];
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(10, 120, self.view.frame.size.width-20, 30)];
        UIImageView *imgview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 66, 66)];

        imgview.center=CGPointMake(self.view.frame.size.width/2, 174/2);
        label.tag=10;
        imgview.tag=20;
        [cell.contentView addSubview:label];
        [cell.contentView addSubview:imgview];
                           
    }
    
    float app=arc4random() % 51;
    cell.contentView.backgroundColor=[UIColor colorWithRed:0.0/255.0 green:0.0/255.0 blue:0.0/255.0 alpha:(app+49)*.01];
    UILabel *label=(UILabel *)[cell.contentView viewWithTag:10];
    UIImageView *imgView=(UIImageView *)[cell.contentView viewWithTag:20];
    label.backgroundColor=[UIColor clearColor];
    label.textAlignment=NSTextAlignmentCenter;
    label.textColor=[UIColor whiteColor];
    label.font=[UIFont systemFontOfSize:18];
    imgView.backgroundColor=[UIColor clearColor];
    imgView.image=[UIImage imageNamed:@"amniotic_tissue_icon"];
    label.text=@"weeeeeee";
    
    return cell;
}

- (IBAction)backClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
