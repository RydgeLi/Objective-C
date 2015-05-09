//
//  Student.h
//  内存管理
//
//  Created by 李宇杰 on 13-7-31.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
@interface Student : NSObject{
    int _age;
    Book *_book;
}
@property int age;
@property Book *book;
@end
