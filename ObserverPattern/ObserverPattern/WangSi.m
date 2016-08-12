//
//  WangSi.m
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "WangSi.h"

@implementation WangSi

- (void)update:(NSString *)context {
    NSLog(@"王斯:观察到韩非子活动，自已也开始活动了...");
    [self cry:context];
    NSLog(@"王斯:哭死了...");
}

- (void)cry:(NSString *)context {
    NSLog(@"王斯:因为%@-- 所以我悲伤呀!",context);
  
}


@end
