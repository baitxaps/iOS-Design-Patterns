//
//  ConcreteAggregate.m
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteAggregate.h"
#import "ConcreteIterator.h"

@interface ConcreteAggregate ()
@property (nonatomic,strong)NSMutableArray *vector;
@end

@implementation ConcreteAggregate

- (instancetype)init {
    if (self = [super init]) {
        _vector = [NSMutableArray new];
    }
    return self;
}

- (void)add:(id)obj {
    [self.vector addObject:obj];
}

- (void)remove:(id)obj {
    [self.vector removeObject:obj];
}

- (id<Iterator>)iterator {
    ConcreteIterator *iterator = [[ConcreteIterator alloc]initWithVector:self.vector];
    return iterator;
}


@end
