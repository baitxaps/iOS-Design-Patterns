//
//  Flyweight.m
//  FlyweightPattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Flyweight.h"

@interface Flyweight ()
@property (nonatomic,strong)NSString *extrinsic;// 外部状态
@end

@implementation Flyweight

- (instancetype)initWihtExtrinsic:(NSString *)extrinsic {
    if (self = [super init]) {
        self.extrinsic = extrinsic  ;
    }
    return self;
}

- (void)operate {
    
}


@end
