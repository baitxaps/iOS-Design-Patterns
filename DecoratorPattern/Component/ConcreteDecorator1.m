//
//  ConcreteDecoratorl.m
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteDecorator1.h"

@implementation ConcreteDecorator1

- (instancetype)initWithDecoratorl:(id<Component>)compoent {
    if (self = [super initWithDecorator:compoent]) {
        
    }
    return self;
}

- (void)method1 {
    NSLog(@"method1 修饰");
}

- (void)operate {
    [self method1];
    [super operate];
}

@end
