//
//  Originator.m
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import "Originator.h"
#import "Memento.h"
#import "BeanUtils.h"

@interface Originator ()
@property (nonatomic,strong)Originator *backup;
@property (nonatomic,strong)BeanUtils *utils;
@end

@implementation Originator

- (instancetype)init {
    if (self = [super init]) {
        _utils = [BeanUtils new];
    }
    
    return self;
}


- (Memento *)createMemento {
//  self.backup = [self copy];
    
    Memento *memento = [[Memento alloc]initWithHashMap:[_utils backupProp:self]];
    return memento;
}


- (void)restoreMemoto {
   self.state1 = self.backup.state1;
}

- (void)restoreMemoto:(Memento *)memento {
    [_utils restoreProp:self hashMap:memento.map];
}

- (void)parametersCopyOperationWithBaseCopyObject:(Originator *)baseCopyObject {
    
    baseCopyObject.state1  = self.state1;

    // 字典与数组的深层次拷贝
    /*
    baseCopyObject.datas      = [[[self.datas class] alloc] initWithArray:self.datas copyItems:YES];
    baseCopyObject.infomation = [[[self.infomation class] alloc] initWithDictionary:self.infomation copyItems:YES];
     */
}

@end
