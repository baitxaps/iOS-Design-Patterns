//
//  ConcreteState2.m
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteState2.h"

@implementation ConcreteState2

-(void)handle1 {    
    // 设置当前状态为stat1
    self.context.currentState = self.context.state1;
    // 过渡到state1状态,由Context实现
    [self.context handle1];
}

-(void)handle2 {
    // 本状态下必须处理的逻辑
     NSLog(@"%s",__func__);
}


@end
