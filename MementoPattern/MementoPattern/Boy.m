//
//  Boy.m
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Boy.h"
#import "Memento.h"

@interface Boy ()

@end

@implementation Boy

- (void)changeStatus {
    self.state = @"心情可能不好";
}


- (Memento *)createMemento {
    return  [[Memento alloc]initWithState:self.state];
}


- (void)restoreMemoto:(Memento *)memento {
    self.state = memento.state;
}
@end
