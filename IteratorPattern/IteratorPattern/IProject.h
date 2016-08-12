//
//  IProject.h
//  IteratorPattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "IProjectIterator.h"
@protocol IProjectIterator;

@protocol IProject <NSObject>

// 增加项目
- (void)add:(NSString *)name num:(NSInteger)num cost:(NSInteger)cost;
// 项目信息
- (NSString *)projectInfo;
// 获得一个可以被遍历的对象
-(id<IProjectIterator>)iterator;

@end
