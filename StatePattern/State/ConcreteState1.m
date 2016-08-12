//
//  ConcreteState1.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteState1.h"
#import "RHCContext.h"

@implementation ConcreteState1


-(void)handle1 {
   // 本状态下必须处理的逻辑
    NSLog(@"%s",__func__);
}

-(void)handle2 {
    // 设置当前状态为stat2
    self.context.currentState = self.context.state2;
    // 过渡到state2状态,由Context实现
    [self.context handle2];
}


@end
