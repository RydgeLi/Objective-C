//
//  Listener.m
//  Protocol
//
//  Created by 李宇杰 on 13-8-2.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Listener.h"
#import "Button.h"
@implementation Listener

-(void)onClick:(Button *)btn{
    NSLog(@"按钮-%@被点击了",btn);
}

@end
