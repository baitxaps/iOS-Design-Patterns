//
//  RequirementGroup.m
//  CommandPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RequirementGroup.h"

@implementation RequirementGroup
- (void)find {
    NSLog(@"找到需求组...");
}

- (void)add {
  NSLog(@"客户要求增加一项需求...");
}

- (void)deleted {
    NSLog(@"客户要求删除一项需求...");
}

- (void)change {
    NSLog(@"客户要求修改一项需求...");
}

- (void)plan {
    NSLog(@"客户要求需求变更计划...");
}

@end
