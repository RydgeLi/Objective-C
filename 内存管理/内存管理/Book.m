//
//  Book.m
//  内存管理
//
//  Created by 李宇杰 on 13-7-31.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Book.h"

@implementation Book

#pragma mark 自定义销毁
-(void)dealloc{
    NSLog(@"价格为:%f的书被销毁",_price);
    [super dealloc];
}

#pragma mark 带参数的初始化
-(id)initwithprice:(float)price{
    if(self=[super init])
        _price=price;
    return self;
}

@end
