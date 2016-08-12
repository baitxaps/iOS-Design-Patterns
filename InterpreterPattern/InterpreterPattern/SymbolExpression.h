//
//  SymbolExpression.h
//  InterpreterPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Expression.h"

@interface SymbolExpression : NSObject<Expression>
@property (nonatomic,strong)id<Expression>left;
@property (nonatomic,strong)id<Expression>right;

- (instancetype)initWithExpressionLeft:(id<Expression>)left expressionRight:(id<Expression>)right;
@end
