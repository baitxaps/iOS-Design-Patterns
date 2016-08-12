//
//  Facade.m
//  FacadePattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Facade.h"
#import "RHCClassA.h"
#import "RHCClassB.h"
#import "Context.h"

@interface Facade ()
@property (nonatomic,strong)RHCClassA *a;
@property (nonatomic,strong)RHCClassB *b;
@property (nonatomic,strong)Context *context;
@end

@implementation Facade

- (instancetype)init {
    if (self = [super init]) {
        _a = [RHCClassA new];
        _b = [RHCClassB new];
        _context = [Context new];
    }
    return self;
}

- (void)mathodA {
    [self.a doSomethingA];
}


- (void)mathodB {
    [self.b doSomethingB];
}

- (void)mathodC {
    [self.context complexMethod];
}

@end
