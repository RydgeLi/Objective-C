//
//  Student.h
//  构造方法
//
//  Created by Rydge Lee on 13-7-30.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    int _age;
    int _no;
}

-(void)setAge:(int)age;
-(int)age;
-(void)setNo:(int)no;
-(int)no;
//自己写一个构造方法
-(id)initWithAge:(int)age andNo:(int)no;
@end
