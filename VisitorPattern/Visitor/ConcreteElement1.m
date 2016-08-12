//
//  ConcreteElement1.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteElement1.h"
#import "RHCIVistor.h"

@implementation ConcreteElement1

- (void)doSometing {
    // 业务处理
    NSLog(@"%s",__func__);
}

- (void)accept:(id<RHCIVistor>)visitor {
    [visitor visit:self];
}

@end
