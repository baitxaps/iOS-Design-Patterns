//
//  main.m
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HanFeiZi.h"
#import "LiSi.h"
#import "WangSi.h"
#import "LiuSi.h"
#import "ConcreteSubject.h"
#import "ConcreteObserver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 三个观察者
        id<Observer>lisi = [LiSi new];
        id<Observer>wangsi = [WangSi new];
        id<Observer>liusi = [LiuSi new];
        // 定义出韩非子
        HanFeiZi *hanFeiZi = [HanFeiZi new];
        [hanFeiZi addObserver:lisi];
        [hanFeiZi addObserver:wangsi];
        [hanFeiZi addObserver:liusi];
        // 然后看韩非子在干什么
        [hanFeiZi haveBreakfast];
        
        
        // 2
        // 定义一个被观察者
        ConcreteSubject *subject = [ConcreteSubject new];
        // 定义一个观察者
        id<Observer>obs = [ConcreteObserver new];
        [subject addObserver:obs];
        // 观察者开始活动了
        [subject doSomething];
   
    }
    return 0;
}
