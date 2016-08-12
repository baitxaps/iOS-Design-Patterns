//
//  AdvTemplate.m
//  ProtoType
//
//  Created by hairong chen on 16/2/4.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "AdvTemplate.h"

@implementation AdvTemplate

- (instancetype)init
{
    if (self =[super init]) {
        self.advSubject = @"XX银行国庆信用卡抽奖活动";;
        self.advContext = @"国庆抽奖活动通知:只要刷卡就送你一百万!...";
    }
    return self;
}

+ (instancetype)init
{
    return [[self alloc]init];
}
-(id)copyWithZone:(NSZone *)zone
{
    AdvTemplate *copy   = [[self class]allocWithZone:zone];
    copy.advContext     = self.advContext;
    copy.advSubject     = self.advSubject;
    return copy;
}
@end
