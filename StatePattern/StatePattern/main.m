//
//  main.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Context.h"
#import "ClosingState.h"
#import "RHCContext.h"
#import "ConcreteState1.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Context *context = [Context new];
        [context setLiftState:[ClosingState new]];
        [context open];
        [context close];
        [context run];
        [context stop];
        
        RHCContext *ctx = [RHCContext new];
        ctx.currentState = [ConcreteState1 new];
        [ctx handle1];
        [ctx handle2];
    }
    return 0;
}
