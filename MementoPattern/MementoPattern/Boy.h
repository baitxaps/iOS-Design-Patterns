//
//  Boy.h
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Memento;

@interface Boy : NSObject

@property (nonatomic,strong)NSString *state;

- (void)changeStatus ;
- (Memento *)createMemento;
- (void)restoreMemoto:(Memento *)memento;
@end
