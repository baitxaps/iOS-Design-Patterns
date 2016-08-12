//
//  Invoker.h
//  CommandPattern
//
//  Created by hairong chen on 16/7/29.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Command;

@interface Invoker : NSObject

@property (nonatomic,strong)Command *command;

- (void)action;
@end
