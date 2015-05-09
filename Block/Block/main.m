//
//  main.m
//  Block
//
//  Created by 李宇杰 on 13-8-2.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"

//也可以用typedef定义block
typedef int (^mysum)(int,int);

//block使用方法1
void test(){
    //定义一个block
    int(^sum)(int,int)=^(int a,int b){
        return a+b;
    };
    NSLog(@"sum = %i",sum(11,22));
}

//block使用方法2：和typedef一起用
void test1(){
    //声明了一个block变量
    mysum m1=^(int a, int b){
        return a+b;
    };
    NSLog(@"m1=%i",m1(11,11));
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        //test1();
        Button *btn=[[[Button alloc]init]autorelease];
        btn.listener=^(Button *b){
            NSLog(@"按钮-%@被点击了",b);
        };
        [btn click];
    }
    
    return 0;
}

