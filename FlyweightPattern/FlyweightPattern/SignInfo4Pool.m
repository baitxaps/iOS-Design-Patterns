//
//  SignInfo4Pool.m
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "SignInfo4Pool.h"

@implementation SignInfo4Pool

- (instancetype)initWithKey:(NSString *)key {
    if (self = [super init]) {
        self.key = key;
    }
    return self;
}

@end
