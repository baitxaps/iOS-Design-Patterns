//
//  RefinedAbstraction.m
//  BridgePattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RefinedAbstraction.h"
#import "Implementor.h"

@implementation RefinedAbstraction

- (instancetype)initWithImplementor:(id<Implementor>)imp {
    if (self = [super initWithImplementor:imp]) {
       
    }
    return self;
}

+ (instancetype)initWithImplementor:(id<Implementor>)imp {
    return [self initWithImplementor:imp];
}

- (void)request {
    // 业务处理...
    [super request];
    [[super imp] doAnything];
}

@end
