//
//  OuterUserInfo.m
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "OuterUserInfo.h"

@interface OuterUserInfo ()
// 数据处理
@property (nonatomic,strong)NSDictionary *baseMap;
@property (nonatomic,strong)NSDictionary *homeMap;
@property (nonatomic,strong)NSDictionary *officeMap;
// 源目标对象
@property (nonatomic,strong) id<IOuterUserOfficeInfo>officeInfo;
@property (nonatomic,strong) id<IOuterUserHomeInfo>homeInfo;
@property (nonatomic,strong) id<IOuterUserBaseInfo>baseInfo;

@end

@implementation OuterUserInfo

- (instancetype)init {
    if (self = [super init]) {
        [self loadData];
    }
    return self;
}

- (instancetype)initWithBaseInfo:(id<IOuterUserBaseInfo>)baseInfo
                        homeInfo:(id<IOuterUserHomeInfo>)homeInfo
                      officeInof:(id<IOuterUserOfficeInfo>)officeInfo {
    if (self = [super init]) {
        _baseInfo = baseInfo;
        _homeInfo = homeInfo;
        _officeInfo = officeInfo;
        
        [self loadData];
    }
    return self;
}


#pragma mark - private mathods
- (void)loadData {
    _baseMap = [self userBaseInfo];
    _homeMap = [self userHomeInfo];
    _officeMap = [self userOfficeInfo];
}



- (NSString *)homeAddress {
    NSString *address = _homeMap[@"homeAddress"];
    
    return address;
}

- (NSString *)mobileNumber {
    NSString *mobile = _baseMap[@"mobileNumber"];
    
    return mobile;
}

- (NSString *)officeTelNumber {
    NSString *officeNO = _officeMap[@"officeTelNumber"];
    
    return officeNO;
}

- (NSString *)homeTelNumber {
    NSString *homeTel = _homeMap[@"homeTelNumber"];
    
    return homeTel;
}

- (NSString *)jobPositon {
    NSString *position = _officeMap[@"jobPosition"];
    
    return position;
}

- (NSString *)userName {
    NSString *name = _baseMap[@"userName"];
    
    return name;
}

@end
