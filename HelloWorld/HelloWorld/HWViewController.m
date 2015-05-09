//
//  HWViewController.m
//  HelloWorld
//
//  Created by 李宇杰 on 13-8-13.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "HWViewController.h"

@interface HWViewController ()

@end

@implementation HWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)hide:(id)sender {
    [self.test setHidden:![self.test isHidden]];
}


@end
