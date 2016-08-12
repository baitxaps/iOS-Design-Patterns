//
//  Caretaker.h
//  MementoPattern
//
//  Created by hairong chen on 16/8/6.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Memento;

@interface Caretaker : NSObject

@property (nonatomic,strong)Memento *memento;

@end
