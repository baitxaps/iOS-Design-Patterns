//
//  Subject.m
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Subject.h"

@interface Subject()
@property (nonatomic,strong)NSMutableArray *obsVector ;
@end

@implementation Subject

- (instancetype)init {
    if (self = [super init]) {
        _obsVector = [NSMutableArray new];
    }
    return self;
}

// 增加观察者
- (void)addObserver:(id<Observer>)o {
    [self.obsVector addObject:o];
}

// 删除观察者
- (void)deleteObserver:(id<Observer>)o {
    [self.obsVector removeObject:o];
}

// 通知所有的观察者
- (void)notifyObservers{
    for (id<Observer>observer in self.obsVector) {
        [observer update];
    }
}

@end
