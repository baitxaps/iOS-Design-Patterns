//
//  State.h
//  StatePattern
//
//  Created by hairong chen on 16/8/11.
//  Copyright © 2016年 hairong chen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RHCContext;

@protocol State <NSObject>

@property(nonatomic,weak) RHCContext *context;
-(void)handle1;
-(void)handle2;

@end
