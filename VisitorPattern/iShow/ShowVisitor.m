//
//  ShowVisitor.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ShowVisitor.h"
#import "Manager.h"
#import "CommonEmployee.h"

@interface ShowVisitor ()
@property (nonatomic,strong)NSString *info;
@end

@implementation ShowVisitor

- (instancetype)init {
    if (self = [super init]) {
        self.info = @"";
    }
    return self;
}

- (void)report {
    NSLog(@"%@",self.info);
}

- (void)visit:(Employee *)employee {
    
    if ([employee isMemberOfClass:[CommonEmployee class]]) { // 访问普通员工，打印出报表
        self.info = [NSString stringWithFormat:@"%@%@工作:%@\t",self.info,[self basicInfo:employee],((CommonEmployee *) employee).job];
        
    } else if ([employee isMemberOfClass:[Manager class]]) {  // 访问部门经理，打印出报表
          self.info = [NSString stringWithFormat:@"%@%@业绩:%@\t",self.info,[self basicInfo:employee],((Manager *) employee).performance];
    }
}

// 组装出基本信息
- (NSString *)basicInfo:(Employee *)employee {
    NSString *info = [NSString stringWithFormat:@"姓名:%@\t性别:%@\t薪水:%ld\t",employee.name, (employee.sex == FEMALE ?@"女":@"男"),employee.salary];
    return info;
}


- (NSInteger)totoalSalary {
    return  0;
}

@end
