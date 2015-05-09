//
//  Student.m
//  第一个OC程序
//
//  Created by Rydge Lee on 13-7-30.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Student.h"

@implementation Student
- (int) age{
    
    NSLog(@"调用了getage函数");
    return age;
}

-(int) no{
    NSLog(@"调用了getno函数");
    return no;
}

- (void)SetAge:(int)NewAge{
    age=NewAge;
}

-(void)SetAge:(int)NewAge andno:(int)NewNo{
    age=NewAge;
    no=NewNo;
}
@end
