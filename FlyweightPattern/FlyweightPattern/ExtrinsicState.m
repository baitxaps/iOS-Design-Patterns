//
//  ExtrinsicState.m
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ExtrinsicState.h"

@implementation ExtrinsicState

- (BOOL)objEquals:(id)obj {
    if ([obj isKindOfClass:[self class]]) {
        ExtrinsicState *state = (ExtrinsicState*)obj;
        
        return [state.location isEqualToString:self.location] && [state.subject isEqualToString:self.subject];
    }
    return NO;
}

- (id)copyWithZone:(nullable NSZone *)zone {
    ExtrinsicState *state = [[self class] allocWithZone:zone];
    state.subject = self.subject;
    state.location = self.location;
    
    return state;
}

@end
