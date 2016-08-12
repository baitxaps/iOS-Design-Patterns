//
//  Manager.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (NSString *)otherInfo {
    return [NSString stringWithFormat:@"业绩:%@\t",self.performance];
}

- (void)accept:(id<IVisitor>)visitor {
    [visitor visit:self];
}

@end
