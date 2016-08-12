//
//  Context.m
//  FacadePattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Context.h"
#import "RHCClassC.h"
#import "RHCClassB.h"
#import "RHCClassA.h"

@interface Context ()
@property (nonatomic,strong)RHCClassA *a;
@property (nonatomic,strong)RHCClassC *c;
@end

@implementation Context

- (instancetype)init {
    if (self = [super init]) {
        _a = [RHCClassA new];
        _c = [RHCClassC new];
    }
    return self;
}


- (void)complexMethod {
    [self.a doSomethingA];
    [self.c doSomethingC];
}

@end
