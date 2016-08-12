//
//  SignInfoFactory.h
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SignInfo;
@interface SignInfoFactory : NSObject

+ (SignInfo *)signInfo;
+ (SignInfo *)signInfoWithKey:(id)key;
@end
