//
//  SubExpression.m
//  InterpreterPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "SubExpression.h"

@implementation SubExpression

- (instancetype)initWithExpressionLeft:(id<Expression>)left expressionRight:(id<Expression>)right {
    if (self = [super initWithExpressionLeft:left expressionRight:right]) {
        
    }
    return self;
}

- (NSInteger)interpreter:(NSDictionary *)var {
    
    return [self.left interpreter:var] - [self.right interpreter:var];
}

@end
