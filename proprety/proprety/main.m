//
//  main.m
//  proprety
//
//  Created by 李宇杰 on 13-7-30.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *stu=[[Student alloc]init];
        stu.age=11;
        NSLog(@"age=%i",stu.age);
        [stu release];
    }
    return 0;
}

