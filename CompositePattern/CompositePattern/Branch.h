//
//  Branch.h
//  CompositePattern
//
//  Created by hairong chen on 16/8/2.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Corp.h"

@interface Branch : Corp
- (instancetype)initWithName:(NSString *)name position:(NSString *)position
                      salary:(NSInteger)salary;

- (void)addSubordinate:(Corp *)corp;
- (NSArray*)subordinate;

@end
