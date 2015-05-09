//
//  Student.m
//  内存管理
//
//  Created by 李宇杰 on 13-7-31.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)dealloc{
    [_book release];
    NSLog(@"学生被销毁");
    [super dealloc];
}

//以下为分组注释
#pragma mark - setter和getter

#pragma mark setBook
-(void) setBook:(Book *)book{
    if(book!=_book)
    {
        [_book release];
        _book=[book retain];
    }
}

#pragma mark getBook
-(Book *)book{
    return _book;
}

@end
