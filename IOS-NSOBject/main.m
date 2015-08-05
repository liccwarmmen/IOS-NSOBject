//
//  main.m
//  IOS-NSOBject
//
//  Created by lcc on 15-7-22.
//  Copyright (c) 2015年 lcc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //isEqualTo 判断两个指针地址是否相同
        NSObject *obj1 = [[NSObject alloc] init];
        NSObject *obj2 = [[NSObject alloc] init];
        
        if (![obj1 isEqualTo:obj2]) {
            NSLog(@"不是同一个对象");
        }
        if (obj1 != obj2) {
            NSLog(@"不是同一个对象");
        }
        
        
        //——————————————————————演示perform的使用————————————————————————————
//        Person *p = [[Person alloc] init];
//        [p invoke];
        
        //    [p demo1];
        //    [p performSelector:@selector(demo1)];
        
        
        //——————————————————————isKindofClass和isMemberOfClass————————————————————————————
//        Person *rose = [[Person alloc] init];
        
        //1.isMemberOfClass  判断对象是否是某一个类创建的
//        //    BOOL ret = [rose isMemberOfClass:[Person class]];
//        if ([rose isMemberOfClass:[Person class]]) {
//            NSLog(@"rose 是 Person类创建的");
//        }
//        
//        if ([rose isMemberOfClass:[NSObject class]]) {
//            NSLog(@"rose 是 Person类创建的");
//        }
//        
//        //2.isKindOfClass 判断对象是否为某一个类或者子类创建的
//        if([rose isKindOfClass:[Person class]]) {
//            NSLog(@"rose 是 Person类创建的 或者 Person 子类创建的");
//        }
//        
//        if([rose isKindOfClass:[NSObject class]]) {
//            NSLog(@"rose 是 NSObject类创建的 或者 NSObject 子类创建的");
        }
        
        //——————————————————respondsToSelector————————————————————————
        
        Person *jack = [[Person alloc] init];
        if([jack respondsToSelector:@selector(invoke)]) {
            NSLog(@"Person 类有 invoke方法");
        }
        
        if([jack respondsToSelector:@selector(demo1)]) {
            NSLog(@"Person 类有 isKindOfClass:方法");
        }
        
        //从父类继承下来的方法isKindOfClass
        if([jack respondsToSelector:@selector(isKindOfClass:)]) {
            NSLog(@"Person 类有 isKindOfClass:方法");
        }
        
        
        
        if([jack respondsToSelector:@selector(demo1)]) {
            //        [jack demo1];
            [jack performSelector:@selector(demo1)];
        }
        
        //    [jack performSelector:@selector(demo1)];
        
        
        
        //简单理解：一下代码让执行过程停在此处
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
