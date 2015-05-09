//
//  Student.m
//  Foundation
//
//  Created by 李宇杰 on 13-8-6.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)dealloc
{
    NSLog(@"学生被销毁");
    [super dealloc];
}
+(id)studentWithAge:(int)age{
    Student *stu=[[Student alloc]init];
    stu.age=age;
    return stu;
}
- (NSString*)description{
    return [NSString stringWithFormat:@"age=%i",_age];
}

@end
