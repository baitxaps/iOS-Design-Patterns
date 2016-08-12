//
//  ConcreteFlyweight2.m
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteFlyweight2.h"

@implementation ConcreteFlyweight2

// 接受外部状态
- (instancetype)initWihtExtrinsic:(NSString *)extrinsic {
    if (self = [super initWihtExtrinsic:extrinsic]) {
        
    }
    return self;
}

// 根据外部状态进行逻辑处理
- (void)operate {
    NSLog(@"%s",__func__);
}


@end
