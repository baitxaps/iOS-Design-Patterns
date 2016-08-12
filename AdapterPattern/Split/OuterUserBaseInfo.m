//
//  OuterUserBaseInfo.m
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "OuterUserBaseInfo.h"

@implementation OuterUserBaseInfo

-(NSDictionary *)userBaseInfo {
    
    NSMutableDictionary *map =[@{
                                 @"userName":@"这个员工叫混世魔王...",
                                 @"mobileNumber":@"这个员工电话是..."
                                 }mutableCopy];
    
    return map;
}


@end
