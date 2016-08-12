//
//  Decoratro.m
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RHCDecorator.h"

@interface RHCDecorator ()
@property (nonatomic,strong)id<Component>component;
@end

@implementation RHCDecorator

- (instancetype)initWithDecorator:(id<Component>)compoent {
    if (self = [super init]) {
        _component = compoent;
    }
    return self;
}

- (void)operate {
    [self.component operate];
}

@end
