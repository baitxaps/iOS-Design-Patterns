//
//  RHCRandom.h
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "IHandler.h"

@interface RHCRandom : IHandler

/**
 srandom(time(0));
 int i = random() % 5;
 
 srand((unsigned)time(0));  //不加这句每次产生的随机数不变
 int i = rand() % 5;
 
 int i = arc4random() % 5 ;
 
 rand()和random()实际并不是一个真正的伪随机数发生器，在使用之前需要先初始化随机种子，否则每次生成的随机数一样。
 
 arc4random() 是一个真正的伪随机算法，不需要生成随机种子，因为第一次调用的时候就会自动生成。而且范围是rand()的两倍。在iPhone中，RAND_MAX是0x7fffffff (2147483647)，而arc4random()返回的最大值则是 0x100000000 (4294967296)
 */

+ (NSArray *)RHCRandomArray;
@end
