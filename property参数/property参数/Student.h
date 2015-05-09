//
//  Student.h
//  property参数
//
//  Created by 李宇杰 on 13-8-1.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;
@interface Student : NSObject
@property (nonatomic) int age;
@property (nonatomic,retain)Book *book;
@end
