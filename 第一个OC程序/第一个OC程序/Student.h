//
//  Student.h
//  第一个OC程序
//
//  Created by Rydge Lee on 13-7-30.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    int age;
    int no;
}
- (int) age;
- (int) no;
- (void)SetAge:(int)NewAge;

-(void)SetAge:(int)NewAge andno:(int)NewNo;
@end
