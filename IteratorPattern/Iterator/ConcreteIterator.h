//
//  ConcreteIterator.h
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iterator.h"

// 具体迭代器
@interface ConcreteIterator : NSObject<Iterator>

@property(nonatomic,assign)NSInteger cursor;

- (instancetype)initWithVector:(NSMutableArray *)vector;

@end
