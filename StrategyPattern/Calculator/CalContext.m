//
//  CalContext.m
//  StrategyPattern
//
//  Created by hairong chen on 16/7/31.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "CalContext.h"

@interface CalContext ()
@property (nonatomic,strong)id <Calculator>calculator;
@end

@implementation CalContext

- (instancetype)initWithCalculator:(id<Calculator>)calculator {
    if (self = [super init]) {
        _calculator = calculator;
    }
    return self;
}

- (NSInteger)exec:(NSInteger)a b:(NSInteger)b {
    return [self.calculator exec:a b:b];
}
@end
