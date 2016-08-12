//
//  OuterUserOfficeInfo.m
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "OuterUserOfficeInfo.h"

@implementation OuterUserOfficeInfo

-(NSDictionary *)userOfficeInfo {
    NSMutableDictionary *map =[@{
                                 @"homeTelNumber":@"员工的家庭电话...",
                                 @"homeAddress":@"员工的家庭地址..."
                                 }mutableCopy];
    
    return map;
}

@end
