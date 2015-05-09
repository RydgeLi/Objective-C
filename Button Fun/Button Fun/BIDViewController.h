//
//  BIDViewController.h
//  Button Fun
//
//  Created by 李宇杰 on 13-8-16.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *statusText;

@end
