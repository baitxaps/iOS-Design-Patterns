//
//  main.m
//  InterpreterPattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"
#import "Context.h"
#import "RHCExpression.h"
#import "Stack.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1
        NSString *expStr = @"a + b - c";
        NSDictionary *var = @{@"a":@"100",
                              @"b":@"20",
                              @"c":@"40"
                              };
        
        Calculator *calculator = [[Calculator alloc]initWithExpStr:expStr];
        
        NSLog(@"运算结果为:%@=%ld",expStr,[calculator run:var]);
        
        
        // 2
        /*
        Context *ctx = [Context new];
        Stack *stack = [Stack new];
        for (; ; ) {
            // 进行语法判断，并产生递归调用
        }
        // 产生一个完整的语法树，由各个具体的语法分析进行解析
        id<RHCExpression>exp = [stack pop];
        // 具体元素进入场景
        [exp interpreter:ctx];
        */
        
    }
    return 0;
}
