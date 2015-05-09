//
//  BIDViewController.m
//  Control Fun
//
//  Created by 李宇杰 on 13-8-18.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController


-(IBAction)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)backgroundTap:(id)sender{
    [_nameField resignFirstResponder];
    [_numberField resignFirstResponder];
}

- (IBAction)sliderChanged:(id)sender {
    UISlider *slider=(UISlider*)sender;
    int progressAsInt=(int)roundf(slider.value);
    _sliderLabel.text = [NSString stringWithFormat:@"%d",progressAsInt];
}

- (IBAction)switchChanged:(id)sender {
    UISwitch *whichSwith = (UISwitch*)sender;
    BOOL setting = whichSwith.isOn;
    [_leftSwitch setOn:setting animated:YES];
    [_rightSwith setOn:setting animated:YES];
}

- (IBAction)toggleControls:(id)sender {
    if([sender selectedSegmentIndex] == 0)
    {
        _leftSwitch.hidden = NO;
        _rightSwith.hidden = NO;
        _doSomethingButton.hidden = YES;
    }
    else{
        _leftSwitch.hidden = YES;
        _rightSwith.hidden = YES;
        _doSomethingButton.hidden = NO;
    }
}

- (IBAction)buttonPressed:(id)sender {
    UIActionSheet *actionsheet=[[UIActionSheet alloc]initWithTitle:@"Are you sure" delegate:self cancelButtonTitle:@"No Way!" destructiveButtonTitle:@"Yes,I'm Sure!" otherButtonTitles:nil];
    [actionsheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if(buttonIndex != [actionSheet cancelButtonIndex])
    {
        NSString *msg=nil;
        if(_nameField.text.length>0)
            msg = [NSString stringWithFormat: @"You can breathe easy,%@,everything is OK.",_nameField.text];
        else
            msg=@"You can breathe easy, everythig is OK.";
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Something was done" message:msg delegate:self cancelButtonTitle:@"Phew!" otherButtonTitles: nil];
        [alert show];
    }
}

//下面的方法在上面的方法之前被调用
//- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
//    if(buttonIndex != [actionSheet cancelButtonIndex])
//    {
//        NSString *msg=nil;
//        if(_nameField.text.length>0)
//            msg = [NSString stringWithFormat: @"You can breathe easy,%@,everything is OK.",_nameField.text];
//        else
//            msg=@"You can breathe easy, everythig is OK.";
//        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Something" message:msg delegate:self cancelButtonTitle:@"Phew!" otherButtonTitles: nil];
//        [alert show];
//    }
//
//}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //美化 doSomething 按钮
    UIImage *buttonImageNormal = [UIImage imageNamed:@"whitebutton.png"];
    UIImage *stretchableButtonImageNormal = [buttonImageNormal stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    [_doSomethingButton setBackgroundImage:stretchableButtonImageNormal forState:UIControlStateNormal];
    
    UIImage *buttonImagePressed = [UIImage imageNamed:@"bluebutton.png"];
    UIImage *stretchableButtonImagePressed = [buttonImagePressed stretchableImageWithLeftCapWidth:12 topCapHeight:0];
    [_doSomethingButton setBackgroundImage:stretchableButtonImagePressed forState:UIControlStateHighlighted];
}

//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
