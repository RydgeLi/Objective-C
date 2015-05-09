//
//  BIDAppDelegate.h
//  View Swicher
//
//  Created by 李宇杰 on 13-8-19.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BIDSwitchViewController;

@interface BIDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//指向根控制器
@property (strong, nonatomic) BIDSwitchViewController *switchViewControl;

@end
