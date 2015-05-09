//
//  main.m
//  构造方法
//
//  Created by Rydge Lee on 13-7-30.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
void test(){
   // char *s="liyujie";//C语言字符串
    //NSString *s=@"liyujie";//OC字符串
}
int main(int argc, const char * argv[])
{

    @autoreleasepool {
    Student *stu=[[Student alloc]initWithAge:20 andNo:11123071];
        Student *s=[Student new];//相当于 Student *s=[[Student alloc]init];这种方法不推荐。。
        NSLog(@"age= %i",stu.age);
        //%@代表打印oc对象
        stu.age=11;
        NSLog(@"%@",stu);
        [stu release];
        [s release];
    }
    return 0;
}

