//
//  Purchase.m
//  MediatorPattern
//
//  Created by hairong.chen on 16/7/20.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//


#import "MediatorPatternHeader.h"

@implementation Purchase

- (instancetype)initWihtMediator:(AbstractMediator *)media {
    if (self = [super initWihtMediator:media]) {
        
    }
    return self;
}

- (void)buyIBMcomputer:(NSInteger)number {
    
    [super.mediator execute:@"purchase.buy" object:number];
  
    /*
    // 访问库存
    Stock *stock = [Stock new];
    
    // 访问销售
    
    Sale *sale = [Sale new];
    
    // 电脑销售情况
    NSInteger saleStatus = [sale getSaleStatus ];
    
    if (saleStatus > 80) {
        NSLog(@"采购IBM电脑:%ld台",number);
        [stock increase:number];
    } else {
        NSInteger buyNumber = number / 2; // 折半采购
        NSLog(@"采购IBM电脑:%ld台",buyNumber);
    }
     */
}

// 不再采购IBM电脑
- (void)refuseBuyIBM {
    NSLog(@"不再采购IBM电脑");
}
@end
