//
//  ConcreteState2.h
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RHCContext.h"
#import "State.h"

@interface ConcreteState2 : NSObject<State>
@property(nonatomic,weak) RHCContext *context;
@end
