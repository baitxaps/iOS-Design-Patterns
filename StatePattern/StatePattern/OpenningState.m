//
//  OpenningState.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "OpenningState.h"
#import "Context.h"
#import "ClosingState.h"

@implementation OpenningState

// 打开电梯门
- (void)open{
    NSLog(@"电梯门开启...");
}

// 开启当然可以关闭了，我就想测试一下电梯门开关功能
- (void)close{
    // 状态修改
    [self.context setLiftState:self.context.closingState];
    
    // 动作委托为CloseState来执行
    [self.context.liftState close];
}

// 门开着时电梯就运行跑，这电梯，吓死你！
- (void)run{
   // do nothing
}

// 开门还不停止
- (void)stop{
    // do nothing
}

@end
