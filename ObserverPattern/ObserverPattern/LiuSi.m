//
//  LiuSi.m
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "LiuSi.h"

@implementation LiuSi

- (void)update:(NSString *)context {
    NSLog(@"刘斯:观察到韩非子活动，开始动动了...");
    [self happy:context];
    NSLog(@"刘斯:乐死了...");
}

- (void)happy:(NSString *)context {
    NSLog(@"刘斯:因为%@-- 所以我快乐呀!",context);
    
}


@end
