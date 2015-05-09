//
//  Student.m
//  property参数
//
//  Created by 李宇杰 on 13-8-1.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Student.h"
#import "Book.h"
@implementation Student
-(void)dealloc{
    [_book release];
    NSLog(@"学生被销毁了");
    [super dealloc];
}
@end
