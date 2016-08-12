//
//  Father.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Father.h"

@implementation Father

- (instancetype)initWihtLevel:(NSInteger)level {
    if (self = [super initWihtLevel:HandlerLevelFatherRequest]) {
        
    }
    return self;
}

- (instancetype)init {
    if (self = [self initWihtLevel:HandlerLevelFatherRequest]) {
        
    }
    return self;
}


- (void)response:(IWomen *)women  {
    
    NSLog(@"--女儿向父亲请示---");
    NSLog(@"%@",women.request);
    NSLog(@"父亲的答复是:%@",@"同意");
}


- (void)handleMessage:(IWomen *)women {
    NSLog(@"%s",__func__);
    
    if (women.type == self.level) {
        [self response:women];
    }else {
        if (self.nextHandler != nil) {// 有后续环节，才把请求往后递送
            [self.nextHandler handleMessage:women];
        }
    }
}


@end
