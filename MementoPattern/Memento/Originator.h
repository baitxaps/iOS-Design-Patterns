//
//  Originator.h
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"
#import "Cloneable.h"

@interface Originator : Cloneable

@property (nonatomic,strong)NSString *state1;
@property (nonatomic,strong)NSString *state2;
@property (nonatomic,strong)NSString *state3;

- (Memento *)createMemento;
- (void)restoreMemoto;
- (void)restoreMemoto:(Memento *)memento ;

@end
