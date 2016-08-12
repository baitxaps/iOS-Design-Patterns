//
//  IHandler.m
//  ChainOfResponsibilityPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "IHandler.h"

@implementation IHandler

- (instancetype)initWihtLevel:(NSInteger)level {
    if (self = [super init]) {
        self.level = level;
    }
    return self;
}


- (void)handleMessage:(IWomen *)women {
    NSLog(@"%s",__func__);
    
     [self.nextHandler handleMessage:women];
  
/*
    if (women.type == self.level) {
        [self response:women];
    }else {
        if (self.nextHandler != nil) {// 有后续环节，才把请求往后递送
            [self.nextHandler handleMessage:women];
        }
    }
*/
}

- (void)setNext:(IHandler *)handler {
    self.nextHandler = handler;
}

/*
- (void)response:(IWomen *)women {
    
}
 */

@end
