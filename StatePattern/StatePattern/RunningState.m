//
//  RunningState.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RunningState.h"
#import "Context.h"
#import "StoppingState.h"

@implementation RunningState

// 运行的时候开电梯门？你疯了！电梯不会给你开的
- (void)open {
    // do nothing
}

// 电梯门关闭，这是肯定的
- (void)close{
    // do nothing
}


- (void)run{
    NSLog(@"电梯上下运行....");
}

// 这绝对是合理的，只运行不停止还有谁敢坐这个电梯?估计只有上帝了
- (void)stop{
    // 状态修改===>停止状态
    [self.context setLiftState:self.context.stoppingState];
    
    // 动作委托为CloseState来执行
    [self.context.liftState stop];
}


@end
