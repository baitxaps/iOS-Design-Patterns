//
//  Calculator.h
//  InterpreterPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
- (instancetype)initWithExpStr:(NSString *)expStr ;
- (NSInteger)run:(NSDictionary *)var;
@end
