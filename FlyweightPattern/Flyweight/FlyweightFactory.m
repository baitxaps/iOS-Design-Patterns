//
//  FlyweightFactory.m
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "FlyweightFactory.h"
#import "Flyweight.h"
#import "ConcreteFlyweight1.h"

@implementation FlyweightFactory

// 池容器
NSMutableDictionary <NSString *,Flyweight *> *pool ;

// 享元工厂
+ (Flyweight *)flyweightWithExtrinsic:(NSString *)extrinsic {
    Flyweight *flyweight = nil;
    
    if (!pool) pool = [NSMutableDictionary dictionary];

    if (pool[extrinsic]) {
        flyweight = pool[extrinsic];
    } else {
        // 根据外部状态创建享元对象
        flyweight = [[ConcreteFlyweight1 alloc]initWihtExtrinsic:extrinsic];
        // 放置到池中
        [pool setValue:flyweight forKey:extrinsic];
    }
    return flyweight;
}

@end
