//
//  BIDViewController.h
//  Control Fun
//
//  Created by 李宇杰 on 13-8-18.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController<UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *numberField;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwith;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;


-(IBAction)textFieldDoneEditing:(id)sender;

-(IBAction)backgroundTap:(id)sender;

- (IBAction)sliderChanged:(id)sender;

- (IBAction)switchChanged:(id)sender;

- (IBAction)toggleControls:(id)sender;

- (IBAction)buttonPressed:(id)sender;

@end
