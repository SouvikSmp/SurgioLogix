//
//  CustomViewX.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 25/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//

#import "CustomViewX.h"
#import "GlobalHeader.h"
@interface CustomViewX()
@property (strong, nonatomic)  UILabel *firstLabel;
@property (strong, nonatomic)  UILabel *secondLabel;
@property (strong, nonatomic)  UILabel *thirdLabel;
@property (strong, nonatomic)  UILabel *fourthLabel;

@property (strong, nonatomic)  UIImageView *firstImageView;
@property (strong, nonatomic)  UIImageView *secondImageView;
@property (strong, nonatomic)  UIImageView *thirdImageView;
@property (strong, nonatomic)  UIImageView *fourthImageView;

@property (strong, nonatomic)  UIView *firstContainer;
@property (strong, nonatomic)  UIView *secondContainer;
@property (strong, nonatomic)  UIView *thirdContainer;
@property (strong, nonatomic)  UIView *fourthContainer;


@property (strong, nonatomic)  UIImageView *joinLine1;
@property (strong, nonatomic)  UIImageView *joinLine2;
@property (strong, nonatomic)  UIImageView *joinLine3;





@end

@implementation CustomViewX



- (id)initWithFrame:(CGRect)frame
{
    NSLog(@"this is fired");
    self = [super initWithFrame:frame];
    if(!self){
        return nil;
    }
    
    
    [self createUIObjects];
//    [self roundAllView];
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

    _firstImageView.hidden=YES;
    _secondImageView.hidden=YES;
    _thirdImageView.hidden=YES;
    _fourthImageView.hidden=YES;
    _firstLabel.layer.hidden=YES;
    _firstLabel.backgroundColor=[UIColor redColor];
    _firstLabel.layer.backgroundColor=[UIColor redColor].CGColor;
    
    
//    UIView *label=[self viewWithTag:1001];
//    for(UIView *view in self.subviews){
//    NSLog(@"label content is %d",view.tag);
//    }
//    [label setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
    
}
//-(void)disableAllimageView:(int)i{
//    switch (i) {
//        case 0:
//            _firstImageView.hidden=YES;
//            _secondImageView.hidden=YES;
//            _thirdImageView.hidden=YES;
//            _fourthImageView.hidden=YES;
//            NSLog(@"value is 0");
//            break;
//        case 1:
//            _firstImageView.hidden=YES;
//            _secondImageView.hidden=YES;
//            _thirdImageView.hidden=YES;
//            _fourthImageView.hidden=YES;
//            
//            [_firstLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
//            _firstImageView.hidden=YES;
////            _firstLabel.layer.borderColor=[UIColor redColor].CGColor;
//            
//            NSLog(@"value is 1");
//            break;
//        case 2:
//            _firstImageView.hidden=NO;
//            _secondImageView.hidden=NO;
//            _thirdImageView.hidden=YES;
//            _fourthImageView.hidden=YES;
////            _firstLabel.backgroundColor=[UIColor blueColor];
////            _secondLabel.backgroundColor=[UIColor blueColor];
//             [_firstLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
//             [_secondLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
//            
//            NSLog(@"value is 2");
//            break;
//        case 3:
//            _firstImageView.hidden=NO;
//            _secondImageView.hidden=NO;
//            _thirdImageView.hidden=NO;
//            _fourthImageView.hidden=YES;
//            _firstLabel.backgroundColor=[UIColor blueColor];
//            _secondLabel.backgroundColor=[UIColor blueColor];
//            _thirdLabel.backgroundColor=[UIColor blueColor];
//            NSLog(@"value is 3");
//            break;
//        case 4:
//            _firstImageView.hidden=NO;
//            _secondImageView.hidden=NO;
//            _thirdImageView.hidden=NO;
//            _fourthImageView.hidden=NO;
//            _firstLabel.backgroundColor=[UIColor blueColor];
//            _secondLabel.backgroundColor=[UIColor blueColor];
//            _thirdLabel.backgroundColor=[UIColor blueColor];
//            _fourthLabel.backgroundColor=[UIColor blueColor];
//            NSLog(@"value is 4");
//            break;
//            
//            
//            
//    }
//    
//}

-(void)createUIObjects{
    if(_firstLabel==nil)
    _firstLabel=[[UILabel alloc]initWithFrame:CGRectMake(8, 1, 40, 40)];
    if(_firstImageView==nil)
    _firstImageView=[[UIImageView alloc]initWithFrame:CGRectMake(6, 6, 28, 28)];
    if(_joinLine1==nil)
     _joinLine1=[[UIImageView alloc]initWithFrame:CGRectMake(42, 11, 55, 20)];
    if(_secondLabel==nil)
    _secondLabel=[[UILabel alloc]initWithFrame:CGRectMake(88, 1, 40, 40)];
    if(_secondImageView==nil)
    _secondImageView=[[UIImageView alloc]initWithFrame:CGRectMake(6, 6, 28, 28)];
    if(_joinLine2==nil)
    _joinLine2=[[UIImageView alloc]initWithFrame:CGRectMake(122, 11, 55, 20)];
    if(_thirdLabel==nil)
    _thirdLabel=[[UILabel alloc]initWithFrame:CGRectMake(170, 1, 40, 40)];
    if(_thirdImageView==nil)
    _thirdImageView=[[UIImageView alloc]initWithFrame:CGRectMake(6, 6, 28, 28)];
    if(_joinLine3==nil)
    _joinLine3=[[UIImageView alloc]initWithFrame:CGRectMake(202, 11, 55, 20)];
    
    if(_fourthLabel==nil)
    _fourthLabel=[[UILabel alloc]initWithFrame:CGRectMake(250, 1, 40, 40)];
    if(_firstImageView==nil)
    _firstImageView=[[UIImageView alloc]initWithFrame:CGRectMake(6, 6, 28, 28)];
    
    if(_firstContainer==nil)
      _firstContainer=[[UIView alloc]initWithFrame:CGRectMake(8, 1, 40, 40)];
    if(_secondContainer==nil)
        _secondContainer=[[UIView alloc]initWithFrame:CGRectMake(88, 1, 40, 40)];
    if(_thirdContainer==nil)
        _thirdContainer=[[UIView alloc]initWithFrame:CGRectMake(170, 1, 40, 40)];
    if(_fourthContainer==nil)
        _fourthContainer=[[UIView alloc]initWithFrame:CGRectMake(250, 1, 40, 40)];
    _firstLabel.tag=1001;
    _secondLabel.tag=1002;
    _thirdLabel.tag=1003;
    _fourthLabel.tag=1004;
    
    _firstImageView.image=[UIImage imageNamed:@"wright"];
    _secondImageView.image=[UIImage imageNamed:@"wright"];
    _thirdImageView.image=[UIImage imageNamed:@"wright"];
    _fourthImageView.image=[UIImage imageNamed:@"wright"];
    
    _firstImageView.backgroundColor=UIColorFromRGB(0xe3e3e3);
    _secondImageView.backgroundColor=UIColorFromRGB(0xe3e3e3);
    _thirdImageView.backgroundColor=UIColorFromRGB(0xe3e3e3);
    _fourthImageView.backgroundColor=UIColorFromRGB(0xe3e3e3);
    
    _firstContainer.backgroundColor=UIColorFromRGB(0xe3e3e3);
    _secondContainer.backgroundColor=UIColorFromRGB(0xe3e3e3);
    _thirdContainer.backgroundColor=UIColorFromRGB(0xe3e3e3);
    _fourthContainer.backgroundColor=UIColorFromRGB(0xe3e3e3);
    
    _firstImageView.hidden=YES;
    _secondImageView.hidden=YES;
    _thirdImageView.hidden=YES;
    _fourthImageView.hidden=YES;
    
    [self addSubview:_joinLine1];
    [self addSubview:_joinLine3];
    [self addSubview:_joinLine2];
    
    [self addSubview:_firstLabel];
    [self addSubview:_secondLabel];
    [self addSubview:_thirdLabel];
    [self addSubview:_fourthLabel];
    
    [_firstContainer addSubview:_firstImageView];
    [_secondContainer addSubview:_secondImageView];
    [_thirdContainer addSubview:_thirdImageView];
    [_fourthContainer addSubview:_fourthImageView];
    
    [self addSubview:_firstContainer];
    [self addSubview:_secondContainer];
    [self addSubview:_thirdContainer];
    [self addSubview:_fourthContainer];
    _firstContainer.hidden=YES;
    _secondContainer.hidden=YES;
    _thirdContainer.hidden=YES;
    _fourthContainer.hidden=YES;
    
    
}
-(void)roundAllView:(int)i{
    _joinLine1.image=[UIImage imageNamed:@"JoinLine"];
    _joinLine2.image=[UIImage imageNamed:@"JoinLine"];
    _joinLine3.image=[UIImage imageNamed:@"JoinLine"];
    
   
    switch(i){
        case 1:
        {
    [_firstLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];//0x0c4a9c
    [_secondLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
    [_thirdLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
    [_fourthLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
    
            break;
        }
        case 2:
        {
            [_firstLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];//0x0c4a9c
            _firstContainer.hidden=NO;
            _firstImageView.hidden=NO;
            [_secondLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
            [_thirdLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
            [_fourthLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
            
            [_firstLabel removeFromSuperview];
              break;
        }
        case 3:
        {
            [_firstLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];//0x0c4a9c
            _firstContainer.hidden=NO;
            _firstImageView.hidden=NO;
            _secondContainer.hidden=NO;
            _secondImageView.hidden=NO;
            [_secondLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
            [_thirdLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
            [_fourthLabel setBackgroundColor:UIColorFromRGB(0xe3e3e3)];
            break;
        }
        case 4:
        {
            [_firstLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];//0x0c4a9c
            _firstContainer.hidden=NO;
            _firstImageView.hidden=NO;
            _secondContainer.hidden=NO;
            _secondImageView.hidden=NO;
            _thirdContainer.hidden=NO;
            _thirdImageView.hidden=NO;
            [_secondLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
            [_thirdLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
            [_fourthLabel setBackgroundColor:UIColorFromRGB(0x0c4a9c)];
            break;
        }

    }
    
    
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
    
    
    _firstContainer.layer.cornerRadius= _firstContainer.frame.size.width/2;
    _secondContainer.layer.cornerRadius= _secondContainer.frame.size.width/2;
    _thirdContainer.layer.cornerRadius= _thirdContainer.frame.size.width/2;
    _fourthContainer.layer.cornerRadius= _fourthContainer.frame.size.width/2;
    
    _firstImageView.layer.cornerRadius=_firstImageView.frame.size.width/2;
    _secondImageView.layer.cornerRadius=_secondImageView.frame.size.width/2;
    _thirdImageView.layer.cornerRadius=_thirdImageView.frame.size.width/2;
    _fourthImageView.layer.cornerRadius=_fourthImageView.frame.size.width/2;
    
    _firstContainer.layer.borderWidth=3;
    _secondContainer.layer.borderWidth=3;
    _thirdContainer.layer.borderWidth=3;
    _fourthContainer.layer.borderWidth=3;
    
    _firstContainer.layer.borderColor=UIColorFromRGB(0xe3e3e3).CGColor;
    _secondContainer.layer.borderColor=UIColorFromRGB(0xe3e3e3).CGColor;
    _thirdContainer.layer.borderColor=UIColorFromRGB(0xe3e3e3).CGColor;
    _fourthContainer.layer.borderColor=UIColorFromRGB(0xe3e3e3).CGColor;
    
    _firstLabel.layer.masksToBounds = YES;
    _secondLabel.layer.masksToBounds = YES;
    _thirdLabel.layer.masksToBounds = YES;
    _fourthLabel.layer.masksToBounds = YES;
    _firstLabel.clipsToBounds = YES;
    _secondLabel.clipsToBounds = YES;
    _thirdLabel.clipsToBounds = YES;
    _fourthLabel.clipsToBounds = YES;
    
    _firstContainer.layer.masksToBounds = YES;
    _secondContainer.layer.masksToBounds = YES;
    _thirdContainer.layer.masksToBounds = YES;
    _fourthContainer.layer.masksToBounds = YES;
    _firstContainer.clipsToBounds=YES;
    _secondContainer.clipsToBounds=YES;
    _thirdContainer.clipsToBounds=YES;
    _fourthContainer.clipsToBounds=YES;
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
