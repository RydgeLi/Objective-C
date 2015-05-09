//
//  BIDSwitchViewController.h
//  View Swicher
//
//  Created by 李宇杰 on 13-8-19.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BIDBuleViewController;
@class BIDYellowViewController;

@interface BIDSwitchViewController : UIViewController

@property(strong,nonatomic) BIDBuleViewController *blueViewControl;
@property(strong,nonatomic) BIDYellowViewController *yellowViewControl;

-(IBAction)switchViews:(id)sender;

@end
