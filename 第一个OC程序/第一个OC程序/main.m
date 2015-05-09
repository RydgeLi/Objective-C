//
//  main.m
//  第一个OC程序
//
//  Created by Rydge Lee on 13-7-30.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

void test1()
{
    //创建对象
    //1.申请空间
    //Student *stu=[Student alloc];
    //2.初始化
    //stu=[stu init];
    //以后直接用下面的形式：
    Student *stu=[[Student alloc]init];
    [stu SetAge:13];
    NSLog(@"age = %i",[stu age]);
    [stu SetAge:100 andno:10];
    NSLog(@"age = %i,no = %i",[stu age],[stu no]);
    //释放对象
    [stu release];
}

void test2(){
    Student *stu=[[Student alloc]init];
    [stu SetAge:20 andno:11123071];
    //NSLog(@"年龄是%i,学号是%i",[stu age],[stu no]);
    //点语法，直接调用get和set函数
    NSLog(@"年龄是%i,学号是%i",stu.age,stu.no);
    [stu release];
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        test2();
    }
    return 0;
}

