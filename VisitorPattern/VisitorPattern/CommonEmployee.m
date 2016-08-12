//
//  CommonEmployee.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "CommonEmployee.h"

@implementation CommonEmployee

- (NSString *)otherInfo {
    return [NSString stringWithFormat:@"工作:%@\t",self.job];
}

- (void)accept:(id<IVisitor>)visitor {
    [visitor visit:self];
}

@end
