//
//  ConcreteIterator.m
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteIterator.h"
#import "Iterator.h"

@interface ConcreteIterator ()

@property (nonatomic,strong)NSMutableArray *vector;

@end

@implementation ConcreteIterator

- (instancetype)initWithVector:(NSMutableArray *)vector {
    if (self = [super init]) {
        _vector = vector;
        _cursor = 0;
    }
    return self;
}

- (BOOL)hasNext {
    if (self.cursor == self.vector.count ) {
        return NO;
    }else {
        return YES;
    }
}

- (id)next {
    id result = nil;
    if (self.hasNext) {
        result = self.vector[self.cursor++];
    }else {
        result = nil;
    }
    return result;
}

- (BOOL)remove {
    [self.vector removeObjectAtIndex:self.cursor];
    
    return YES;
}

@end
