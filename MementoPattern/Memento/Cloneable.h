//
//  Cloneable.h
//  MementoPattern
//
//  Created by hairong chen on 16/8/8.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cloneable : NSObject<NSCopying>

- (instancetype)copyWithZone:(NSZone *)zone;

- (void)parametersCopyOperationWithBaseCopyObject:(Cloneable *)baseCopyObject;

@end
