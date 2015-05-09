//
//  main.m
//  Dictionary
//
//  Created by 李宇杰 on 13-8-6.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

void dicreat(){
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:
                       @"v1",@"k1",
                       @"v2",@"k2",
                       @"v3",@"k3",
                       nil];
    NSLog(@"%@",dic);
    NSLog(@"%zi",dic.count);
    id obj=[dic objectForKey:@"k2"];
    NSLog(@"%@",obj);
}

void dicuse(){
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:
                       @"v1",@"k1",
                       @"v2",@"k2",
                       @"v3",@"k3",
                       nil];
//    NSString *path=@"/Users/Rydge/Desktop/dict.xml";
//    [dic writeToFile:path atomically:YES];
    NSArray *arr=[dic objectsForKeys:[NSArray arrayWithObjects:@"k1",@"k3",@"k4", nil] notFoundMarker:@"notFound"];//当key找不到对应的Value时，用notFoundMarker代替
    NSLog(@"%@",arr);
}

#pragma mark 字典便利1
void dicFor(){
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:
                       @"v1",@"k1",
                       @"v2",@"k2",
                       @"v3",@"k3",
                       nil];
    for(id key in dic){
        NSLog(@"%@-%@",key,[dic objectForKey:key]);
    }
}
#pragma mark 字典便利2
void dicFor2(){//迭代器便利
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:
                       @"v1",@"k1",
                       @"v2",@"k2",
                       @"v3",@"k3",
                       nil];
    NSEnumerator *en=[dic keyEnumerator];
    id key=nil;
    while (key=[en nextObject]) {
        NSLog(@"%@-%@",key,[dic objectForKey:key]);
    }
}
#pragma mark 字典便利3
void dicFor3(){//使用block便利
    NSDictionary *dic=[NSDictionary dictionaryWithObjectsAndKeys:
                       @"v1",@"k1",
                       @"v2",@"k2",
                       @"v3",@"k3",
                       nil];
    [dic enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSLog(@"%@-%@",key,[dic objectForKey:key]);
    }];
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        NSDictionary *dic=[NSDictionary dictionaryWithObject:@"v" forKey:@"k"];
//        NSLog(@"%@",dic);
        
//        dicreat();
//        dicuse();
        dicFor3();
    }
    return 0;
}

