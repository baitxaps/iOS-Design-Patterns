//
//  Invoker.m
//  CommandPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Invoker.h"
#import "Command.h"

@implementation Invoker

- (void)setCommand:(Command *)command {
    _command = command;
}

- (void)action {
    [self.command execute];
}

@end
