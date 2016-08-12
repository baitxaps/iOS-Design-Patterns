//
//  Employee.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (void)report {
    NSString *info = [NSString stringWithFormat:@"姓名:%@\t性别:%@\t薪水:%ld\t",self.name, (self.sex == FEMALE ?@"女":@"男"),self.salary];
    
    info = [NSString stringWithFormat:@"%@%@",info, [self otherInfo]];
    
    NSLog(@"%@",info);
}


- (NSString *)otherInfo {
    return nil;
}


- (void)accept:(id<IVisitor>)visitor {
    
}

@end
