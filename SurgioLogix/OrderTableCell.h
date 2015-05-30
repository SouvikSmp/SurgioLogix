//
//  OrderTableCell.h
//  order-form_1
//
//  Created by Student on 15/05/15.
//  Copyright (c) 2015 Karmick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderTableCell : UITableViewCell
+ (NSString *)reuseIdentifier;
@property(retain,nonatomic)IBOutlet UILabel *tabLbl1,*tabLbl2,*tabLbl3;
@property(retain,nonatomic)IBOutlet UIButton *tabBtn;


@end
