//
//  main.c
//  C语言程序测试
//
//  Created by Rydge Lee on 13-7-26.
//  Copyright (c) 2013年 Rydge Lee. All rights reserved.
//

#include <stdio.h>
#include <string.h>

void test(){
    int len=strlen("lyj");
    printf("%d",len);
}
int main(int argc, const char * argv[])
{
    /*char a[]="liyujie";
    printf("%s\n",a);
    puts("ios");
    puts(a);
    return 0;
    char b[10];
    char c[10];
    scanf("%s %s",b,c);
    printf("输入的字符串b为：%s\n",b);
    printf("输入的字符串c为：%s\n",c);
     */
    //test();
    char s[]="lyj";
    printf("%d",strlen(s));
}

