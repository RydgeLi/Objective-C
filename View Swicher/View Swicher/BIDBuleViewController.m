//
//  BIDBuleViewController.m
//  View Swicher
//
//  Created by 李宇杰 on 13-8-19.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "BIDBuleViewController.h"

@interface BIDBuleViewController ()

@end

@implementation BIDBuleViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)blueButtonPressed:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Blue View Button Pressed" message:@"You pressed the button on the blue view" delegate:nil cancelButtonTitle:@"Yep, I did." otherButtonTitles: nil];
    [alert show];
}

@end
