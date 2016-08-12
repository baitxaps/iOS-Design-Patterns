//
//  ClothesCorp.m
//  BridgePattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ClothesCorp.h"

@implementation ClothesCorp

-(instancetype)initWithProduce:(id<Produce>)produces {
    if (self = [super initWithProduce:produces]) {
        
    }
    return self;
}

- (void)produce {
    NSLog(@"服装公司产衣服...");
}

- (void)sell {
    NSLog(@"服装公司出售衣服...");
}

- (void)makeMoney {
    [super makeMoney];
    NSLog(@"服装公司赚小钱...");
}

@end
