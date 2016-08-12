//
//  Context.m
//  StrategyPattern
//
//  Created by hairong chen on 16/7/31.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Context.h"


@interface Context ()
@property (nonatomic,strong)id<IStrategy>strategy;
@end

@implementation Context

- (instancetype)initWithStrategy:(id<IStrategy>)strategy {
    if (self = [super init]) {
        _strategy = strategy;
    }
    return self;
}

- (void)operate {
    [self.strategy operate];
}

@end
