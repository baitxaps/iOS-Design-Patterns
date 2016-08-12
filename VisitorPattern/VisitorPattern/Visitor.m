//
//  Visitor.m
//  VisitorPattern
//
//  Created by hairong chen on 16/8/9.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Visitor.h"
#import "Manager.h"
#import "CommonEmployee.h"

@interface Visitor ()
@property (nonatomic,assign)NSInteger commonTotalSalary ;
@property (nonatomic,assign)NSInteger managerTotalSalary ;
@end

@implementation Visitor

- (void)visit:(Employee *)employee {
    
    if ([employee isMemberOfClass:[CommonEmployee class]]) { // 访问普通员工，打印出报表
         NSLog(@"%@",[self commonEmployee:(CommonEmployee *)employee]);
        
        [self calCommonSalary:employee.salary];
       
    } else if ([employee isMemberOfClass:[Manager class]]) {  // 访问部门经理，打印出报表
           NSLog(@"%@",[self managerInfo:(Manager *)employee]);
        
           [self calManagerSalary:employee.salary];
    }
}

// 组装出基本信息
- (NSString *)basicInfo:(Employee *)employee {
    NSString *info = [NSString stringWithFormat:@"姓名:%@\t性别:%@\t薪水:%ld\t",employee.name, (employee.sex == FEMALE ?@"女":@"男"),employee.salary];
    return info;
}

// 组装出部门经理的信息
- (NSString *)managerInfo:(Manager *)manager {
    NSString *basicInfo = [self basicInfo:manager];
    NSString *otherInfo = [NSString stringWithFormat:@"业绩:%@\t",manager.performance];
    
    NSString *result = [NSString stringWithFormat:@"%@%@",basicInfo,otherInfo];
    
    return result;
}

// 组装出普通员工信息
- (NSString *)commonEmployee:(CommonEmployee *)commonEmployee {
    NSString *basicInfo = [self basicInfo:commonEmployee];
    NSString *otherInfo = [NSString stringWithFormat:@"工作:%@\t",commonEmployee.job];
    
    NSString *result = [NSString stringWithFormat:@"%@%@",basicInfo,otherInfo];
    
    return result;
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
    return self.commonTotalSalary + self.managerTotalSalary;
}
@end
