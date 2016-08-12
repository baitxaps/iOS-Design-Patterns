//
//  HanFeiZi.m
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "HanFeiZi.h"
#import "LiSi.h"

@interface HanFeiZi ()

@property (nonatomic,strong)NSMutableArray *observerList ;

@end

@implementation HanFeiZi

-(instancetype)init {
    if (self = [super init]) {
        _observerList = [NSMutableArray new];
    }
    return self;
}

// 增加观察者
- (void)addObserver:(id<Observer>)observer {
    [self.observerList addObject:observer];
}

// 删除观察者
- (void)deleteObserver:(id<Observer>)observer {
    [self.observerList removeObject:observer];
}

// 通知所有的观察者
- (void)notifyObservers:(NSString *)context {
    for (id<Observer>observer in self.observerList) {
        [observer update:context];
    }
}

- (void)haveBreakfast {
    NSString *msg = @"韩非子:开始吃饭了...";
    [self notifyObservers:msg];
}

- (void)haveFun {

    NSString *msg = @"韩非子:开始娱乐了...";

   [self notifyObservers:msg];
}



@end
