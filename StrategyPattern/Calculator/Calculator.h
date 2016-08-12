//
//  Calculator.h
//  StrategyPattern
//
//  Created by hairong chen on 16/7/31.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Calculator <NSObject>

- (NSInteger)exec:(NSInteger)a b:(NSInteger)b;

@end
