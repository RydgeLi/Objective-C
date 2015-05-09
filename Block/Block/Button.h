//
//  Button.h
//  Block
//
//  Created by 李宇杰 on 13-8-2.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Button;
typedef void (^ButtonListener)(Button *);
@interface Button : NSObject

@property(nonatomic,assign) ButtonListener listener;
-(void)click;
@end
