//
//  Button.h
//  Protocol
//
//  Created by 李宇杰 on 13-8-2.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Button;

//按钮监听器协议
@protocol ButtonDelegate <NSObject>

-(void)onClick:(Button *)btn;

@end

@interface Button : NSObject
//按钮监听器
@property(nonatomic,retain)id <ButtonDelegate>listener;
//模拟点击
-(void)click;

@end
