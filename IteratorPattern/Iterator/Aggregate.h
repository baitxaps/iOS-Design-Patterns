//
//  Aggregate.h
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

// 抽像容器
@protocol Aggregate <NSObject>

- (void)add:(id)obj;
- (void)remove:(id)obj;
- (id<Iterator>)iterator;

@end
