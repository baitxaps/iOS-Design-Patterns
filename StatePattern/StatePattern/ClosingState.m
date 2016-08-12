//
//  ClosingState.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ClosingState.h"
#import "Context.h"
#import "OpenningState.h"
#import "RunningState.h"
#import "StoppingState.h"

@implementation ClosingState

// 电梯门关了再打开
- (void)open {
    // 状态修改===>敞门状态
    [self.context setLiftState:self.context.openningState];
    
    // 动作委托为CloseState来执行
    [self.context.liftState open];
}

// 电梯门关闭，这是关闭态要实现的动作
- (void)close{
    NSLog(@"电梯门关闭");
}

// 电梯门关了就运行，这是再正常不过了
- (void)run{
    
    [self.context setLiftState:self.context.runningState];
    
    [self.context.liftState run];
}

// 电梯门关着，我就不按楼层
- (void)stop{

    [self.context setLiftState:self.context.stoppingState];

    [self.context.liftState stop];
}

@end
