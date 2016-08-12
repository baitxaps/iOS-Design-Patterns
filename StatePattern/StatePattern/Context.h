//
//  Context.h
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OpenningState,ClosingState,RunningState,StoppingState,LiftState;

@interface Context : NSObject

@property (nonatomic,strong)LiftState *liftState;

@property (nonatomic,strong)OpenningState *openningState;
@property (nonatomic,strong)ClosingState *closingState;
@property (nonatomic,strong)RunningState *runningState;
@property (nonatomic,strong)StoppingState *stoppingState;

- (void)open;
- (void)close;
- (void)run;
- (void)stop;

@end
