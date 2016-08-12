//
//  Decoratro.h
//  DecoratorPattern
//
//  Created by hairong chen on 16/7/30.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"

@interface RHCDecorator : NSObject<Component>

- (instancetype)initWithDecorator:(id<Component>)compoent;

@end
