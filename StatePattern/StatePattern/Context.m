//
//  Context.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Context.h"
#import "OpenningState.h"
#import "RunningState.h"
#import "ClosingState.h"
#import "StoppingState.h"

@implementation Context

- (instancetype)init {
    if (self = [super init]) {
        _openningState  = [OpenningState new];
        _closingState  = [ClosingState new];
        _runningState  = [RunningState new];
        _stoppingState  = [StoppingState new];
    }
    return self;
}

- (void)setLiftState:(LiftState *)liftState {
    _liftState = liftState;
    _liftState.context = self;
}

- (void)open{
    [self.liftState open];
}

- (void)close{
    [self.liftState close];
}

- (void)run{
    [self.liftState run];
}

- (void)stop{
    [self.liftState stop];
}

@end
