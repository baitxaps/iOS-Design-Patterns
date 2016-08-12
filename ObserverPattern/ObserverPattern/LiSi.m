//
//  LiSi.m
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "LiSi.h"

@implementation LiSi

- (void)update:(NSString *)context {
    NSLog(@"李斯:观察到韩非子活动，开始向老板汇报了...");
    [self reportToQinShiHuang:context];
    NSLog(@"李斯:汇报完毕...");
}


- (void)reportToQinShiHuang:(NSString *)ctx {
   NSLog(@"李斯:报告，秦老板！韩非子有活动...%@",ctx);
}

@end
