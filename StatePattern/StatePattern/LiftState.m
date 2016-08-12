//
//  LiftState.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "LiftState.h"
#import "Context.h"

@interface LiftState ()

@end

@implementation LiftState

- (void)open{}
- (void)close{}
- (void)run{}
- (void)stop{}

- (void)setContext:(Context *)context {
    _context = context;
}
@end
