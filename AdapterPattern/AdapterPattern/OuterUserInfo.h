//
//  OuterUserInfo.h
//  AdapterPattern
//
//  Created by hairong chen on 16/8/1.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "OuterUser.h"
#import "IUserInfo.h"
#import "IOuterUserOfficeInfo.h"
#import "IOuterUserHomeInfo.h"
#import "IOuterUserBaseInfo.h"

@interface OuterUserInfo : OuterUser<IUserInfo>

- (instancetype)initWithBaseInfo:(id<IOuterUserBaseInfo>)baseInfo
                        homeInfo:(id<IOuterUserHomeInfo>)homeInfo
                      officeInof:(id<IOuterUserOfficeInfo>)officeInfo;
@end
