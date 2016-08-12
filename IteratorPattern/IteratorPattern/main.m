//
//  main.m
//  IteratorPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"
#import "IProjectIterator.h"
#import "ConcreteIterator.h"
#import "ConcreteAggregate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 增加项目
        /*
        NSMutableArray *projectList = [NSMutableArray new];
        [projectList addObject :[[Project alloc]initWithName:@"星球大战项目" num:10 cost:100000]];
        [projectList addObject :[[Project alloc]initWithName:@"扭转时空项目" num:100 cost:1000000]];
        [projectList addObject :[[Project alloc]initWithName:@"超人改造项目" num:1000 cost:100000000]];
        
        for (int i = 4; i < 104; i ++) {
            NSString *pro = [NSString stringWithFormat:@"第%d个项目",i];
            [projectList addObject :[[Project alloc]initWithName:pro num:i*5 cost:i*100]];
        }
        // 遍历数据
        
        
        for (id<IProject>project in projectList) {
            NSLog(@"%@",[project projectInfo]);
        }
         */
        // 1.
        id<IProject>project = [[Project alloc]init];
        
        [project add:@"星球大战项目" num:10 cost:1000000];
        [project add:@"扭转时空项目" num:100 cost:100000000];
        [project add:@"超人改造项目" num:1000 cost:10000000000];

        
        for (int i = 4; i < 104; i ++) {
            NSString *pro = [NSString stringWithFormat:@"第%d个项目",i];
            [project add:pro num:i*5 cost:i*100];
        }
        // 遍历数据
        id<IProjectIterator>projectIterator = [project iterator];
        while ([projectIterator hasNext]) {
            id<IProject>p = (id<IProject>)[projectIterator next];
            NSLog(@"%@",[p projectInfo]);
        }
        
        // 2.
        id<Aggregate>agg = [[ConcreteAggregate alloc]init];
        [agg add:@"abc"];
        [agg add: @"rhc"];
        [agg add:@"123"];
        id<Iterator>iterator = agg.iterator;
        while ([iterator hasNext]) {
            NSLog(@"%@",[iterator next]);
        }
        
    }
    return 0;
}
