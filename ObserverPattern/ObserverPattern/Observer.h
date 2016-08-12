//
//  ILisi.h
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
// 抽像观察者
@protocol Observer <NSObject>

- (void)update:(NSString *)context;

@optional
- (void)update;
@end
