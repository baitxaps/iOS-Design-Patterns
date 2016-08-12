//
//  RHCContext.h
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

@class ConcreteState1,ConcreteState2;

@interface RHCContext : NSObject

@property (nonatomic,strong)id<State> currentState;

@property (nonatomic,strong)id<State> state1;
@property (nonatomic,strong)id<State> state2;

-(void)handle1;
-(void)handle2;

@end
