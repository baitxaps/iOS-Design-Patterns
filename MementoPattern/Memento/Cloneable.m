//
//  Cloneable.m
//  MementoPattern
//
//  Created by hairong chen on 16/8/8.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Cloneable.h"

@implementation Cloneable

- (instancetype)copyWithZone:(NSZone *)zone {
    Cloneable *clone =[[self class]allocWithZone:zone];
    
    [self parametersCopyOperationWithBaseCopyObject:clone];
    
    return clone;
}


- (void)parametersCopyOperationWithBaseCopyObject:(Cloneable *)baseCopyObject {
    
}

@end
