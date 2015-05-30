//
//  OrderTableCell.m
//  order-form_1
//
//  Created by Student on 15/05/15.
//  Copyright (c) 2015 Karmick. All rights reserved.
//

#import "OrderTableCell.h"

@implementation OrderTableCell
@synthesize tabBtn,tabLbl1,tabLbl2,tabLbl3;
- (void)awakeFromNib {
    // Initialization code
}
+ (NSString *)reuseIdentifier {
    return @"OrderTableCellIdentifier";
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
