//
//  CalculatorBrain.h
//  Calculator
//
//  Created by 李宇杰 on 13-8-8.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject

@property(readonly) id program;
-(void)pushOperand:(double)operand;
-(double)performOperaton:(NSString *)operation;

@end
