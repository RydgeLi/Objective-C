//
//  Student.m
//  构造方法
//
//  Created by Rydge Lee on 13-7-30.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)setAge:(int)age{
    _age=age;
}

-(int)age{
    return _age;
}

-(void)setNo:(int)no{
    _no=no;
}

-(int)no{
    return _no;
}

//重写类构造函数
-(Student *)initWithAge:(int)age andNo:(int)no{//Stuednt *也可以用id替代，表示任何类型
    if(self=[super init]){
       _age=age;
       _no=no;
    }
    return self;
}

//重写父类函数，输出整个类，它默认输出类对象的地址
-(NSString *)description{
    NSString *str=[NSString stringWithFormat:@"age is %i and no is %i",_age,_no];
    //return @"已调用description";
    return str;
}
@end
