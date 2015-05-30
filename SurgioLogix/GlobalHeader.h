//
//  GlobalHeader.h
//  SurgioLogix
//
//  Created by Abdur Rahim on 07/05/15.
//  Copyright (c) 2015 Abdur Rahim. All rights reserved.
//
#import "AppDelegate.h"

#ifndef SurgioLogix_GlobalHeader_h
#define SurgioLogix_GlobalHeader_h
#define SURGIOLOGICPOINTSTRURL @"http://www.medicalsalesapp.com/app/webservice/point.php?"
#define SURGIOLOGICPOSTINFOTSTRURL @"http://readingleveler.com/post_info.php?"
#define SURGIOLOGCIRESOURCESTRURL @"http://www.surgilogix.com/resources.php"
#define SURGIOLOGICMAINURL @"http://www.medicalsalesapp.com/app/"

#define VIEWCONTROLLERSTRING @"ViewController" 
#define APPDELEGATESTRING @"AppDelegate"
#define IMAGEDOWNLOADIDENTIFIER @"ImageDownload"
#define APPDELEGATE [[UIApplication sharedApplication] delegate];

#define ARMITAREGULAR @"Armata-Regular"
//#define

#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


#define IPHONE4SHEIGHT 480
#define IPHONE5HEIGHT 568
#define IPHONE6HEIGHT 667
#define IPHONE6PLUSHEIGHT 736
#define ACTUALHEIGHT [[UIScreen mainScreen] bounds].size.height;
#define ACTUALWIDTH [[UIScreen mainScreen] bounds].size.height;

#define ViewControl @"viewcontrol"
#define ResourceControl @"rersourcecontrol"
#define BroucherControl @"brouchercontrol"
#define ProductControl @"productcontrol"
#define saleControl @"sale"
#define SaleInvoice1 @"saleonvoice1"
#define SaleInvoice2 @"saleonvoice2"
#define SaleInvoice3 @"saleonvoice3"
#define SaleInvoice4 @"saleonvoice4"
#define OrderControl @"ordercontrol"
#define SaleInvoice @"saleinvoice"
#define Website @"WebsiteViewController"

#define IPHONESTORY [UIStoryboard storyboardWithName:@"Main" bundle:nil]
#define IPADSTORY [UIStoryboard storyboardWithName:@"MainIpad" bundle:nil]

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define kBGQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1



#define BROUCHERURL     (SURGIOLOGICMAINURL @"webservice/point.php?data=brochures")


#define ROBOTO @"Roboto"
#define ROBOTOREGULAR @"Roboto-Regular"


#endif
