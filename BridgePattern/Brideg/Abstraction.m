//
//  Abstraction.m
//  BridgePattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Abstraction.h"
#import "Implementor.h"

@interface Abstraction ()
@property (nonatomic,strong)id <Implementor>imp;
@end

@implementation Abstraction

- (instancetype)initWithImplementor:(id<Implementor>)imp {
    if (self = [super init]) {
        self.imp = imp;
    }
    return self;
}

+ (instancetype)initWithImplementor:(id<Implementor>)imp {
    return [self initWithImplementor:imp];
}


- (void)request {
    [self.imp doSomething];
}

- (id<Implementor>)imp {
    return _imp;
}

@end
