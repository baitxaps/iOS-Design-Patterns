//
//  RHCContext.m
//  StrategyPattern
//
//  Created by hairong chen on 16/7/31.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RHCContext.h"

@interface RHCContext ()
@property (nonatomic,strong)id<Strategy>strategy;
@end

@implementation RHCContext

- (instancetype)initWithStrategy:(id<Strategy>)strategy {
    if (self = [super init]) {
        _strategy = strategy;
    }
    return self;
}

- (void)doAnything {
    [self.strategy doSomething];
}

@end
