//
//  main.m
//  myTest
//
//  Created by mac on 2019/5/13.
//
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSObject *obj = [[NSObject alloc] init];
        
        //获得NSObject实例对象的成员变量所占用的大小 >> 8
        NSLog(@"%zd", class_getInstanceSize([NSObject class]));
        
        //获得obj指针所指向内存的大小 >> 16
        //malloc_size(const void *ptr):Returns size of given ptr
        NSLog(@"%zd", malloc_size((__bridge const void *)obj));
    }
    return 0;
}
