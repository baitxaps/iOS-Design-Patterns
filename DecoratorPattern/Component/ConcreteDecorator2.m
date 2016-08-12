//
//  ConcreteDecorator2.m
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteDecorator2.h"

@implementation ConcreteDecorator2

- (instancetype)initWithDecoratorl:(id<Component>)compoent {
    if (self = [super initWithDecorator:compoent]) {
        
    }
    return self;
}


- (void)method2 {
    NSLog(@"method2 修饰");
}

- (void)operate {
    [self method2];
    [super operate];
}

@end
