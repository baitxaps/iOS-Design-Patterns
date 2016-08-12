//
//  OuterUserHomeInfo.m
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "OuterUserHomeInfo.h"

@implementation OuterUserHomeInfo

-(NSDictionary *)userHomeInfo {
    NSMutableDictionary *map =[@{
                                 @"jobPosition":@"这个人的职位是Boss...",
                                 @"officeTelNumber":@"员工的办公电话是..."
                                 }mutableCopy];
    
    return map;
}


@end
