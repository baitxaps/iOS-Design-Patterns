//
//  main.m
//  StrategyPattern
//
//  Created by hairong chen on 16/7/31.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Context.h"
#import "BackDoor.h"
#import "BlockEnemh.h"
#import "GivenGreenLight.h"

#import "Strategy.h"
#import "RHCContext.h"
#import "ConcreteStrategy1.h"
#import "ConcreteStrategy2.h"

#import "CalContext.h"
#import "Add.h"
#import "Sub.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1. 拆第一个，拿到妙计
        Context *context = [[Context alloc]initWithStrategy:[BackDoor new]];
        // 拆开执行
        [context operate];
        
        //2. 刘备乐不思蜀了，拆第二个
        context = [[Context alloc]initWithStrategy:[GivenGreenLight new]];
         // 拆开执行第二个锦囊
        [context operate];
        
        //3. 孙权的小兵追来了，拆第三个
        context = [[Context alloc]initWithStrategy:[BlockEnemh new]];
        // 孙夫人退兵
        [context operate];
        
        // 4.
        id<Strategy>strategy = [ConcreteStrategy1 new];
        RHCContext *ctx = [[RHCContext alloc]initWithStrategy:strategy];
        [ctx doAnything];
        
        strategy = [ConcreteStrategy2 new];
        ctx = [[RHCContext alloc]initWithStrategy:strategy];
        [ctx doAnything];
        
        //5.
        NSInteger a = 1;
        NSInteger b = 2;
        CalContext *cCtx;
        if (a ==1) {
            cCtx = [[CalContext alloc]initWithCalculator:[Add new]];
        }
        else {
           cCtx = [[CalContext alloc]initWithCalculator:[Sub new]];
        }
        NSLog(@"%ld",[cCtx exec:a b:b]);
        
    }
    return 0;
}
