//
//  CalculatorBrain.m
//  Calculator
//
//  Created by 李宇杰 on 13-8-8.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "CalculatorBrain.h"
//声明私有成员
@interface CalculatorBrain()
@property(nonatomic,strong) NSMutableArray *operandStack;//可变数组作为栈
@end


@implementation CalculatorBrain
//自定义一个getter用来初始化
-(NSMutableArray *)operandStack{
    if(_operandStack==nil) _operandStack= [[NSMutableArray alloc]init];
    return _operandStack;
}

-(void)pushOperand:(double)operand{
    [self.operandStack addObject:[NSNumber numberWithDouble:operand]];
    
}
-(double)popOperand{
//    if(self.operandStack)
    NSNumber *operandObject=[self.operandStack lastObject]; 
    if(operandObject!=nil)
        [self.operandStack removeLastObject];
    return [operandObject doubleValue];
}

-(double)performOperaton:(NSString *)operation{
    double result=0;
    
 if([operation isEqualToString:@"+"])
     result=[self popOperand]+[self popOperand];
    else if ([operation isEqualToString:@"-"])
        result=
    return result;
}

@end
