//
//  customView.h
//  SurgioLogix
//
//  Created by Abdur Rahim on 18/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomView : UIView

@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondLabel;
@property (weak, nonatomic) IBOutlet UILabel *thirdLabel;
@property (weak, nonatomic) IBOutlet UILabel *fourthLabel;

@property (weak, nonatomic) IBOutlet UIImageView *firstImageView;
@property (weak, nonatomic) IBOutlet UIImageView *secondImageView;
@property (weak, nonatomic) IBOutlet UIImageView *thirdImageView;
@property (weak, nonatomic) IBOutlet UIImageView *fourthImageView;

@property (weak, nonatomic) IBOutlet UIImageView *joinLine1;
@property (weak, nonatomic) IBOutlet UIImageView *joinLine2;
@property (weak, nonatomic) IBOutlet UIImageView *joinLine3;




-(void)resizeContent;
-(void)disableAllimageView:(int)i;
-(void)roundAllView;
- (id)initWithFrame:(CGRect)frame;
@end
