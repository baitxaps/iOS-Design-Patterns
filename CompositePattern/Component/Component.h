//
//  Component.h
//  CompositePattern
//
//  Created by hairong chen on 16/8/3.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Component <NSObject>

// 个体和整体都具有的共享
- (void)doSomething;

- (void)add:(id<Component>)component;

- (void)remove:(id<Component>)component;

- (NSArray *)children;

@end
