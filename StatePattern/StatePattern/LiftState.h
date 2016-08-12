//
//  LiftState.h
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Context  ;

@interface LiftState : NSObject

@property (nonatomic,strong)Context *context;

- (void)open;
- (void)close;
- (void)run;
- (void)stop;

@end
