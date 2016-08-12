//
//  StoppingState.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "StoppingState.h"
#import "OpenningState.h"
#import "RunningState.h"
#import "Context.h" 

@implementation StoppingState

// 停止状态，开门，那是要的
- (void)open {
    // 状态修改===>停止状态
    [self.context setLiftState:self.context.openningState];
    
    // 动作委托为CloseState来执行
    [self.context.liftState open];
}

// 停止状态关门？电梯门本来就是关着的
- (void)close{
   // do nothing
}

// 停止状态再运行起来，正常得很
- (void)run{
    // 状态修改===>停止状态
    [self.context setLiftState:self.context.runningState];
    
    // 动作委托为CloseState来执行
    [self.context.liftState run];
}

// 停止状态是怎么发生的呢？当然是停止方法执行了
- (void)stop{
    NSLog(@"电梯停止了...");
}

@end
