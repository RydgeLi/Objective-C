//
//  BIDSwitchViewController.m
//  View Swicher
//
//  Created by 李宇杰 on 13-8-19.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "BIDSwitchViewController.h"
#import "BIDBuleViewController.h"
#import "BIDYellowViewController.h"

@interface BIDSwitchViewController ()

@end

@implementation BIDSwitchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.blueViewControl = [[BIDBuleViewController alloc]initWithNibName:@"BlueView" bundle:nil];
    [self.view insertSubview:self.blueViewControl.view atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if(self.blueViewControl.view.superview == nil)
        self.blueViewControl.view = nil;
    else
        self.yellowViewControl.view = nil;
}


-(IBAction)switchViews:(id)sender{
    //添加动画效果
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    //
    
    if(self.yellowViewControl.view.superview == nil)
    {
        if(self.yellowViewControl.view == nil)
        {
          self.yellowViewControl = [[BIDYellowViewController alloc]initWithNibName:@"YellowView" bundle:nil];
        }
        
        
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
        [self.blueViewControl.view removeFromSuperview];
        
        [self.view insertSubview:self.yellowViewControl.view atIndex:0];
        
    }
    else{
        if(self.blueViewControl.view == nil){
            self.blueViewControl = [[BIDBuleViewController alloc]initWithNibName:@"BlueView" bundle:nil];
        }
        
        [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:self.view cache:YES];
        
        [self.yellowViewControl.view removeFromSuperview];
        [self.view insertSubview:self.blueViewControl.view atIndex:0];
    }
    [UIView commitAnimations];
}

@end
