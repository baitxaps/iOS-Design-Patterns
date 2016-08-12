//
//  OuterUser.m
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "OuterUser.h"

@implementation OuterUser

-(NSDictionary *)userBaseInfo {
   
    NSMutableDictionary *map =[@{
                                 @"userName":@"这个员工叫混世魔王...",
                                 @"mobileNumber":@"这个员工电话是..."
                                }mutableCopy];
    
    return map;
}

-(NSDictionary *)userOfficeInfo {
    NSMutableDictionary *map =[@{
                                 @"homeTelNumber":@"员工的家庭电话...",
                                 @"homeAddress":@"员工的家庭地址..."
                                 }mutableCopy];
    
    return map;
}

-(NSDictionary *)userHomeInfo {
    NSMutableDictionary *map =[@{
                                 @"jobPosition":@"这个人的职位是Boss...",
                                 @"officeTelNumber":@"员工的办公电话是..."
                                 }mutableCopy];
    
    return map;
}

@end
