//
//  ConcreteObserver.m
//  ObserverPattern
//
//  Created by hairong chen on 16/8/5.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "ConcreteObserver.h"

@implementation ConcreteObserver

- (void)update{
    NSLog(@"接收到消息，并进行处理!");
}


- (void)update:(NSString *)context {
     NSLog(@"%@",context);
}
@end
