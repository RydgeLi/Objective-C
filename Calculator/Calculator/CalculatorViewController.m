//
//  CalculatorViewController.m
//  Calculator
//
//  Created by 李宇杰 on 13-8-8.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"

@interface CalculatorViewController ()
//判断用户是否开始输入
@property(nonatomic)BOOL userIsInTheMiddleOfEnteringANumber;
@property(nonatomic,strong)CalculatorBrain *brain;
@end

@implementation CalculatorViewController

-(CalculatorBrain *)brain{
    if(!_brain)
        _brain=[[CalculatorBrain alloc]init];
    return _brain;
}

- (IBAction)digitPressed:(UIButton *)sender {
    if(self.userIsInTheMiddleOfEnteringANumber)
    self.display.text=[self.display.text stringByAppendingString:sender.currentTitle];
    else{
        self.display.text=sender.currentTitle;
        self.userIsInTheMiddleOfEnteringANumber=YES;
    }
}

- (IBAction)operationPressed:(UIButton *)sender {
    if(self.userIsInTheMiddleOfEnteringANumber)
        [self enterPressed];
    double result=[self.brain performOperaton:sender.currentTitle];
    NSString *resultString=[NSString stringWithFormat:@"%g",result];
    self.display.text=resultString;
}

- (IBAction)enterPressed {
    [self.brain pushOperand:[self.display.text doubleValue]];
    self.userIsInTheMiddleOfEnteringANumber=NO;
}
 

@end
