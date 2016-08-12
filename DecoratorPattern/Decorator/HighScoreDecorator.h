//
//  HighScoreDecorator.h
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Decorator.h"
// 最高成绩修饰
@interface HighScoreDecorator : NSObject<Decorator>

- (instancetype)initWithDecorator:(id<Decorator>)sr;

@end
