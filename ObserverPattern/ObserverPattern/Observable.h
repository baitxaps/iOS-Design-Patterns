//
//  Observable.h
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
#import "Observable.h"
// 被观察者
@protocol Observable <NSObject>

- (void)addObserver:(id<Observer>)observer;
- (void)deleteObserver:(id<Observer>)observer;

@optional
- (void)notifyObservers:(NSString *)context;
- (void)notifyObservers;
@end
