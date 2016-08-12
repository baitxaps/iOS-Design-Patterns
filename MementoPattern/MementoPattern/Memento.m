//
//  Memento.m
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Memento.h"
@interface Memento ()
//@property (nonatomic,strong)NSString *bstate;
@end

@implementation Memento

- (instancetype)initWithState:(NSString *)state {
    if (self = [super init]) {
        _state = state;
    }
    return self;
}

- (instancetype)initWithHashMap:(NSDictionary *)map {
    if (self = [super init]) {
        _map = map;
    }
    return self;
}


@end
