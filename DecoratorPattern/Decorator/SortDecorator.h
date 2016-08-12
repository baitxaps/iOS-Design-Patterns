//
//  SortDecorator.h
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Decorator.h"
// 排名情况修饰
@interface SortDecorator : NSObject<Decorator>

- (instancetype)initWithDecorator:(id<Decorator>)sr;

@end
