//
//  Project.m
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Project.h"
#import "ProjectIterator.h"

@interface Project ()

@property (nonatomic,strong)NSString *name;
@property (nonatomic,assign)NSInteger num;
@property (nonatomic,assign)NSInteger cost;
@property (nonatomic,strong)NSMutableArray *projectList;

@end

@implementation Project

- (instancetype)initWithName:(NSString *)name num:(NSInteger)num cost:(NSInteger)cost {
    if (self = [super init]) {
        _name = name;
        _num = num;
        _cost = cost;
        _projectList = [NSMutableArray new];
    }
    return self;
}

- (instancetype)init {
    if (self = [super init]) {
        _projectList = [NSMutableArray new];
    }
    return self;
}

#pragma mark - IProject
- (void)add:(NSString *)name num:(NSInteger)num cost:(NSInteger)cost {
    [self.projectList addObject:[[Project alloc]initWithName:name num:num cost:cost]];
}

- (NSString *)projectInfo {
    NSString *info = [NSString stringWithFormat:@"项目名称是:%@\t项目人数:%ld\t项目费用:%ld",_name,_num,_cost];
    
    return info;
}

- (id<IProjectIterator>)iterator {
    return [[ProjectIterator alloc]initWithProjectList:_projectList];
}
@end
