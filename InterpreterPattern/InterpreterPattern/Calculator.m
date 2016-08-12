//
//  Calculator.m
//  InterpreterPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Calculator.h"
#import "Expression.h"
#import "Stack.h"
#import "VarExpression.h"
#import "AddExpression.h"
#import "SubExpression.h"

typedef NS_ENUM(NSInteger,CalculatorType) {
    CalculatorDefault = 0,
    CalculatorAdd = 1,
    CalculatorSub = 2
};


@interface Calculator ()
@property (nonatomic,strong)id<Expression>expression;
@property (nonatomic,strong)Stack *stack;
@property (nonatomic,strong)NSArray *charArray;
@property (nonatomic,strong)id<Expression>left;
@property (nonatomic,strong)id<Expression>right;
@end

@implementation Calculator

- (instancetype)initWithExpStr:(NSString *)expStr {
    if (self = [super init]) {
        _stack = [Stack new];
        _charArray = [expStr componentsSeparatedByString:@" "];
        
        [self calculator];
    }
    return self;
}

- (NSInteger)run:(NSDictionary *)var {
    NSInteger tmp = [self.expression interpreter:var];
    return tmp;
}

#pragma mark - private mathod
- (void)calculator {
    for (int i = 0; i < _charArray.count; i ++) {
        
        NSString *ops = _charArray[i];
        
        CalculatorType type;
        if ([ops isEqualToString:@"+"]) {
            type = CalculatorAdd;
        }else if([ops isEqualToString:@"-"]) {
            type = CalculatorSub;
        }else {
            type = CalculatorDefault;
        }
        
        switch (type) {
            case 1:{
                _left = [_stack pop];
                _right = [[VarExpression alloc]initWithKey:_charArray[++i]];
                [_stack push:[[AddExpression alloc]initWithExpressionLeft:_left expressionRight:_right]];
            }
                break;
                
            case 2:{
                _left = [_stack pop];
                _right = [[VarExpression alloc]initWithKey:_charArray[++i]];
                [_stack push:[[SubExpression alloc]initWithExpressionLeft:_left expressionRight:_right]];
            }
                
                break;
                
            default:
                [_stack push:[[VarExpression alloc]initWithKey:_charArray[i]]];
                break;
        }
    }
    self.expression = [_stack pop];
}




@end
