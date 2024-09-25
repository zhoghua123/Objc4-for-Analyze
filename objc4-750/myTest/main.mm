//
//  main.m
//  myTest
//
//  Created by mac on 2019/5/13.
//
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import <Foundation/Foundation.h>
#import "Person.h"

//测试示例对象的内存大小
void test1(){
    NSObject *obj = [[NSObject alloc] init];
    
    //获得NSObject实例对象的成员变量所占用的大小 >> 8
    NSLog(@"%zd", class_getInstanceSize([NSObject class]));
    
    //获得obj指针所指向内存的大小 >> 16
    //malloc_size(const void *ptr):Returns size of given ptr
    NSLog(@"%zd", malloc_size((__bridge const void *)obj));
}

int test(){
    int a = 10;
    int b = 20;
    return a+b;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test();
        Person *pInstance = [[Person alloc] init];
        Class classp = [Person class];
        Class metaClassP = object_getClass(classp);
        NSLog(@"=====%p=====%p=====%p==",pInstance,classp,metaClassP);
//        [pInstance performSelector:<#(nonnull SEL)#> withObject:<#(nullable id)#> afterDelay:<#(NSTimeInterval)#>]
        
    }
    return 0;
}
