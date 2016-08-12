//
//  VarExpression.m
//  InterpreterPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "VarExpression.h"
@interface VarExpression ()
@property(nonatomic,strong)NSString *key;
@end

@implementation VarExpression

- (instancetype)initWithKey:(NSString *)key {
    if (self = [super init]) {
        _key = key;
    }
    return self;
}

- (NSInteger)interpreter:(NSDictionary *)var {
    
    NSInteger tmp = [var[self.key] integerValue];
    return tmp;
}
@end
