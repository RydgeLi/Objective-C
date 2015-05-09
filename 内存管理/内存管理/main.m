//
//  main.m
//  内存管理
//
//  Created by 李宇杰 on 13-7-31.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Student.h"

void test(Student *stu){
    Book *book1= [[Book alloc]initwithprice:4.5];//book1:1
    stu.book=book1;//book1:2
    Book *book2= [[Book alloc]initwithprice:8.5];//book2:1
    stu.book=book2;//book1:1;book2:2
    [book1 release];//book1:0
    [book2 release];//book2:1
}

void test1(Student *stu){
    NSLog(@"price=%f",stu.book.price);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *stu=[[Student alloc]init];
        //Book *book=[[Book alloc]initwithprice:3.5];
        //[book release];
        test(stu);
        test1(stu);
        [stu release];//book2:0
    }
    return 0;
}

