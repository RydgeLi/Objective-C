//
//  Button.m
//  Block
//
//  Created by 李宇杰 on 13-8-2.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Button.h"

@implementation Button
-(void)click{
    _listener(self);
}
@end
