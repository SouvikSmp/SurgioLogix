//
//  BrouchersTableCell.h
//  SurgioLogix
//
//  Created by Abdur Rahim on 15/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BrouchersTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *cellView;

@property (weak, nonatomic) IBOutlet UITextView *cellText;
@property (weak, nonatomic) IBOutlet UIView *upperView;

@property (weak, nonatomic) IBOutlet UILabel *upperLabel;
@property (weak, nonatomic) IBOutlet UIView *lowerView;

@property (weak, nonatomic) IBOutlet UILabel *lowerLabel;

@end
