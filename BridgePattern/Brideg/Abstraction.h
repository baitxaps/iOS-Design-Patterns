//
//  Abstraction.h
//  BridgePattern
//
//  Created by hairong chen on 16/8/12.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Implementor;
@interface Abstraction : NSObject

// 约束子类必须实现该构造函数
+ (instancetype)initWithImplementor:(id<Implementor>)imp;
- (instancetype)initWithImplementor:(id<Implementor>)imp;

// 自身的行为和属性
- (id<Implementor>)imp;

// 获取实现化角色
- (void)request;

@end
