//
//  customView.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 18/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "CustomView.h"
#import "GlobalHeader.h"
@interface CustomView()





@end
@implementation CustomView


- (id)initWithFrame:(CGRect)frame
{
    NSLog(@"this is fired");
    self = [super initWithFrame:frame];
    if(!self){
        return nil;
    }
    
    NSBundle *mainBundle = [NSBundle mainBundle];
//    NSArray *views = [mainBundle loadNibNamed:@"CustomViewX"/*NSStringFromClass([self class])*/
//                                        owner:nil
//                                      options:nil];
    NSLog(@"this is fired");
    self=[[[NSBundle mainBundle] loadNibNamed:@"CustomViewX" owner:self options:nil]objectAtIndex:0];
//    [self addSubview:views[0]];
    mainBundle=nil;
    
    [self roundAllView];
//    [views
    
    return self;
}

//-(id)initWithCoder:(NSCoder *)aDecoder
//{
//    self = [super initWithCoder:aDecoder];
//    if(!self){
//        return nil;
//    }
//    
//    NSBundle *mainBundle = [NSBundle mainBundle];
//    NSArray *views = [mainBundle loadNibNamed:NSStringFromClass([self class])
//                                        owner:nil
//                                      options:nil];
//    [self addSubview:views[0]];
//    mainBundle=nil;
//    
//    [self roundAllView];
//    
//    
//    return self;
//}
-(void)resizeContent{
    _firstLabel.frame=CGRectMake(_firstLabel.frame.origin.x
                                 , _firstLabel.frame.origin.y, _firstLabel.frame.size.width, _firstLabel.frame.size.width);
    _firstImageView.frame=CGRectMake(_firstLabel.frame.origin.x+3
                                 , _firstLabel.frame.origin.y+3, _firstLabel.frame.size.width-6, _firstLabel.frame.size.width-6);
    
    _secondLabel.frame=CGRectMake(_secondLabel.frame.origin.x
                                 , _secondLabel.frame.origin.y, _secondLabel.frame.size.width, _secondLabel.frame.size.width);
    _secondImageView.frame=CGRectMake(_secondLabel.frame.origin.x+3
                                     , _secondLabel.frame.origin.y+3, _secondLabel.frame.size.width-6, _secondLabel.frame.size.width-6);
   
    _thirdLabel.frame=CGRectMake(_thirdLabel.frame.origin.x
                                  , _thirdLabel.frame.origin.y, _thirdLabel.frame.size.width, _thirdLabel.frame.size.width);
    _thirdImageView.frame=CGRectMake(_thirdLabel.frame.origin.x+3
                                      , _thirdLabel.frame.origin.y+3, _thirdLabel.frame.size.width-6, _thirdLabel.frame.size.width-6);
    
    _fourthLabel.frame=CGRectMake(_thirdLabel.frame.origin.x
                                 , _thirdLabel.frame.origin.y, _thirdLabel.frame.size.width, _thirdLabel.frame.size.width);
    _fourthImageView.frame=CGRectMake(_thirdLabel.frame.origin.x+3
                                     , _thirdLabel.frame.origin.y+3, _thirdLabel.frame.size.width-6, _thirdLabel.frame.size.width-6);
    
    
    
    
//    _joinLine1.frame=CGRectMake(_firstLabel.frame.origin.x+_firstLabel.frame.size.width
//                                , _joinLine1.frame.origin.y, _secondLabel.frame.size.width, _secondLabel.frame.size.width);
    
    
}
-(void)disableAllimageView:(int)i{
    switch (i) {
        case 0:
            _firstImageView.hidden=YES;
            _secondImageView.hidden=YES;
            _thirdImageView.hidden=YES;
            _fourthImageView.hidden=YES;
            NSLog(@"value is 0");
        break;
        case 1:
            _firstImageView.hidden=YES;
            _secondImageView.hidden=YES;
            _thirdImageView.hidden=YES;
            _fourthImageView.hidden=YES;
            _firstLabel.maskView.backgroundColor=[UIColor redColor];
            _firstLabel.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"rightArrow"]];
            _firstLabel.layer.borderColor=[UIColor redColor].CGColor;
            
            NSLog(@"value is 1");
            break;
        case 2:
            _firstImageView.hidden=NO;
            _secondImageView.hidden=NO;
            _thirdImageView.hidden=YES;
            _fourthImageView.hidden=YES;
            _firstLabel.backgroundColor=[UIColor blueColor];
            _secondLabel.backgroundColor=[UIColor blueColor];
            NSLog(@"value is 2");
            break;
        case 3:
            _firstImageView.hidden=NO;
            _secondImageView.hidden=NO;
            _thirdImageView.hidden=NO;
            _fourthImageView.hidden=YES;
            _firstLabel.backgroundColor=[UIColor blueColor];
            _secondLabel.backgroundColor=[UIColor blueColor];
            _thirdLabel.backgroundColor=[UIColor blueColor];
            NSLog(@"value is 3");
            break;
        case 4:
            _firstImageView.hidden=NO;
            _secondImageView.hidden=NO;
            _thirdImageView.hidden=NO;
            _fourthImageView.hidden=NO;
            _firstLabel.backgroundColor=[UIColor blueColor];
            _secondLabel.backgroundColor=[UIColor blueColor];
            _thirdLabel.backgroundColor=[UIColor blueColor];
            _fourthLabel.backgroundColor=[UIColor blueColor];
            NSLog(@"value is 4");
            break;
            
            
            
}
    
}
-(void)roundAllView{
    _firstLabel.textAlignment=NSTextAlignmentCenter;
    _secondLabel.textAlignment=NSTextAlignmentCenter;
    _thirdLabel.textAlignment=NSTextAlignmentCenter;
    _fourthLabel.textAlignment=NSTextAlignmentCenter;
    
    _firstLabel.textColor=[UIColor whiteColor];
    _secondLabel.textColor=[UIColor whiteColor];
    _thirdLabel.textColor=[UIColor whiteColor];
    _fourthLabel.textColor=[UIColor whiteColor];
    
    
    _firstLabel.text=@"1";
    _secondLabel.text=@"2";
    _thirdLabel.text=@"3";
    _fourthLabel.text=@"4";
    
    _firstLabel.layer.cornerRadius=_firstLabel.frame.size.width/2;
    _secondLabel.layer.cornerRadius=_secondLabel.frame.size.width/2;
    _thirdLabel.layer.cornerRadius=_thirdLabel.frame.size.width/2;
    _fourthLabel.layer.cornerRadius=_fourthLabel.frame.size.width/2;
    
    
    
    
    _firstLabel.layer.borderWidth=3;
    _secondLabel.layer.borderWidth=3;
    _thirdLabel.layer.borderWidth=3;
    _fourthLabel.layer.borderWidth=3;
    
    _firstLabel.layer.borderColor=UIColorFromRGB(0xe3e3e3).CGColor;
    _secondLabel.layer.borderColor=UIColorFromRGB(0xe3e3e3).CGColor;
    _thirdLabel.layer.borderColor=UIColorFromRGB(0xe3e3e3).CGColor;
    _fourthLabel.layer.borderColor=UIColorFromRGB(0xe3e3e3).CGColor;

    
    _firstImageView.layer.cornerRadius=_firstImageView.frame.size.width/2;
    _secondImageView.layer.cornerRadius=_secondImageView.frame.size.width/2;
    _thirdImageView.layer.cornerRadius=_thirdImageView.frame.size.width/2;
    _fourthImageView.layer.cornerRadius=_fourthImageView.frame.size.width/2;
    
    _firstLabel.layer.masksToBounds = YES;
    _secondLabel.layer.masksToBounds = YES;
    _thirdLabel.layer.masksToBounds = YES;
    _fourthLabel.layer.masksToBounds = YES;
    _firstLabel.clipsToBounds = YES;
    _secondLabel.clipsToBounds = YES;
    _thirdLabel.clipsToBounds = YES;
    _fourthLabel.clipsToBounds = YES;
    _firstImageView.layer.masksToBounds = YES;
    _secondImageView.layer.masksToBounds = YES;
    _thirdImageView.layer.masksToBounds = YES;
    _fourthImageView.layer.masksToBounds = YES;
    _firstImageView.clipsToBounds=YES;
    _secondImageView.clipsToBounds=YES;
    _thirdImageView.clipsToBounds=YES;
    _fourthImageView.clipsToBounds=YES;
    [_firstLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
    [_secondLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
    [_thirdLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
    [_fourthLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
    
   }

@end
