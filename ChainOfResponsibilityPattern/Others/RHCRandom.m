//
//  RHCRandom.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "RHCRandom.h"

@implementation RHCRandom


+ (NSArray *)RHCRandomArray {
    NSMutableArray *startArray= [@[@1,@2,@3,@4]mutableCopy];
    // 随机数产生结果
    NSMutableArray *resultArray=[[NSMutableArray alloc] initWithCapacity:0];
    // 随机数个数
    for (int i = 0; i < 4; i++) {
        int t =arc4random()%startArray.count;
        resultArray[i]=startArray[t];
        startArray[t]=[startArray lastObject];
        [startArray removeLastObject];
    }
    
    return resultArray;
}

@end
