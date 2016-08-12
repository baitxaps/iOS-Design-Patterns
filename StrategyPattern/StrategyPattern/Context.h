//
//  Context.h
//  StrategyPattern
//
//  Created by hairong chen on 16/7/31.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IStrategy.h"

@interface Context : NSObject

- (instancetype)initWithStrategy:(id<IStrategy>)strategy;

- (void)operate;
@end
