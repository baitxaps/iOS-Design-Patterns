//
//  TotalVisitor.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//


#import "TotalVisitor.h"
#import "CommonEmployee.h"
#import "Manager.h"

@interface TotalVisitor ()
@property (nonatomic,assign)NSInteger commonTotalSalary;
@property (nonatomic,assign)NSInteger managerTotalSalary;
@end

@implementation TotalVisitor

- (void)visit:(Employee *)employee {
    
    if ([employee isMemberOfClass:[CommonEmployee class]]) { // 访问普通员工，打印出报表
    
        [self calCommonSalary:employee.salary];
        
    } else if ([employee isMemberOfClass:[Manager class]]) {  // 访问部门经理，打印出报表

        [self calManagerSalary:employee.salary];
    }
}

/**
 *  统计功能访问者模式
 */
static NSInteger MANAGER_COEFFICIENT = 5; // 部门经理的工资系数是5
static NSInteger COMMONEMPLOYEE_COEFFICIENT = 2;// 员工的工资系数是2

// 计算部门经理的工资总和
- (void)calManagerSalary:(NSInteger)salary {
    self.managerTotalSalary = self.managerTotalSalary +salary*MANAGER_COEFFICIENT;
}

// 计算普通员工的工资总和
- (void)calCommonSalary:(NSInteger)salary {
    self.commonTotalSalary = self.commonTotalSalary +salary*COMMONEMPLOYEE_COEFFICIENT;
}

// 获得所有员式的工资总和
- (NSInteger)totoalSalary {
    NSInteger sum = self.commonTotalSalary + self.managerTotalSalary;
     NSLog(@"本公司的月工资总额是:%ld",sum);
    return sum;
}
@end
