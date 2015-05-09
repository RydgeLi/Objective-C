//
//  main.m
//  Protocol
//
//  Created by 李宇杰 on 13-8-2.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"
#import "Listener.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Button *button= [[[Button alloc]init]autorelease];
        Listener *listener=[[[Listener alloc]init]autorelease];
        button.listener=listener;
        [button click];
        
    }
    return 0;
}

