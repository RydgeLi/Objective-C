//
//  BIDViewController.m
//  Button Fun
//
//  Created by 李宇杰 on 13-8-16.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()
@end


@implementation BIDViewController

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//}
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (IBAction)buttonPressed:(UIButton *)sender {
    _statusText.text=[NSString stringWithFormat:@"%@ button is pressed",[sender currentTitle]];
    
}
@end
