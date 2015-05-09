//
//  main.m
//  Foundation
//
//  Created by 李宇杰 on 13-8-3.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

void test(NSString *str){
    str=@"456";
}

void test2(){
    NSMutableArray *array=[NSMutableArray array];
    Student *stu1=[Student studentWithAge:9];
    Student *stu2=[Student studentWithAge:10];
    //添加会自动为被添加对象执行一次retain操作
    [array addObject:stu1];
    [array addObject:stu2];
    NSLog(@"Stu信息为%@",array);
    //删除会自动为被删除对象执行一次release操作
    [array removeObject:stu1];
    NSLog(@"Stu信息为%@",array);
    
}
typedef struct {
    int year;
    int month;
    int day;
}Date;

void value(){
    Date date={2013,8,7};
    char *type=@encode(Date);
    //用value包装一个自定义结构体
    NSValue *value=[NSValue value:&date withObjCType:type];
    //接下来读取结构体
    Date value1;
    //getvalue无返回类型，要求传一个void *类型的指针
    [value getValue:&value1];
    NSLog(@"year=%i,month=%i,day=%i",value1.year,value1.month,value1.day);
    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
////        NSString *s=@"123";
////        //s=@"789";
////        test(s);
////        NSLog(@"s=%@",s);
//        NSString *str=@"123";
//        NSLog(@"str=%@",str);
        value();
    }
    return 0;
}

