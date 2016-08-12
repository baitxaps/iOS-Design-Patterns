//
//  Corp.m
//  BridgePattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Corp.h"
#import "Produce.h"

@interface Corp ()
@property (nonatomic,strong)id <Produce> produces;
@end

@implementation Corp

-(instancetype)initWithProduce:(id<Produce>)produces {
    if (self = [super init]) {
        self.produces = produces;
    }
    return self;
}

- (void)produce {}

- (void)sell {}

- (void)makeMoney {
// [self produce];
// [self sell];
    
    [self.produces beProducted];
    [self.produces beSelled];
}

@end
