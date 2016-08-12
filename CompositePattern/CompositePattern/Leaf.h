//
//  Leaf.h
//  CompositePattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Corp.h"

@interface Leaf : Corp

- (instancetype)initWithName:(NSString *)name positon:(NSString *)position salary:(NSInteger)salary;

@end
