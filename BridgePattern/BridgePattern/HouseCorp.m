//
//  HouseCorp.m
//  BridgePattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "HouseCorp.h"

@implementation HouseCorp

-(instancetype)initWithProduce:(id<Produce>)produces {
    if (self = [super initWithProduce:produces]) {
       
    }
    return self;
}

- (void)produce {
    NSLog(@"房地产公司盖房子...");
}

- (void)sell {
    NSLog(@"房地产公司出售房子了...");
}

- (void)makeMoney {
    [super makeMoney];
    NSLog(@"房地产公司赚大钱了...");
}

@end
