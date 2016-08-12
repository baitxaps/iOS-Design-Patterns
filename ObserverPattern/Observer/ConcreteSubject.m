//
//  ConcreteSubject.m
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteSubject.h"

@implementation ConcreteSubject

- (void)doSomething {
    [self notifyObservers];
}

@end
