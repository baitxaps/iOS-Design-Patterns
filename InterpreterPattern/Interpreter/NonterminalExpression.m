//
//  NonterminalExpression.m
//  InterpreterPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "NonterminalExpression.h"
@interface NonterminalExpression ()
@property (nonatomic,strong)id<RHCExpression> express;
@end

@implementation NonterminalExpression

// 每个非终结表达式都会地其他表达式产生依赖
- (instancetype)initWithExpress:(id<RHCExpression>)express {
    if (self = [super init]) {
        _express = express;
    }
    return self;
}

- (id)interpreter:(Context *)ctx {
    // 进行文法处理
    return nil;
}
@end
