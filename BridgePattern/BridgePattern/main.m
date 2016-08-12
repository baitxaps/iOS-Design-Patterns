//
//  main.m
//  BridgePattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HouseCorp.h"
#import "ClothesCorp.h"
#import "House.h"
#import "IPod.h"
#import "ConcreteImplementor1.h"
#import "RefinedAbstraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1
        House *house = [House new];
        Corp *houseCorp = [[HouseCorp alloc]initWithProduce:house];
        [houseCorp makeMoney];
        
        Corp *clothesCorp = [[ClothesCorp alloc]initWithProduce:[IPod new]];
        [clothesCorp makeMoney];
        
        // 2
        // 定义一个实现化角色
        id<Implementor>imp = [ConcreteImplementor1 new];
        // 定义一个抽象化角色
        Abstraction *abs = [[RefinedAbstraction alloc]initWithImplementor:imp];
        // 执行行文
        [abs request];
        
    }
    return 0;
}
