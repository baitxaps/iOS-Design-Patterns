//
//  Son.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Son.h"

@implementation Son

- (instancetype)initWihtLevel:(NSInteger)level {
    if (self = [super initWihtLevel:HandlerLevelSonRequest]) {
    }
    return self;
}

- (instancetype)init {
    if (self = [self initWihtLevel:HandlerLevelSonRequest]) {
        
    }
    return self;
}


- (void)response:(IWomen *)women {
    NSLog(@"--母亲向儿子请示---");
    NSLog(@"%@",women.request);
    NSLog(@"儿子的答复是:%@",@"同意");
}

- (void)handleMessage:(IWomen *)women {
    NSLog(@"%s",__func__);
    
    if (women.type == self.level) {
        [self response:women];
        
    }else {
        if (self.nextHandler != nil) {// 有后续环节，才把请求往后递送
            [self.nextHandler handleMessage:women];
        }else { // 已经没有后续处理人了，不用处理
            NSLog(@"---没有地方请求了，按不同意处理---");
        }
    }
}

@end
