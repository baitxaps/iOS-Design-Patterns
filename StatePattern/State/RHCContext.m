//
//  RHCContext.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RHCContext.h"
#import "ConcreteState1.h"
#import "ConcreteState2.h"

@implementation RHCContext

- (instancetype)init {
    if (self = [super init]) {
        _state1 = [ConcreteState1 new];
        _state2 = [ConcreteState2 new];
    }
    return self;
}

-(void)handle1 {
    [self.currentState handle1];
}

-(void)handle2 {
      [self.currentState handle2];
}


@end
