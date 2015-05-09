//
//  Book.m
//  property参数
//
//  Created by 李宇杰 on 13-8-1.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Book.h"

@implementation Book
- (void)dealloc
{
    NSLog(@"Book被销毁了");
    [super dealloc];
}
@end
