//
//  BroucherViewController.m
//  SurgioLogix
//
//  Created by Abdur Rahim on 15/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//
#import <QuickLook/QuickLook.h>
#import "BroucherViewController.h"
#import "GlobalHeader.h"
#import "AFHTTPRequestOperation.h"
@interface BroucherViewController ()<UITableViewDelegate,UITableViewDataSource,QLPreviewControllerDataSource,QLPreviewControllerDelegate>
{
    NSURL *fileURL;
    NSString *local_location;

}
@property (weak, nonatomic) IBOutlet UIView *TopView;
@property (weak, nonatomic) IBOutlet UITableView *BroucherTableView;
@property(strong,nonatomic)NSMutableArray *Reviewdata;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation BroucherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    _Reviewdata=[[NSMutableArray alloc]initWithObjects:
//                 [NSDictionary dictionaryWithObjectsAndKeys:@"Klitschko was born in Semipalatinsk, Kazakh SSR (now Semey, Kazakhstan).[1][3][4] His father, Vladimir Rodionovich Klitschko (1947–2011), was a Soviet Air Force major general and a military attaché of Ukraine in Germany; he was also one of the commanders in charge of cleaning up the effects of the Chernobyl disaster in 1986 and was afterward diagnosed with cancer. Wladimir's mother is Nadezhda Ulyanovna. He is the younger brother of former WBC, WBO & Ring magazine heavyweight champion Vitali Klitschko, the current Mayor of Kiev",@"Reviewdata",@"row",@"1" ,nil],
//                 [NSDictionary dictionaryWithObjectsAndKeys:@"Klitschko was scheduled to defend his titles against Alexander Povetkin later in 2008,[7] but on 25 October, Povetkin withdrew from the fight due to an ankle injury. Instead, Klitschko faced Hasim Rahman on 13 December 2008 and won by TKO. This was the third time Klitschko fought at the SAP Arena in Mannheim, Germany. He dominated the fight, winning every round while making good use of his left jab. From the first bell the difference in physical strength was profound. Rahman seemed unable to withstand Klitschko's punch power. The referee finally called a stop to the one-sided contest in the 7th round after Rahman failed to respond to a series of good shots.           Klitschko was scheduled to face David Haye, who pulled out within weeks of the fight complaining of a back injury. Salvaging the 20 June 2009 date and venue, Klitschko instead retained the IBF, WBO and IBO Heavyweight titles and also won the vacant Ring Magazine heavyweight title by defeating replacement opponent and Ring No. 3 ranked Ruslan Chagaev when Chagaev retired after an onslaught of punches towards the end of the ninth round. As Chagaev was WBA Champion, the title was not on the line. Klitschko's win over Chagaev was seen as one of his most impressive performances in the ring. He controlled the tempo of the fight from the very beginning and hit Chagaev at will with the jab. He hit Chagaev with several hard right crosses and never allowed him to build momentum. Towards the end of the second round Klitschko caught Chagaev off balance and sent him to the canvas. Chagaev recovered but was dominated thereafter. This win had added significance because even though the WBA title was not on the line, many saw Klitschko as the rightful champion.",@"Reviewdata",@"row",@"2" ,nil],
//                 [NSDictionary dictionaryWithObjectsAndKeys:@"Following the match with Chambers, a unification fight between Klitschko and David Haye, who as of May 2009 held the WBA title, appeared to be in the offing. Klitschko called out the Briton on YouTube in April 2010, stating, 'I want to send this message to boxing fans and directly to David Haye. David, you've bitched out on fighting both Klitschko brothers twice already and now's the time to make it happen. On behalf of the boxing fans around the world, I am officially calling you out to fight me. You can't run away from me forever and you need to follow through with this fight if you want to be respected. I'm ready. What're you waiting for?'[9][10] Haye's trainer, Adam Booth, has indicated that Haye would be willing to accept the challenge.[11] Both sides began negotiations for a potential fight and the bout was targeted for September.[12] As the negotiations continued to move forward,[13] the unification fight between Klitschko and Haye was expected to take place in Germany rather than England.[14][15] The IBF set a deadline to end negotiations on 17 May. A few days before the 17 May deadline to make the unification bout, Haye said he was interested in fighting the older Klitschko, Vitali, rather than Wladimir.[16] The fight did not materialize and Klitschko was set to take on mandatory challenger Alexander Povetkin. On 17 May 2010, the 30-day period of negotiation began for Klitschko to defend his championship against Povetkin.[17] Within this period, discussions to make a fight with Haye were still ongoing.[18]         The bout between Klitschko and Povetkin was initially tentatively scheduled to take place in Frankfurt, Hessen, Germany, on 11 September 2010. In July 2010, it was confirmed that the bout would be taking place in Frankfurt.[19] However, Povetkin, under trainer Teddy Atlas, backed out of the $2 million purse fight.[citation needed] Samuel Peter replaced Povetkin for the scheduled fight. Klitschko faced Peter for a second time, as they had fought in 2005 previously. Peter fought Klitschko on 11 September 2010, for the Ukrainian's IBF, WBO & IBO Heavyweight titles. Klitschko won again, by knocking out Peter in the 10th round.[20][21] Peter weighed in at 241 pounds, two pounds lighter than their first fight. Klitschko came in at a career heavy of 247 pounds. Both fighters had promised knockouts in the pre-fight build up. Peter started the fight very aggressively and caught Klitschko with a good left hook in the opening minute although Klitschko ended the round well. Peter was caught with three hard right-hands in the second round, one of which seemed to stun him. Peter tried to duck under the Klitschko jab, but was being tied up on the inside. After four rounds the fight became one-sided in Klitschko's favour. Peter's right eye was closing and he was taking heavy punishment. After the ninth round, Peter's trainer Abel Sanchez said he would give him one more round. Emmanuel Steward also implored Klitschko to be more aggressive. Peter swung wildly in the tenth and Klitschko put him down with a concussive combination. Referee Robert Byrd did not start a count and waved the fight off, awarding Klitschko the win by knockout. Klitschko, however, was set to fight Dereck Chisora on 11 December, but the fight was later called off on 8 December due to Klitschko tearing a muscle in his abdomen",@"Reviewdata",@"row",@"3" ,nil],
//                 nil];
    _Reviewdata=[[NSMutableArray alloc]init];
    _BroucherTableView.dataSource=self;
    _BroucherTableView.delegate=self;
    _BroucherTableView.superview.backgroundColor=[UIColor lightGrayColor];
    [self getDataFromURL];
}


-(void)getDataFromURL{
    dispatch_async(kBGQueue,
        ^{
        [_activityIndicator startAnimating];
       NSData *data=[NSData dataWithContentsOfURL:[NSURL URLWithString:BROUCHERURL]];
        dispatch_async(dispatch_get_main_queue(),
            ^{
            NSError *err=nil;
            NSDictionary *dict=[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&err];
            if(err)//if errro occured
            {
                NSLog(@"error occured %@",err);
            }
            if(dict)//if dict is not null
            {
                
                _Reviewdata=[dict objectForKey:@"brochures_list"];
                [_BroucherTableView reloadData];
                NSLog(@"content is %@",_Reviewdata);
            }
            [_activityIndicator stopAnimating];
                
        });
        
    });
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGSize maximumLabelSize = CGSizeMake(self.view.frame.size.width-24,999);
    NSMutableDictionary *dict=[[_Reviewdata objectAtIndex:indexPath.row]mutableCopy];
    
    CGSize size = [[dict objectForKey:@"brochuresDesc"] sizeWithFont:[UIFont systemFontOfSize:15]
                                                constrainedToSize:maximumLabelSize
                                                    lineBreakMode:NSLineBreakByWordWrapping];
//      NSLog(@"dict is %@ HEIGHT and width is  %f %f",[dict objectForKey:@"Reviewdata"],size.height,size.width);
    
    [dict setObject:[NSNumber numberWithInt:size.height] forKey:@"height"];
    _Reviewdata=[_Reviewdata mutableCopy];
    [_Reviewdata replaceObjectAtIndex:indexPath.row withObject:dict];
    dict=nil;
//    NSLog(@"HEIGHT IS %f - %f",size.height,size.width);
    return size.height+112;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_Reviewdata count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    NSDictionary *dict=[_Reviewdata objectAtIndex:indexPath.row];
    int height=(int)[[dict objectForKey:@"height"]integerValue];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.backgroundColor=[UIColor grayColor];
//    int width=10;
    
    if (cell == nil) {
        // allocate the cell:
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
    }
    else{
        
        UIView *f1=(UIView *)[cell.contentView viewWithTag:20];
        UILabel *f2=(UILabel *)[f1 viewWithTag:20];
        [f2 removeFromSuperview];
        [f1 removeFromSuperview];//
        f2=nil;
        f1=nil;
        UIView *view=(UIView *)[cell.contentView viewWithTag:40];
        UILabel *lbl=(UILabel *)[view viewWithTag:20];
        UIButton *buttonView=(UIButton *)[cell.contentView viewWithTag:60];
        [lbl removeFromSuperview];
        [buttonView removeFromSuperview];
        [view removeFromSuperview];
        lbl=nil;
        buttonView=nil;
        view=nil;
    }
    cell.clipsToBounds=YES;
    
    
   
    UIView *topView=[[UIView alloc]initWithFrame:CGRectMake(10, 3, _BroucherTableView.frame.size.width-20, 28)];
    topView.backgroundColor=[UIColor blackColor];
    UILabel *topViewLabel=[[UILabel alloc]initWithFrame:CGRectMake(5, 0, topView.frame.size.width-5, 28)];
    topViewLabel.tag=20;
    topViewLabel.backgroundColor=[UIColor clearColor];
    topViewLabel.textColor=[UIColor whiteColor];
    topViewLabel.text=[dict objectForKey:@"brochuresTitle"];
    [topView addSubview:topViewLabel];
    topView.tag=20;
    
    
    UIView *backView=[[UIView alloc]initWithFrame:CGRectMake(10, 33, _BroucherTableView.frame.size.width-20, height+53)];
    backView.tag=40;
    backView.backgroundColor=[UIColor whiteColor];
    
    UILabel *downLabel=[[UILabel alloc]initWithFrame:CGRectMake(2, 5, backView.frame.size.width-4, height-35)];
    downLabel.font=[UIFont systemFontOfSize:13];
    downLabel.tag=20;
    
   
    downLabel.lineBreakMode=NSLineBreakByWordWrapping;
    downLabel.numberOfLines=0;
    downLabel.text=[NSString stringWithFormat:@"%@",[dict objectForKey:@"brochuresDesc"]];
    downLabel.textColor=[UIColor blackColor];
    downLabel.backgroundColor=[UIColor clearColor];
    
    downLabel.text = [downLabel.text stringByReplacingOccurrencesOfString:@"<p>" withString:@""];
    downLabel.text = [downLabel.text stringByReplacingOccurrencesOfString:@"</p>" withString:@""];
    downLabel.text = [downLabel.text stringByReplacingOccurrencesOfString:@"&nbsp;" withString:@""];
    downLabel.text = [downLabel.text stringByReplacingOccurrencesOfString:@"&bull;" withString:@""];
    downLabel.text = [downLabel.text stringByReplacingOccurrencesOfString:@"&ldquo;" withString:@"\""];
    downLabel.text = [downLabel.text stringByReplacingOccurrencesOfString:@"&rdquo;" withString:@"\""];
    
    UIButton *ViewBroucherButton=[[UIButton alloc]initWithFrame:CGRectMake(12, height+50, _BroucherTableView.frame.size.width-24, 32)];
    ViewBroucherButton.tag=indexPath.row;
    ViewBroucherButton.backgroundColor=[UIColor blackColor];
    [ViewBroucherButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [ViewBroucherButton setTitle:@"VIEW BROCHURE" forState:UIControlStateNormal];
    ViewBroucherButton.tag=indexPath.row+1;
    [ViewBroucherButton addTarget:self action:@selector(checkit:) forControlEvents:UIControlEventTouchUpInside];
    [backView addSubview:downLabel];
    
    
    
    
    backView.clipsToBounds=YES;
    cell.contentView.backgroundColor=[UIColor grayColor];
    [cell.contentView addSubview:backView];
    
    [cell.contentView addSubview:topView];
    [cell.contentView addSubview:ViewBroucherButton];
    
    
    
    
    
    cell.backgroundColor=[UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(void)checkit:(UIButton *)button
{
   
    switch (button.tag)
    {
        case 1:
             fileURL = [NSURL URLWithString:[[[_Reviewdata objectAtIndex:button.tag-1]valueForKey:@"brochuresPdf"]stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
           
            break;
            
        case 2:
            fileURL = [NSURL URLWithString:[[[_Reviewdata objectAtIndex:button.tag-1]valueForKey:@"brochuresPdf"]stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
            
            break;
        case 3:
            fileURL = [NSURL URLWithString:[[[_Reviewdata objectAtIndex:button.tag-1]valueForKey:@"brochuresPdf"]stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
            
            break;
     }
            NSLog(@"pdf url is %@",[fileURL absoluteString]);
            NSString *path = [[NSBundle mainBundle] pathForResource:@"sampleData" ofType:@"plist"];
            path = NSTemporaryDirectory();
            local_location= [path stringByAppendingPathComponent:[NSString stringWithFormat:@"Document_%d.pdf",button.tag]];
            
            
            AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:[NSURLRequest requestWithURL:fileURL]] ;
            
//            NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            path = local_location;
            operation.outputStream = [NSOutputStream outputStreamToFileAtPath:path append:NO];
            NSLog(@"operation started");
            [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject)
             {
                NSLog(@"operation started");
                QLPreviewController* preview = [[QLPreviewController alloc] init];
                preview.dataSource = self;
                [self presentViewController:preview animated:YES completion:nil];
                
            }
        failure:^(AFHTTPRequestOperation *operation, NSError *error)
          {
                NSLog(@"Error: %@", error);
          }];
            
            [operation start];
            
            
//            ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:[[_Reviewdata objectAtIndex:button.tag]valueForKey:@"brochuresPdf"]]];
//            [request setDownloadDestinationPath:local_location];
//            [request startAsynchronous];
            
           
   
}
- (IBAction)backClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark -
#pragma mark QLPreviewControllerDataSource

// Returns the number of items that the preview controller should preview
- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)previewController
{
    return 1; //you can increase the this
    
    //return [local_location co]
}

// returns the item that the preview controller should preview
- (id)previewController:(QLPreviewController *)previewController previewItemAtIndex:(NSInteger)idx
{
    //return fileURL;
    
    
    return [NSURL fileURLWithPath:local_location];
    //[HUD show:NO];
}

- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller
{
    
    return self;
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
