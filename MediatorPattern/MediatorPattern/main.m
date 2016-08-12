//
//  main.m
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/20.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediatorPatternHeader.h"
#import "Mediator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AbstractMediator *mediator = [[Mediator alloc ]init];
        // 采购人员采购电脑
        Purchase *purchase = [[Purchase alloc]initWihtMediator:mediator];
        [purchase buyIBMcomputer:100];
        
        // 销售人员销售电脑
        Sale *sale = [[Sale alloc]initWihtMediator:mediator];
        [sale sellIBMComputer:1];
        
        // 库房管理人员管理库存
        Stock *stock = [[Stock alloc]initWihtMediator:mediator];
        [stock clearStock];
        
        /*
        Purchase *purchase = [Purchase new];
        [purchase buyIBMcomputer :100];
        
        Sale *sale = [Sale new];
        [sale sellIBMComputer:1];
        
        Stock *stock = [Stock new];
        [stock clearStock];
         */
    }
    return 0;
}
