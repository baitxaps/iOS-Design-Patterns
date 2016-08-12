//
//  SymbolExpression.m
//  InterpreterPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "SymbolExpression.h"

@interface SymbolExpression ()

@end

@implementation SymbolExpression

- (instancetype)initWithExpressionLeft:(id<Expression>)left expressionRight:(id<Expression>)right {
    if (self = [super init]) {
        _left = left;
        _right = right;
    }
    return self;
}


- (NSInteger)interpreter:(NSDictionary*)var {
    return 0;
}

@end
