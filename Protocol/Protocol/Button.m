//
//  Button.m
//  Protocol
//
//  Created by 李宇杰 on 13-8-2.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Button.h"

@implementation Button

- (void)dealloc
{
    [_listener release];
    [super dealloc];
}

-(void)click{
    if([_listener respondsToSelector:@selector(onClick:)])//判断对象是否实现该方法，保险起见
    [_listener onClick:self];
    else NSLog(@"监听器并没有实现onClick:方法");
}

@end
